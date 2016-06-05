<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Backlog.aspx.cs" Inherits="Backlog" %>


<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    
<script runat="server">

   
</script>


    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

   
    <!-- Bootstrap -->
    <link href="bootstrap.min.css" rel="stylesheet" />
   
    <!-- Font Awesome -->
    <link href="font-awesome.min.css" rel="stylesheet" />
  
    
    <!-- Custom Theme Style -->
    <link href="css/custom.css" rel="stylesheet" />
  
 

     <%--<div class="clearfix" style="position:center"></div>

               <div class="col-md-4 col-sm-4 col-xs-12 profile_details">
                        <div class="well profile_view">
                          <div class="col-sm-12">
                            <h4 class="brief"><i>Project Name</i></h4>
                            <div class="left col-xs-7">

       <ASP:Repeater id="MyRepeater" runat="server">
      <HeaderTemplate>
         <Table  class="table" style="width:500px; position:center;height:400px">
         <tr >
                <td >
                    Name
                </td>
                <td>
                    Estimated Points
                </td>
                <td>
                    MainStory
                </td>
                <td>
                    Description
                </td>

         </tr>
      </HeaderTemplate>

      <ItemTemplate>
           <tr>
               <td >
                  <%# DataBinder.Eval(Container.DataItem,"StoryName") %>
                   
               </td>
               
          
                  
               <td >
                  <%# DataBinder.Eval(Container.DataItem,"StoryPoints") %>
               </td>
                
            
              
               <td>
                  <%# DataBinder.Eval(Container.DataItem, "MainStory") %>
               </td>
                
                
               <td>
                  <%# DataBinder.Eval(Container.DataItem, "Description") %>
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
 </div>--%>


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
                            
                            <th class="column-title">Story Name </th>
                            <th class="column-title">StoryPoints </th>
                            <th class="column-title">Description</th>
                            <th class="column-title">Main Story</th>
                       
                            <th class="column-title no-link last"><span class="nobr">Status</span>
                            </th>
                            
                          </tr>
                        </thead>
      
      </HeaderTemplate>

      <ItemTemplate>
          <tr class="even pointer">
                            
                            <td class=" ">
                                <%# DataBinder.Eval(Container.DataItem,"StoryName") %>
                            </td>
                            <td class=" ">
                                <%# DataBinder.Eval(Container.DataItem,"StoryPoints") %>
                            </td>
                            <td class=" ">
                                <%# DataBinder.Eval(Container.DataItem,"Description") %>
                            </td>
                            <td class=" ">
                                <%# DataBinder.Eval(Container.DataItem,"MainStory") %>
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
                                  

 <asp:Button ID="Button1" runat="server" Text="Add Story To Backlog" onclick="AddNewStory" class="btn btn-primary">  </asp:Button>

</div>
</div>
 </div>
 </div>
 </div>

 
        <!-- /page content -->

    
    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="js/custom.js"></script>
  
</asp:Content>