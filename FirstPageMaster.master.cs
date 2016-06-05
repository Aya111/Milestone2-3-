using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using  System.Data;
using System.Data.SqlClient;
public partial class FirstPageMaster : System.Web.UI.MasterPage
{
    AgilyToolEntities1 context = new AgilyToolEntities1();
    Member member;
    protected void Page_Load(object sender, EventArgs e)
    {
      
        string MemberEmail = Session["Email"].ToString();
         member = (from m in context.Members
                    where m.E_mail == MemberEmail
                    select m).FirstOrDefault();
        Session["MemberID"] = member.ID;

        ProjectRepeater.DataSource = (from P in context.Projects
                                      join pmr in context.Project_Member_Role on P.ID equals pmr.ProjectID
                                      where pmr.MemberID == member.ID
                                      select new
                                      {
                                          ProjectName = P.Name,
                                          ProjectID = P.ID
                                      }).ToList();
        ProjectRepeater.DataBind();


}
    protected void ViewProject(object sender, EventArgs e)
    {
       Button Repeaterbtn = sender as Button;
       Session["ProjectID"]=Repeaterbtn.CommandArgument;
        int PID = int.Parse(Repeaterbtn.CommandArgument);
        Project_Member_Role query = (from pmr in context.Project_Member_Role
                    where pmr.MemberID == member.ID && pmr.ProjectID==PID
                                     select pmr).FirstOrDefault();

        if (query.RoleID == 2)
        {
            Response.Redirect("ProjectData.aspx");
        }
        else if (query.RoleID == 3)
        {
            Response.Redirect("IterationAdminProjectData.aspx");
        }
        else if (query.RoleID == 4)
        {
            Response.Redirect("StoryAdminProjectData.aspx");
        }
        else if (query.RoleID == 5)
        {
            Response.Redirect("SubStoryAdminProjectData.aspx");
        }
        else
         { 
            Response.Redirect("TaskAdminProjectData.aspx");
        }
    }
}
