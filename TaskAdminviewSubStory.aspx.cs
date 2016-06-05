using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TaskAdminviewSubStory : System.Web.UI.Page
{
    AgilyToolEntities1 context = new AgilyToolEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {

        int PID = int.Parse(Session["ProjectID"].ToString());
        int SID = int.Parse(Session["StoryID"].ToString());

        MyRepeater.DataSource = (from s in context.Stories
                                 where s.ID == SID && s.MainStory != null
                                 select new
                                 {
                                     Name = s.Name,
                                     Points = s.Points,
                                     EstimatedHours = s.EstimatedHours,
                                     MainStory = s.MainStory,
                                     Status = s.Status,
                                     Description = s.Description
                                 }).ToList();




        MyRepeater.DataBind();





        TasksRepeater.DataSource = (from T in context.Tasks
                                    where T.StoryID == SID
                                    select new
                                    {
                                        TaskName = T.Name,
                                        EstimatedHours = T.Estimated_Hours,

                                        Description = T.Description,
                                        Status = T.Status
                                    }).ToList();


        TasksRepeater.DataBind();



    }

    protected void Delete(object sender, EventArgs e)
    {

        Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "<script>alert('Are You Sure ?');</script>");
        int SID = int.Parse(Session["StoryID"].ToString());
        Story St = (from s in context.Stories
                    where s.ID == SID
                    select s).FirstOrDefault();



        context.Stories.Remove(St);
        context.SaveChanges();

        // Response.Redirect("Projectdata.aspx");

    }

    protected void EditStory_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditStory.aspx");
    }
    protected void AddTask_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageTask.aspx");
    }

}