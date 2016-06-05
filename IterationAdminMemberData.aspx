<%@ Page Title="" Language="C#" MasterPageFile="~/IterationAdminMaster.master" AutoEventWireup="true" CodeFile="IterationAdminMemberData.aspx.cs" Inherits="IterationAdminMemberData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <div class="x_content">
                   
   <div class="clearfix"></div>

              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Table design <small>Custom design</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">

                   

                    <div class="table-responsive">

       <ASP:Repeater id="MyRepeater" runat="server">
      <HeaderTemplate>
         <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">
                            
                            <th class="column-title">Task </th>
                            <th class="column-title">Spent Time </th>
                            <th class="column-title">Date</th>
                          
                          </tr>
                        </thead>
      
      </HeaderTemplate>

      <ItemTemplate>
          <tr class="even pointer">
                            
                            <td class=" ">
                                <%# DataBinder.Eval(Container.DataItem,"Task") %>
                            </td>
                            <td class=" ">
                                <%# DataBinder.Eval(Container.DataItem,"SpentTime") %>
                            </td>
                            <td class=" ">
                                <%# DataBinder.Eval(Container.DataItem,"Date") %>
                            </td>
                           
                            
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
</div>



</asp:Content>

