using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IterationAdminProjectData : System.Web.UI.Page
{
    AgilyToolEntities1 context = new AgilyToolEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = int.Parse(Session["ProjectID"].ToString());
        
        MyRepeater.DataSource = (from p in context.Projects
                                 where p.ID == id
                                 select new
                                 {
                                     ProjectName = p.Name,
                                     StartDate = p.StartDate,
                                     EndDate = p.EndDate,
                                     Description = p.Description
                                 }).ToList();


        MyRepeater.DataBind();


    }
}