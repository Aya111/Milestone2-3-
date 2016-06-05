<%@ Page Title="" Language="C#" MasterPageFile="~/StoryAdminMaster.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="StoryAdminTaskData.aspx.cs" Inherits="StoryAdminTaskData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <div class="clearfix" style="position:center"></div>

               <div class="col-md-4 col-sm-4 col-xs-12 profile_details">
                        <div class="well profile_view">
                          <div class="col-sm-12">
                            <h4 class="brief"><i>Task Name</i></h4>
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
                 Story:
                </td>
               <td >
                  <%# DataBinder.Eval(Container.DataItem,"TaskStory") %>
               </td>
                </tr>
            <tr>
                <td>
                   EstimatedHours:
                </td>
               <td>
                  <%# DataBinder.Eval(Container.DataItem, "EstimatedHours") %>
               </td>
                </tr>
            <tr>
                <td>
                   Status:
                </td>
               <td>
                  <%# DataBinder.Eval(Container.DataItem, "Status") %>
               </td>
                  <td>
                  Description:
                </td>
                <td>
                  <%# DataBinder.Eval(Container.DataItem, "Description") %>
               </td>
               
                </tr>
               
            </tr>
      </ItemTemplate>

      <FooterTemplate>
         </Table>
      </FooterTemplate>
   </ASP:Repeater>
                                  
<div class="x_content">
              
    <button type="button" class="btn btn-success" style="display: inline-block;padding: 2px 8px;">Delete Project</button>
    <button type="button" class="btn btn-success" style="display: inline-block;padding: 2px 8px;">Edit Project</button>
    <button type="button" class="btn btn-success" style="display: inline-block;padding: 2px 8px;">Assign Task to User</button>

</div>


</div>
</div>
 </div>
 </div>

</asp:Content>

