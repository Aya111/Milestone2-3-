<%@ Page Title="" Language="C#" MasterPageFile="~/SubStoryAdminMaster.master" AutoEventWireup="true" CodeFile="SubStoryData.aspx.cs" Inherits="SubStoryData" %>

  <asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
     <div class="clearfix" style="position:center"></div>

               <div class="col-md-4 col-sm-4 col-xs-12 profile_details">
                        <div class="well profile_view">
                          <div class="col-sm-12">
                            <h4 class="brief"><i>Story Name</i></h4>
                            <div class="left col-xs-7">

       <ASP:Repeater id="MyRepeater" runat="server">
      <HeaderTemplate>
         <Table  class="table" style="width:500px; position:center;height:400px">
        
      </HeaderTemplate>

      <ItemTemplate>
            <tr >
                <td >
                    Name:
                </td>
               <td >
                  <%# DataBinder.Eval(Container.DataItem,"Name") %>
                   
               </td>
                </tr>
            <tr >
                  <td>
                   Estimated Points:
                </td>
               <td >
                  <%# DataBinder.Eval(Container.DataItem,"Points") %>
               </td>
                </tr>
            <tr>
                <td>
                    Main Story:
                </td>
               <td>
                  <%# DataBinder.Eval(Container.DataItem, "MainStory") %>
               </td>
                </tr>
            <tr>
                <td>
                    Status:
                </td>
               <td>
                  <%# DataBinder.Eval(Container.DataItem, "Status") %>
               </td>
                </tr>
          <tr>
                  <td>
                  Estimated Hours:
                </td>
               <td>
                  <%# DataBinder.Eval(Container.DataItem, "EstimatedHours") %>
               </td>
                </tr>
               
            </tr>
      </ItemTemplate>

      <FooterTemplate>
         </Table>
      </FooterTemplate>
   </ASP:Repeater>


                   
  











                    <h2>Tasks</h2>
                   
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">

                   

                    <div class="table-responsive">

       <ASP:Repeater id="TasksRepeater" runat="server">
      <HeaderTemplate>
         <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                            
                            <th class="column-title">Name </th>
                            <th class="column-title">EstimatedHours </th>
                            <th class="column-title">Description</th>
                            
                       
                            <th class="column-title no-link last"><span class="nobr">Status</span>
                            </th>
                            
                          </tr>
                        </thead>
      
      </HeaderTemplate>

      <ItemTemplate>
          <tr class="even pointer">
                            
                            <td class=" ">
                                <%# DataBinder.Eval(Container.DataItem,"TaskName") %>
                            </td>
                            <td class=" ">
                                <%# DataBinder.Eval(Container.DataItem,"EstimatedHours") %>
                            </td>
                            <td class=" ">
                                <%# DataBinder.Eval(Container.DataItem,"Description") %>
                            </td>
                           
                            <td class=" ">
                                <%# DataBinder.Eval(Container.DataItem,"Status") %>
                            </td>
                           
                            
           </tr>
      </ItemTemplate>

      <FooterTemplate>
         </Table>
      </FooterTemplate>
   </ASP:Repeater>
                         



                                  
<div class="x_content">
            
           <asp:Button ID="EditStory" runat="server" Text="Edit"  class="btn btn-warning" onclick="EditStory_Click"/>  
     <asp:Button ID="Button1" runat="server" Text="Add Task"  class="btn btn-warning" onclick="AddTask_Click"/>  
           <asp:Button ID="DeleteStory" runat="server" Text="Delete" class="btn btn-danger" OnClick="Delete"/> 

</div>


</div>
</div>
 </div>
 </div>
</div>
   

</asp:Content>

