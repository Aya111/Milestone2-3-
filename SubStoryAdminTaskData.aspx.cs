using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubStoryAdminTaskData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AgilyToolEntities1 context = new AgilyToolEntities1();
        int PID = int.Parse(Session["ProjectID"].ToString());

        int TID = int.Parse(Session["TaskID"].ToString());

        MyRepeater.DataSource = (from T in context.Tasks
                                 where T.ID == TID
                                 select new
                                 {
                                     Name = T.Name,
                                     TaskStory = T.Story,

                                     EstimatedHours = T.Estimated_Hours,

                                     Status = T.Status,
                                     Description = T.Description
                                 }).ToList();




        MyRepeater.DataBind();

    }
}