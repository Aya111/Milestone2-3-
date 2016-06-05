using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewProject : System.Web.UI.Page
{
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btn1_Click(object sender, EventArgs e)
    {
        AgilyToolEntities1 context = new AgilyToolEntities1();

        DateTime startdate = new DateTime();
        DateTime enddate = new DateTime();

        if (Calendar1.SelectedDate>DateTime.Now)
        {
             startdate = Calendar1.SelectedDate;
        }
        else
        {
            //Calendar1.VisibleDate = DateTime.Today;
            //Calendar1.SelectedDates.Clear();

            startdate = Calendar1.TodaysDate;
        }

        if(Calendar2.SelectedDate>DateTime.Now)
        {
            enddate = Calendar2.SelectedDate;
        }
        else
        {
            //Calendar2.VisibleDate = DateTime.Today;
            //Calendar2.SelectedDates.Clear();

            enddate = Calendar2.TodaysDate;
        }
        Project Pro = new Project
        {
            Name = txt1.Text.ToString(),
            StartDate =startdate,
            EndDate = enddate,
            Description = txt4.Text.ToString()

        };
        context.Projects.Add(Pro);
        context.SaveChanges();
        string Email = Session["Email"].ToString();
        Project_Member_Role Role = new Project_Member_Role
        {
            ProjectID = Pro.ID,
            RoleID = 2,
            MemberID = (from M in context.Members
                        where M.E_mail == Email
                        select M.ID).FirstOrDefault()


        };
        context.Project_Member_Role.Add(Role);
        context.SaveChanges();
        Session["ProjectID"] = Pro.ID;
        Response.Redirect("ProjectData.aspx");
        

    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        txt1.Text = string.Empty;
        Calendar1.VisibleDate = DateTime.Today;
        Calendar1.SelectedDates.Clear();
        Calendar2.VisibleDate = DateTime.Today;
        Calendar2.SelectedDates.Clear();
        txt4.Text = string.Empty;



    }

    protected void cal1_SelectionChanged(object sender, EventArgs e)
    {
        txt2.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Calendar2.Visible = true;
    }

    protected void Calendar2_SelectionChanged1(object sender, EventArgs e)
    {
        txt3.Text = Calendar2.SelectedDate.ToShortDateString();
        Calendar2.Visible = false;
    }
}