using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class StoryData : System.Web.UI.Page
{
    TextBox namebox;
    TextBox pointsbox;
    TextBox Hoursbox ;
    TextBox descriptionbox;
AgilyToolEntities1 context = new AgilyToolEntities1();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
        int PID = int.Parse(Session["ProjectID"].ToString());
        int SID = int.Parse(Session["StoryID"].ToString());
      
        MyRepeater.DataSource = (from s in context.Stories
                                 where s.ID == SID
                                 select new
                                 {
                                     Name = s.Name,
                                     Points=s.Points,
                                     EstimatedHours=s.EstimatedHours,
                                     MainStory=s.MainStory,
                                     Status=s.Status,
                                     Description = s.Description
                                 }).ToList();




        MyRepeater.DataBind();
       


       
        //namebox.Visible = false;
        //pointsbox.Visible = false;
        //Hoursbox.Visible = false;
        //descriptionbox.Visible = false;





    }
    protected void MyRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        namebox =(TextBox) e.Item.FindControl("TextBox1");
        pointsbox = (TextBox)e.Item.FindControl("TextBox2") ;

        Hoursbox = (TextBox)e.Item.FindControl("TextBox3");
        string value = namebox.Text;
        Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "<script>alert(value);</script>");

    }
    public void viewMember(object sender, EventArgs e)
    {
        Response.Redirect("MemberData.aspx");
    }
    public void viewStory(object sender, EventArgs e)
    {
        Response.Redirect("StoryData.aspx");
    }
    public void viewIteration(object sender, EventArgs e)
    {
        Response.Redirect("IterationrData.aspx");
    }
    public void viewTask(object sender, EventArgs e)
    {
        Response.Redirect("TaskData.aspx");
    }
    public void AddSubStory(object sender, EventArgs e)
    {
       
        Label1.Text = namebox.Text.ToString();
        Response.Redirect("AddSubStory.aspx");
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
        //namebox.Visible = false;
       

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