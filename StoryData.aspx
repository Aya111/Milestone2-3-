<%@ Page Title="" Language="C#" MasterPageFile="~/StoryAdminMaster.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="StoryData.aspx.cs" Inherits="StoryData" %>



<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
     <div class="clearfix" style="position:center"></div>

               <div class="col-md-4 col-sm-4 col-xs-12 profile_details">
                        <div class="well profile_view">
                          <div class="col-sm-12">
                            <h4 class="brief"><i>Story Name</i></h4>
                            <div class="left col-xs-7">

       <ASP:Repeater id="MyRepeater" runat="server" OnItemCommand="MyRepeater_ItemCommand">
      <HeaderTemplate>
         <Table  class="table" style="width:500px; position:center;height:400px">
        
      </HeaderTemplate>

      <ItemTemplate>
            <tr >
                <td >
                    Name:
                </td>
               <td >
                   <asp:TextBox ID="TextBox1" runat="server"  Text='<%# Eval("Name") %>' ></asp:TextBox>
                  <%# DataBinder.Eval(Container.DataItem,"Name") %>

                   
               </td>
                </tr>
            <tr >
                  <td>
                   Estimated Points:
                </td>
               <td >
                   <asp:TextBox ID="TextBox2" runat="server"  Text='<%# Eval("Points") %>'></asp:TextBox>
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
                   <asp:TextBox ID="TextBox4" runat="server"  Text='<%# Eval("Status") %>'></asp:TextBox>
                  <%# DataBinder.Eval(Container.DataItem, "Status") %>
               </td>
                </tr>
          <tr>
                  <td>
                  Estimated Hours:
                </td>
               <td>
                   <asp:TextBox ID="TextBox5" runat="server"  Text='<%# Eval("EstimatedHours") %>'></asp:TextBox>
                  <%# DataBinder.Eval(Container.DataItem, "EstimatedHours") %>
               </td>
                </tr>
               
            </tr>
      </ItemTemplate>

      <FooterTemplate>
         </Table>
      </FooterTemplate>
   </ASP:Repeater>


                   
  





<div class="x_content">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
   <asp:Button ID="Button4" runat="server" Text="Add SubStory" OnClick="AddSubStory" class="btn btn-success" required="required" />  
 
</div>





                  </div>

            

                   

                 

                                  
<div class="x_content">
            
           <asp:Button ID="EditStory" runat="server" Text="Edit"  class="btn btn-warning" onclick="EditStory_Click"/>  
     <asp:Button ID="Button1" runat="server" Text="Add Task"  class="btn btn-warning" onclick="AddTask_Click"/>  
           <asp:Button ID="DeleteStory" runat="server" Text="Delete" class="btn btn-danger" OnClick="Delete"/> 

</div>


</div>

 </div>
</div>
   

</asp:Content>
