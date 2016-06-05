using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StoryAdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AgilyToolEntities1 context = new AgilyToolEntities1();
        int PID = int.Parse(Session["ProjectID"].ToString());
        var Members = (from m in context.Members
                       select new { Name = m.Name,
                                    ID=m.ID}).ToList();



        memberRepeater.DataSource = Members;
        memberRepeater.DataBind();

        var Iterations = (from I in context.Iterations
                          select new
                          {
                              Name = I.Name,
                             ID = I.ID
                          }).ToList();


        IterationRepeater.DataSource = Iterations;
        IterationRepeater.DataBind();


        var Stories = (from S in context.Stories
                       where S.ProjectID == PID
                       select new
                       {
                           Name = S.Name,
                           ID = S.ID
                       }).ToList();


        StoryRepeater.DataSource = Stories;
        StoryRepeater.DataBind();



        var SubStories = (from SS in context.Stories
                          where SS.MainStory != null
                          select new
                          {
                             Name = SS.Name,
                             ID = SS.ID
                          }).ToList();



        SubStoryRepeater.DataSource = SubStories;
        SubStoryRepeater.DataBind();

        var Tasks = (from T in context.Tasks

                     select new
                     {
                         Name = T.Name,
                         ID = T.ID
                     }).ToList();



        TaskRepeater.DataSource = Tasks;
        TaskRepeater.DataBind();





    }
    public void IterationAdminviewMember(object sender, EventArgs e)
    {
        Button Repeaterbtn = sender as Button;
        Session["MemberID"] = Repeaterbtn.CommandArgument;
        Response.Redirect("StoryAdminMemberData.aspx");
    }
    public void viewStory(object sender, EventArgs e)
    {
        Button Repeaterbtn = sender as Button;
        Session["StoryID"] = Repeaterbtn.CommandArgument;
        Response.Redirect("StoryAdminStoryData.aspx");
    }
    public void viewSubStory(object sender, EventArgs e)
    {
        Button Repeaterbtn = sender as Button;
        Session["SubStoryID"] = Repeaterbtn.CommandArgument;

        Response.Redirect("StoryAdminSubStoryData.aspx");
    }
    public void StoryAdminviewIteration(object sender, EventArgs e)
    {
        Button Repeaterbtn = sender as Button;
        Session["IterationID"] = Repeaterbtn.CommandArgument;
        Response.Redirect("StoryAdminIterationData.aspx");
    }
    public void viewTask(object sender, EventArgs e)
    {
        Button Repeaterbtn = sender as Button;
        Session["TaskID"] = Repeaterbtn.CommandArgument;
        Response.Redirect("StoryAdminTaskData.aspx");
    }
}
