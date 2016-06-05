using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IterationAdminIterationData : System.Web.UI.Page
{
    AgilyToolEntities1 cxt = new AgilyToolEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            int ProID = int.Parse(Session["ProjectID"].ToString());
            Label1.Text = ProID.ToString();//ProID.ToString();


        }
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GO_Edit(object sender, CommandEventArgs e)
    {
        Response.Redirect("Edit_and_delete_iteratin.aspx");
    }
}