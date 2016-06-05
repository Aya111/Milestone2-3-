﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class IterationAdminMaster : System.Web.UI.MasterPage
{
    AgilyToolEntities1 context = new AgilyToolEntities1();

    protected void Page_Load(object sender, EventArgs e)
    {

        int PID = int.Parse(Session["ProjectID"].ToString());


        memberRepeater.DataSource = (from m in context.Members
                                     join pmr in context.Project_Member_Role on m.ID equals pmr.MemberID
                                     where pmr.ProjectID == PID
                                     select new
                                     {
                                         Name = m.Name,
                                         ID = m.ID
                                     }).ToList();
        memberRepeater.DataBind();

        IterationRepeater.DataSource = (from S in context.Stories
                                        join SI in context.Story_Iteration on S.ID equals SI.StoryID
                                        join I in context.Iterations on SI.IterationID equals I.ID
                                        where S.ProjectID == PID
                                        select new
                                        {
                                            Name = I.Name,
                                            ID = SI.IterationID
                                        }).ToList();
        IterationRepeater.DataBind();





        StoryRepeater.DataSource = (from S in context.Stories

                                    where S.ProjectID == PID
                                    select new
                                    {
                                        Name = S.Name,
                                        ID = S.ID
                                    }).ToList();
        StoryRepeater.DataBind();

        SubStoryRepeater.DataSource = (from S in context.Stories

                                       where S.ProjectID == PID && S.MainStory != null
                                       select new
                                       {
                                           Name = S.Name,
                                           ID = S.ID
                                       }).ToList();
        SubStoryRepeater.DataBind();





        TaskRepeater.DataSource = (from T in context.Tasks
                                   join S in context.Stories on T.StoryID equals S.ID
                                   where S.ProjectID == PID
                                   select new
                                   {
                                       Name = T.Name,
                                       ID = T.ID
                                   }).ToList();
        TaskRepeater.DataBind();





       

    }
    public void IterationAdminviewMember(object sender, EventArgs e)
    {
        Button Repeaterbtn = sender as Button;
        Session["MemberID"] = Repeaterbtn.CommandArgument;
        Response.Redirect("IterationAdminMemberData.aspx");
    }
    public void viewStory(object sender, EventArgs e)
    {
        Button Repeaterbtn = sender as Button;
        Session["StoryID"] = Repeaterbtn.CommandArgument;
        Response.Redirect("IterationAdminStoryData.aspx");
    }
    public void viewSubStory(object sender, EventArgs e)
    {
        Button Repeaterbtn = sender as Button;
        Session["SubStoryID"] = Repeaterbtn.CommandArgument;
        Response.Redirect("IterationAdminSubStoryData.aspx");
    }
    public void viewIteration(object sender, EventArgs e)
    {
        Button Repeaterbtn = sender as Button;
        Session["IterationID"] = Repeaterbtn.CommandArgument;
        Response.Redirect("IterationAdminIterationData.aspx");
    }
    public void viewTask(object sender, EventArgs e)
    {
        Button Repeaterbtn = sender as Button;
        Session["TaskID"] = Repeaterbtn.CommandArgument;
        Response.Redirect("IterationAdminTaskData.aspx");
    }
}
