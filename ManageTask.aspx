<%@ Page Title="" Language="C#" MasterPageFile="~/FirstPageMaster.master" AutoEventWireup="true" CodeFile="ManageTask.aspx.cs" Inherits="ManageTask"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server" >
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    		<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
		<link rel="css/stylesheet" href="jquery-ui.min.css">
    <%--<script>
			$(function(){
				$("#id").click(function(){
				    $(".demo").dialog({
				        //modal: true,
				        buttons: {
				            'Ok': function () {
				                $("#div1").text('Hi' + $('#un').val());
				               
				            }
				        }
				    });
                })
			});
		
		
		</script>--%>
    <style>

        .lbl_titlestyle 
        {
            
            margin-top:15px;
            margin-bottom:15px;
            font-size:40px;
            font-weight:700;
            color:firebrick;
            font-style:italic;
            text-decoration: underline;
            display:block;



        }
    .c  {
           /*background-color :#9CBED8;
           border :1px ridge gray;
           text-align:left ;
           padding:30px;
            margin-top:25px;
            margin-left:25px;*/
            
      }
      
        
        .labelstyle 
        {
            margin-left:40px;
            margin-right:10px;
            font-size:20px;
            color:black;
        }
        .textboxstyle
         {
                text-align :center ;
              margin-right:100px;
             font-size:15px;
             color:black;
        
         }
        .textboxstyle_d 
        {
              text-align :left ;
              margin-right:100px;
             font-size:15px;
             color:black;
             background-color:#9CBEc6;
             Width : 800px;
             Height :40px;
        }
        .ddl_style
         {
              text-align :center ;
              margin-right:600px;
             font-size:15px;
             color:black;
        }
      
          .btnstyle
        {
            background-color:firebrick;
            margin-right:20px;
              font-size : xx-large;
             color: black ;

        }

        .container
        {
            width :100%;
            height:100%;
            background-color:#dddddd;
            overflow:scroll;

        }

        .auto-style1 {
            width: 211px;
        }

        .pnl_AddTaskClass
        
        {
            width:950px;
           
          
             border: 1px gray double ;
             background-color:gainsboro;
             position:fixed;
             top:160px;
             left:270px;
             z-index:1;
          
        
        }

        .auto-style4
        
         {
            width: 257px;
         }
        td {
            padding:5px;
        }

    </style>
    <asp:Panel ID="Panel1" runat="server" >
     
          
           </asp:Panel>
      <asp:Panel ID="pnl_addTask" runat="server"  CssClass="pnl_AddTaskClass" Visible="False">
         
        <table style="width: 100%;">

            <tr>
                <td class="auto-style1" style="text-align:center" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Add New Task " cssclass="lbl_titlestyle" >

                    </asp:Label>

                </td>
                
          
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lbl_AddTTitle" runat="server" Text="Title" CssClass="labelstyle"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txt_AddTName" runat="server" Width="236px"></asp:TextBox>

                </td>
          
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lbl_AddTDescreption" runat="server" Text="Descreption" CssClass="labelstyle"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txt_AddTDescreption" runat="server" Height="25px" Width="589px"></asp:TextBox>

                </td>
          
            </tr>
            <tr>
              <td class="auto-style4">
                    <asp:Label ID="lbl_AddTEstimatedTime" runat="server" Text="EstimatedTime" CssClass="labelstyle"></asp:Label></td>
                <td>
                   
                    <asp:TextBox ID="txt_AddTEstimatedTime" runat="server" Width="236px" Height="22px"></asp:TextBox>
                   
                  </td>
           
            </tr>
             <tr>
              <td class="auto-style4">
                    <asp:Label ID="lbl_AddTStatus" runat="server" Text="Status" CssClass="labelstyle" ></asp:Label></td>
                <td>
                    
                    <asp:DropDownList ID="ddl_AddTStatus" runat="server" Height="21px" Width="237px" ></asp:DropDownList>
                    <asp:CheckBoxList ID="clb_AddTask" runat="server" Width="149px">
                    </asp:CheckBoxList>
                </td>
           
            </tr>
             <tr>
              <td class="auto-style4">
                    <asp:Label ID="lbl_AddTDevelopers" runat="server" Text="Developers" CssClass ="labelstyle"></asp:Label>

              </td>
                <td>
                   
                    &nbsp;</td>
                 
            </tr>
            <tr>
              <td>
                  

             
                     <asp:Button ID="btn_AddTask" runat="server" Text="Add" BackColor ="#66ccff" CssClass="btnstyle" OnClick="btn_AddTask_Click"/>
                     <asp:Button ID="btn_btn_CncelAddingTask" runat="server" Text="Cancel" BackColor="#66ccff" CssClass="btnstyle" OnClick="btn_btn_CncelAddingTask_Click" /> 
             
                   </td>
                 
            </tr>
        </table>
  
        </asp:Panel>
 
       
         
       
     <%--  <button id="di">click here</button>
        <div class="demo">

            Welcome
            <input id="un" type="text"/><br>
			 <input id="pw" type="password"/><br>
			 <input type="checkbox"/>
        </div>
		
		<div id ="div1"> </div>--%>

    </asp:Content>


