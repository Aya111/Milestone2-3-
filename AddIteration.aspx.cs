using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddIteration : System.Web.UI.Page

{
    AgilyToolEntities1 Cxt = new AgilyToolEntities1();
    List<Story_Iteration> storyList;
    Story_Iteration  Storyiteration;
    List<Story_Iteration> TL;

    List<int> StoryList;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        { //int ProID = int.Parse(Session["ProjectID"].ToString());
            Label1.Text =   (1).ToString();//ProID.ToString();
            storyList = new List<Story_Iteration>();
            Session["storyList"] = storyList;

            ViewState["Count"] = StoryList = new List<int>(); 

        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Calendar2.Visible = true;
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TextBox4.Text = Calendar2.SelectedDate.ToShortDateString();
        Calendar2.Visible = false;

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox3.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void Cancel(object sender, EventArgs e)
    {

        TextBox1.Text = string.Empty;
        Calendar1.VisibleDate = DateTime.Today;
        Calendar1.SelectedDates.Clear();
        Calendar2.VisibleDate = DateTime.Today;
        Calendar2.SelectedDates.Clear();



    }



    protected void submit(object sender, EventArgs e)
    {
        //string iteration_name = text
        //    Session["iteration_name"].ToString();
        //DateTime  statdate =( ()["statdate"]);
        //var enddate = Session["enddate"];


        //Iteration it = new Iteration();

        //it.Name = iteration_name;
        //it.StartDate = statdate;
        //it.EndDate = enddate;



        //Cxt.Iterations.Add(it);


        //Cxt.SaveChanges();


   




        StoryList = (List<int>)ViewState["Count"];
        Iteration it = new Iteration();
        it.Name = TextBox1.Text;
        it.StartDate = Calendar1.SelectedDate;
        it.EndDate = Calendar2.SelectedDate;

        

        if (it != null && StoryList.Count > 0)
        {
            Cxt.Iterations.Add(it);
            if(Cxt.SaveChanges() > 0)
            {
                int ID = int.Parse(Cxt.Iterations
                            .OrderByDescending(p => p.ID)
                            .Select(r => r.ID)
                            .First().ToString());
                foreach (int item in StoryList)
                {
                    Story_Iteration S = new Story_Iteration();
                    S.IterationID = ID;
                    S.StoryID = item;
                    S.Status = "Backlog";
                    S.SpentTime = 0;
                    Cxt.Story_Iteration.Add(S);
                    Cxt.SaveChanges();
                }
            }
        }
        Response.Redirect("FirstPage.aspx");

        //Cxt.Iterations.Add(it);


        //Cxt.SaveChanges();



        //Response.Redirect("FirstPage.aspx");



        //var  iter_id= (from iter in Cxt.Iterations select iter.ID);



        //   TL = (List<Story_Iteration>)Session["iter_story"];

        //   foreach (Story_Iteration temp in TL)
        //   {
        //       temp.IterationID= ;



        //   }


    }


    protected void AddStory(object sender, EventArgs e)

    {

        //Session["iteration name"] = TextBox1.Text;
        //Session["statdate"] = Calendar1.SelectedDate.ToShortDateString();
        //Session["enddate"] = Calendar1.SelectedDate.ToShortDateString();

        //Storyiteration = new Story_Iteration();
        //Storyiteration.StoryID = int.Parse(DropDownList1.SelectedValue);
        int s = int.Parse(DropDownList1.SelectedValue);

        StoryList = (List<int>)ViewState["Count"];

        StoryList.Add(s);

        ViewState["Count"] = StoryList;

        ////Storyiteration.SpentTime = 0;
        ////Storyiteration.Status = "backlog";


        //TL = (List<Story_Iteration>)Session["iter_story"];

        //TL.Add(Storyiteration);
        //Session["iter_story"] = TL;

        ////Story_Iteration st_itr = new Story_Iteration();
        //////{
        //////    st_itr.IterationID =
        //////          st_itr.StoryID = int.Parse(DropDownList1.SelectedValue);
        //////}




    }
}
