using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditProject : System.Web.UI.Page
{
    AgilyToolEntities1 context = new AgilyToolEntities1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
             int ProID=int.Parse(Session["ProjectID"].ToString());
            var query = (from P in context.Projects
                         where P.ID == ProID
                         select  new {
                                        P.ID,
                                        P.Name,
                                        P.StartDate,
                                        P.EndDate,
                                        P.Description
                                      }).ToList();
            GridView1.DataSource = query;
            GridView1.DataBind();
            Session["P"] = query;
        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridView1.DataSource = Session["P"];
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataBind();
    }




    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridView1.DataSource = Session["P"];
        Label ID = (Label) GridView1.Rows[e.RowIndex].Cells[0].FindControl("IDlbl");
        int id = int.Parse(ID.Text);
        var query = (from P in context.Projects
                     where P.ID == id
                     select P).FirstOrDefault();
        TextBox Name = (TextBox) GridView1.Rows[e.RowIndex].Cells[1].FindControl("Nametxt");
        query.Name = Name.Text;

        Calendar StartDate = (Calendar) GridView1.Rows[e.RowIndex].Cells[2].FindControl("StartDatecal1");
        query.StartDate = StartDate.SelectedDate;

        Calendar EndDate = (Calendar) GridView1.Rows[e.RowIndex].Cells[3].FindControl("EndDatecal2");
        query.EndDate = EndDate.SelectedDate;

        TextBox Description = (TextBox) GridView1.Rows[e.RowIndex].FindControl("Descriptiontxt");
        query.Description = Description.Text;

        context.SaveChanges();

        int ProID = int.Parse(Session["ProjectID"].ToString());
        var query1 = (from P in context.Projects
                     where P.ID == ProID
                     select new
                     {
                         P.ID,
                         P.Name,
                         P.StartDate,
                         P.EndDate,
                         P.Description
                     }).ToList();

        GridView1.EditIndex = -1;

        GridView1.DataSource = query1;
        GridView1.DataBind();
        Session["P"] = query1;
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        context.SaveChanges();
        GridView1.DataSource = Session["P"];
        GridView1.DataBind();
    }


    protected void EditBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProjectData.aspx");
    }
}