<%@ Page Title="" Language="C#" MasterPageFile="~/IterationAdminMaster.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="IterationAdminProjectData.aspx.cs" Inherits="IterationAdminProjectData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    
    <%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

  
   


    <div class="clearfix" style="position:center"></div>

               <div class="col-md-4 col-sm-4 col-xs-12 profile_details">
                        <div class="well profile_view">
                          <div class="col-sm-12">
                            <h4 class="brief"><i>Project Name</i></h4>
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
                  <%# DataBinder.Eval(Container.DataItem,"ProjectName") %>
                   
               </td>
                </tr>
            <tr >
                  <td>
                    StartDate:
                </td>
               <td >
                  <%# DataBinder.Eval(Container.DataItem,"StartDate") %>
               </td>
                </tr>
            <tr>
                <td>
                    EndDate:
                </td>
               <td>
                  <%# DataBinder.Eval(Container.DataItem, "EndDate") %>
               </td>
                </tr>
            <tr>
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
                                  



</div>
</div>
 </div>
 </div>

</asp:Content>

