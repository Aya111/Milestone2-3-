using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.Entity.Core.Objects;


public partial class ManageTask : System.Web.UI.Page
{


    AgilyToolEntities1 context = new AgilyToolEntities1();

    

    // here  projectid storyid,memberid  will  take them from  asession when  project inintegrated  here   we use constant numer or read them from query  string;


   
    int projectid, storyid ,memberid, estimatedhours, task_no;
    string taskname, taskdescreption, taskstatus, taskdevelopersnames;
    List<TaskData_Result> tasks;
    string[] DevelopersNames;
  



    protected void Page_Load(object sender, EventArgs e)
    {
        pnl_addTask.Visible = false;
        task_no = 0;
        //storyid = Convert.ToInt32(Request.QueryString["storyid"]);
        projectid = int.Parse((Session["ProjectID"]).ToString());
        storyid = int.Parse((Session["StoryID"]).ToString());


        memberid = int.Parse((Session["MemberID"]).ToString());
        ddl_AddTStatus.Items.Add("Done");
        ddl_AddTStatus.Items.Add("NotDone");


        //list of  all members  in  the project used  when  assigning member to task in  addtask  
        List<Member> developers = (from m in context.Members
                                   join mp in context.Project_Member_Role
                                   on m.ID equals mp.MemberID
                                   join p in context.Projects on mp.ProjectID equals p.ID
                                   where p.ID == projectid
                                   select m).ToList();

      if (Page.IsPostBack != true)
        {
            clb_AddTask.DataSource = developers;
            clb_AddTask.DataTextField = "Name";
            clb_AddTask.DataValueField = "ID";
            clb_AddTask.DataBind();
        }




       
      // here we get all  tasks   for specific   story by calling TaskData procedure 
      
      // task Data  displayed on  controls  created at   run  time debending on  tasks  numbers all controls  created  at load page  event 
        tasks = (from t in context.TaskData(storyid)

                 select t).ToList();

        foreach (var item in tasks)
        {
            task_no++;
            DevelopersNames = (from m in context.Members
                               join mt in context.Member_Task
                               on m.ID equals mt.MemberID
                               where mt.TaskID == item.ID
                               select m.Name).ToArray();
            Panel1.CssClass = "container";

            Panel p1 = new Panel();
            p1.ID = "task&" + item.ID;
            p1.CssClass = "c";
            p1.Width = 1000;
            Panel1.Controls.Add(p1);

            Label lbl_Title = new Label();
            lbl_Title.CssClass = "lbl_titlestyle";
            lbl_Title.Text = "Task :" + task_no;
            p1.Controls.Add(lbl_Title);

            //taskname
            Label lbl_TaskName = new Label();
            lbl_TaskName.CssClass = "labelstyle";
            lbl_TaskName.Text = "TaskTitle :";
            p1.Controls.Add(lbl_TaskName);

            TextBox txt_TaskName = new TextBox();
            txt_TaskName.CssClass = "textboxstyle";
            txt_TaskName.ID = "name" + item.ID;
            txt_TaskName.Text = item.Task_Name;
            p1.Controls.Add(txt_TaskName);


            //estimated hours
            Label lbl_TaskEstimatedTime = new Label();
            lbl_TaskEstimatedTime.CssClass = "labelstyle";
            lbl_TaskEstimatedTime.Text = "EstimatedTime :";
            p1.Controls.Add(lbl_TaskEstimatedTime);
            TextBox txt_TaskEstimatedTime = new TextBox();
            txt_TaskEstimatedTime.CssClass = "textboxstyle";
            txt_TaskEstimatedTime.ID = "hours" + item.ID;
            txt_TaskEstimatedTime.Text = item.Estimated_Hours.ToString();
            p1.Controls.Add(txt_TaskEstimatedTime);

            //descreption
            Label lbl_TaskDescreption = new Label();
            lbl_TaskDescreption.CssClass = "labelstyle";
            lbl_TaskDescreption.Text = "TaskDescreption :";
            p1.Controls.Add(lbl_TaskDescreption);
            TextBox txt_TaskDescreption = new TextBox();
            txt_TaskDescreption.CssClass = "textboxstyle_d";
            txt_TaskDescreption.ID = "desc" + item.ID;
            txt_TaskDescreption.Text = item.Description;
            p1.Controls.Add(txt_TaskDescreption);
            Response.Write("<br>");

            //status
            Label lbl_Status = new Label();
            lbl_Status.CssClass = "labelstyle";
            lbl_Status.Text = "TaskStatus :";
            p1.Controls.Add(lbl_Status);
            List<string> status = new List<string> { "True", "False" };
            DropDownList ddl_status = new DropDownList();
            ddl_status.CssClass = "ddl_style";
            ddl_status.ID = "status" + item.ID;
            ddl_status.Width = 200;
            ddl_status.Items.Add("True");
            ddl_status.Items.Add("False");
            if (item.Status == "True")
            {
                ddl_status.SelectedIndex = 0;
            }
            else
            {
                ddl_status.SelectedIndex = 1;
            }
            p1.Controls.Add(ddl_status);


            //developer assining to that task
            Label lbl_Developers = new Label();
            lbl_Developers.CssClass = "labelstyle";
            lbl_Developers.Text = "Developers :";
            p1.Controls.Add(lbl_Developers);
             CheckBoxList cbl_developersnames = new CheckBoxList();
            foreach (var name in DevelopersNames)
            {
                cbl_developersnames.Items.Add(name);
            }
            cbl_developersnames.CssClass = "labelstyle";
            cbl_developersnames.ID = "d_name" + item.ID;
            cbl_developersnames.DataTextField = "Name";
            cbl_developersnames.DataValueField = "ID";
            p1.Controls.Add(cbl_developersnames);




            //btn_add
            Button btnadd = new Button();
            btnadd.CssClass = "btnstyle";
            btnadd.Text = "Add";
            btnadd.CommandArgument = item.ID.ToString();
            p1.Controls.Add(btnadd);
            btnadd.Click += new EventHandler(btnAddClick);


            //btn_update
            Button btnupdate = new Button();
            btnupdate.CssClass = "btnstyle";
            btnupdate.Text = "Update";
            p1.Controls.Add(btnupdate);
            btnupdate.CommandArgument = p1.ID;
            btnupdate.Click += new EventHandler(btn_UpdateTask_Click);
          

            //btn_delete
            Button btndelete = new Button();
            btndelete.CssClass = "btnstyle";
            btndelete.Text = "Delete";
            btndelete.CommandArgument = item.ID.ToString();
            p1.Controls.Add(btndelete);
            btndelete.Click += new EventHandler(btn_DeleteTask_Click);


        }


        
        List<string> DevelopersName = (from m in context.Members
                                       join mp in context.Project_Member_Role
                                       on m.ID equals mp.MemberID
                                       join p in context.Projects on mp.ProjectID equals p.ID
                                       where p.ID == 1
                                       select p.Name).ToList();




    }//end  paage load



        public void AddTask(int storyid)
        {
            pnl_addTask.Visible = true;
        }
        protected void btn_AddTask_Click(object sender, EventArgs e)
        {
        Task t = new Task();
       

        t.Name = txt_AddTName.Text;
                t.Description = txt_AddTDescreption.Text;
                t.Estimated_Hours = Convert.ToInt32(txt_AddTEstimatedTime.Text);
                t.StoryID = storyid;
                t.Story = (from s in context.Stories
                           where s.ID == t.StoryID
                           select s).FirstOrDefault();
                t.Status = ddl_AddTStatus.SelectedItem.Text;
                context.Tasks.Add(t);
                context.SaveChanges();
                int curentid = t.ID;
                foreach (ListItem item in clb_AddTask.Items)
                {
                    if (item.Selected == true)
                    {
                        Member_Task mt = new Member_Task();
                        mt.MemberID = Convert.ToInt32(item.Value);
                        mt.TaskID = curentid;
                        context.Member_Task.Add(mt);
                        context.SaveChanges();
                    }//end if
                }//end  foreach
      

       }//end  btn_AddTask_Click

    protected void btn_btn_CncelAddingTask_Click(object sender, EventArgs e)
        {
            txt_AddTName.Text = "";
            txt_AddTDescreption.Text = "";
            txt_AddTEstimatedTime.Text = "";
            pnl_addTask.Visible = false;
      }//   end btn_btn_CncelAddingTask_Click

    //______apdate Task _______________________________________________________________

    protected void btn_UpdateTask_Click(object sender, EventArgs e)
    {   
       string id = ((System.Web.UI.WebControls.Button)sender).CommandArgument.ToString();
        string[] ids = id.Split('&');
        int taskid = Convert.ToInt32(ids[1]);

        Task updated_task = (from t in context.Tasks
                             where t.ID == taskid
                             select t).FirstOrDefault();


        Panel current_panel = (Panel)Panel1.FindControl(id);
        TextBox name = (TextBox)current_panel.FindControl("name" + taskid);
        TextBox hours = (TextBox)current_panel.FindControl("hours" + taskid);
        TextBox desc = (TextBox)current_panel.FindControl("desc" + taskid);
        DropDownList status = (DropDownList)current_panel.FindControl("status" + taskid);
        CheckBoxList d_name = (CheckBoxList)current_panel.FindControl("d_name" + taskid);
        ObjectParameter objParam = new ObjectParameter("member_authority", typeof(string));

        //context.getauthority(1, 1, objParam);
        //string member_authority = objParam.ToString();

                updated_task.Name = name.Text;
                updated_task.StoryID = storyid;
                updated_task.Description = desc.Text;
                updated_task.Estimated_Hours = Convert.ToInt32(hours.Text);
                updated_task.Status = status.SelectedItem.Text;
                updated_task.Story = (from s in context.Stories
                                      where s.ID == updated_task.StoryID
                                      select s).FirstOrDefault();
                context.SaveChanges();

                Member_Task mt = (from MT in context.Member_Task
                                  where MT.TaskID == taskid
                                  select MT).FirstOrDefault();
                context.Member_Task.Remove(mt);
                context.SaveChanges();


                foreach (ListItem item in d_name.Items)
                {
                    if (item.Selected == true)
                    {
                        Member_Task up_mt = new Member_Task();
                        mt.MemberID = Convert.ToInt32(item.Value);
                        mt.TaskID = taskid;
                        context.Member_Task.Add(mt);
                        context.SaveChanges();
                    }//end if

                }//end  foreach

        //    }//end else 
        //}
   }//end btn_UpdateTask_Click
//______Delete _________________________________________________________________

    protected void btn_DeleteTask_Click(object sender, EventArgs e)
    {
       //ObjectParameter objParam = new ObjectParameter("member_authority", typeof(string));

       // context.getauthority(1, 1, objParam);
       // string member_authority = objParam.ToString();
       // if (member_authority == "managestory")
       // {
            int id = Convert.ToInt32(((System.Web.UI.WebControls.Button)sender).CommandArgument.ToString());
            Task deleted_task = (from t in context.Tasks
                                 where t.ID == id
                                 select t).FirstOrDefault();
            context.Tasks.Remove(deleted_task);
            context.SaveChanges();
    }//end delete 
     //else
     //{
     //    System.Windows.Forms.MessageBox.Show("you  have  not permission  to  delete tasks ");
     //}








    protected void btnAddClick(object sender, EventArgs e)
    {
        pnl_addTask.Visible = true;
    }

    bool isint(string text)
    {
        bool isnum =true;
       

        foreach (char c in text)
        {

            if (c >= '0' && c <= '9')
            {
                isnum = false;
            }

           
        }
        return isnum;
    }







    }
