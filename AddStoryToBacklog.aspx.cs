using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddStoryToBacklog : System.Web.UI.Page
{
    List<Task> TasksList;
    Task StoryTask;
    List<Task> TL;
    protected void Page_Load(object sender, EventArgs e)
    {
        AgilyToolEntities1 context = new AgilyToolEntities1();

        if (!IsPostBack)
        {
            TasksList = new List<Task>();
            Session["TasksList"] = TasksList;


        }
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

    protected void AddTaskbtn_Click(object sender, EventArgs e)
    {


        Session["StoryName"] = NameBox.Text;
        Session["StoryPoints"] = EstimatedPointsBox.Text;
        Session["StoryEstimatedHours"] = StoryEstimatedHoursBox.Text;
        Session["StoryDescription"] = DescriptionBox.Text;

        StoryTask = new Task();
        StoryTask.Name = TaskNameBox.Text;
        StoryTask.Estimated_Hours = int.Parse(TaskEstimatedHoursBox.Text);
        StoryTask.Status = "NotDone";
        StoryTask.Description = DescriptionBox.Text;

        TL = (List<Task>)Session["TasksList"];

        TL.Add(StoryTask);
        Session["TasksList"] = TL;
        TaskNameBox.Text = " ";
        TaskEstimatedHoursBox.Text = " ";
        TaskDescriptionBox.Text = " ";
        
    }

    protected void Submitbtn_Click(object sender, EventArgs e)
    {
        float parsedValue;
        int sparsedValue;
        int tparsedValue;
        if (!float.TryParse(EstimatedPointsBox.Text, out parsedValue) || !int.TryParse(StoryEstimatedHoursBox.Text, out sparsedValue) || !int.TryParse(TaskEstimatedHoursBox.Text, out tparsedValue))
        {
            Response.Write("<script>alert('Insert Numbers In Hours And Points')</script>");
        }
        else {
            string StoryName = Session["StoryName"].ToString();
            float StoryPoints = float.Parse(Session["StoryPoints"].ToString());
            int EstimatedHours = int.Parse(Session["StoryEstimatedHours"].ToString());

            string StoryDescription = Session["StoryDescription"].ToString();



            int PID = int.Parse(Session["ProjectID"].ToString());
            Story NewStory = new Story();
            NewStory.Name = StoryName;
            NewStory.Points = StoryPoints;
            NewStory.EstimatedHours = EstimatedHours;
            NewStory.ProjectID = PID;
            //Project pp = (from p in context.Projects
            //             where p.ID == PID
            //             select p).FirstOrDefault();
            //NewStory.Project = pp;
            NewStory.Status = "Backlog";
            NewStory.Description = StoryDescription;
            AgilyToolEntities1 context = new AgilyToolEntities1();
            context.Stories.Add(NewStory);
            context.SaveChanges();

            Story LastInserted = ((from S in context.Stories
                                   where S.ProjectID == PID
                                   orderby S.ID descending
                                   select S).Take(1)).FirstOrDefault();

            TL = (List<Task>)Session["TasksList"];

            foreach (Task Task in TL)
            {
                Task.StoryID = LastInserted.ID;
                context.Tasks.Add(Task);
                context.SaveChanges();
            }
            Response.Redirect("ProjectData.aspx");

        }


    }
    
}