using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Backlog : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        AgilyToolEntities1 context = new AgilyToolEntities1();
        int id = int.Parse(Session["ProjectID"].ToString());

        MyRepeater.DataSource = (from S in context.Stories
                                 where S.ProjectID == id
                                 select new
                                 {
                                     StoryName = S.Name,
                                     StoryPoints = S.Points,
                                     MainStory = S.MainStory,
                                     Description=S.Description,
                                     Status=S.Status
                                 }).ToList();


        MyRepeater.DataBind();


    }

    public void AddNewStory(object sender, EventArgs e)
    {
        Response.Redirect("AddStoryToBacklog.aspx");
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
}