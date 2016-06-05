using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProjectData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = int.Parse(Session["ProjectID"].ToString());
        AgilyToolEntities1 context = new AgilyToolEntities1();
        MyRepeater.DataSource = (from p in context.Projects
                                where p.ID == id
                                select new { ProjectName=p.Name,
                                             StartDate=p.StartDate,
                                             EndDate=p.EndDate,
                                             Description=p.Description }).ToList();


        
        
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
    public void viewSubStory(object sender, EventArgs e)
    {
        Response.Redirect("SubStoryData.aspx");
    }
    public void viewIteration(object sender, EventArgs e)
    {
        Response.Redirect("IterationrData.aspx");
    }
    public void viewTask(object sender, EventArgs e)
    {
        Response.Redirect("TaskData.aspx");
    }
 
protected void EditBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditProject.aspx");
    }


    AgilyToolEntities1 context = new AgilyToolEntities1();
    protected void deleteBtn_Click(object sender, EventArgs e)
    {
        int ProId = int.Parse(Session["ProjectID"].ToString());
        var query =(from P in context.Projects
                   where P.ID==ProId
                   select P).FirstOrDefault();

        context.Projects.Remove(query);
        context.SaveChanges();

        Response.Redirect("FirstPage.aspx");
    }



}