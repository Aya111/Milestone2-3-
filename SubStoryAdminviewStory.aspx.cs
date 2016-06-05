using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubStoryAdminviewStory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AgilyToolEntities1 context = new AgilyToolEntities1();
        int PID = int.Parse(Session["ProjectID"].ToString());
        int SID = int.Parse(Session["StoryID"].ToString());

        MyRepeater.DataSource = (from s in context.Stories
                                 where s.ID == SID
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

    public void AddSubStory(object sender, EventArgs e)
    {
        Response.Redirect("AddSubStory.aspx");
    }


}