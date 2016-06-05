using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberDataaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int PID = int.Parse(Session["ProjectID"].ToString());
        int MID = int.Parse(Session["MemberID"].ToString());

        AgilyToolEntities1 context = new AgilyToolEntities1();
        MyRepeater.DataSource = (from WF in context.Work_flow
                                 join T in context.Tasks on WF.TaskID equals T.ID
                                 join S in context.Stories on T.StoryID equals S.ID
                                 
                                 where S.ProjectID == PID&& WF.MemberID==MID
                                 select new
                                 {
                                     TaskName = T.Name,
                                     SpentTime=WF.SpentTime,
                                     Date=WF.Date
                                 }).ToList();





        MyRepeater.DataBind();

    }
    public void viewMember(object sender, EventArgs e)
    {
        Response.Redirect("MemberData.aspx");
    }
    public void viewStory(object sender, EventArgs e)
    {
        Response.Redirect("StoryData.aspx");
    }
    public void viewIteration(object sender, EventArgs e)
    {
        Response.Redirect("IterationrData.aspx");
    }
    public void viewTask(object sender, EventArgs e)
    {
        Response.Redirect("TaskData.aspx");
    }
    public void DeleteMember(object sender, EventArgs e)
    {
      
    }
  
}