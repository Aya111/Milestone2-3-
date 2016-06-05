using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddMember : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ViewProject(object sender, EventArgs e)
    {
        Response.Redirect("ProjectData.aspx");
    }

    protected void Cancel(object sender, EventArgs e)
    {
        Response.Redirect("ProjectData.aspx");
    }
}