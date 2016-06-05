<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="AddStoryToBacklog.aspx.cs" Inherits="AddStoryToBacklog" %>



   
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
     <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Add Story<small>Add Tasks</small></h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <div id="demo-form2" class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Name<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox  runat="server" id="NameBox" required="required" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                         
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Estimated Points <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                         
                            <asp:TextBox runat="server" id="EstimatedPointsBox" name="last-name" required="required" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                        </div>
                      </div>
                         <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Estimated Hours<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <asp:TextBox runat="server" id="StoryEstimatedHoursBox" required="required" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Description</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <asp:TextBox runat="server" id="DescriptionBox"  required="required" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                        </div>
                      </div>
                     
                    

                 </div>
                  </div>
                </div>
              </div>
            </div>
    <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Tasks</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                  <div class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Name<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                           <asp:TextBox runat="server" id="TaskNameBox" name="last-name" required="required" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Estimated Time <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                           <asp:TextBox runat="server" id="TaskEstimatedHoursBox" name="last-name" required="required" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Description</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                           <asp:TextBox runat="server" id="TaskDescriptionBox" name="last-name" required="required" class="form-control col-md-7 col-xs-12" ></asp:TextBox>
                        </div>
                      </div>
                     
                    
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <asp:Button ID="AddTaskbtn" class="btn btn-success" runat="server" Text="Add task" OnClick="AddTaskbtn_Click" />
                         
                        </div>
                      </div>

                   </div>
                       <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <asp:Button ID="Submitbtn" runat="server" Text="Submit" class="btn btn-success" OnClick="Submitbtn_Click"/>
                            <asp:Button ID="Cancelbtn" class="btn btn-primary" runat="server" Text="Cancel" />
                          
                        </div>
                      </div>
                  </div>
                </div>
              </div>
            </div>

</asp:Content>

