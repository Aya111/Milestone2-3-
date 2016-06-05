using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditStory : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

        AgilyToolEntities1 context = new AgilyToolEntities1();

        if (!IsPostBack)
        {
           int StoryID = int.Parse(Session["StoryID"].ToString());

            var story = (from s in context.Stories
                           where s.ID == StoryID
                           select s).ToList();
            GridView1.DataSource = story;
            GridView1.DataBind();
            Session["StoryData"] = story;

        }

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.DataSource = Session["StoryData"];
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataBind();

    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {

    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridView1.DataSource = Session["StoryData"];
        TextBox Name = (TextBox)GridView1.Rows[e.RowIndex].Cells[0].FindControl("NameBox");
        int storyID = int.Parse(Session["StoryID"].ToString());
        AgilyToolEntities1 context = new AgilyToolEntities1();
        var query = (from s in context.Stories
                     where s.ID == storyID
                     select s).FirstOrDefault();
        query.ID = storyID;
        query.Name = Name.Text;
        

        TextBox Points = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].FindControl("PointsBox");
        query.Points = double.Parse(Points.Text);


        TextBox EstimedHours = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].FindControl("EstimatedHoursBox");
        query.EstimatedHours = int.Parse(EstimedHours.Text);

        TextBox Status = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].FindControl("StatusBox");
        query.Status = Status.ToString();

        TextBox Description = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].FindControl("DescriptionBox");
        query.Description = Description.Text;

        context.SaveChanges();
        storyID = int.Parse(Session["StoryID"].ToString());

        var story1 = (from s in context.Stories
                     where s.ID == storyID
                     select s).ToList();
        GridView1.DataSource = story1;
        GridView1.DataBind();
        Session["StoryData"] = story1;

        GridView1.EditIndex = -1;
        GridView1.DataSource = story1;
        GridView1.DataBind();
        Session["StoryData"]=story1;


    }
}