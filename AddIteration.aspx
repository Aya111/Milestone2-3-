<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="AddIteration.aspx.cs" Inherits="AddIteration" %>

<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>--%>






<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">


   

    <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Iteration</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                  <div class="form-horizontal form-label-left">
                       <div class="ln_solid">
                         
                      </div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          
                    <br />
                    <div id="demo-form2" class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Iteration Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                         
                            <asp:TextBox ID="TextBox1" runat="server" required="required"></asp:TextBox>
                                
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Start Date <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12 required">
                            <%--<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>--%>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="17px" Width="21px" ImageUrl="~/images/event_default_1.png" OnClick="ImageButton1_Click1" />

<%--                            <asp:ImageButton ID="ImageButton1" runat="server" Height="17px" Width="21px" ImageUrl="~/images/event_default_1.png" OnClick="ImageButton1_Click1"  />--%>
<%--                          <asp:Calendar ID="Calendar1" runat="server"  onselectionchanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>--%>
                            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">End Date</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="17" Width="21" ImageUrl="~/images/event_default_2- Copy.png" OnClick="ImageButton2_Click" />
                            <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False"></asp:Calendar>
                            
                         
                        </div>
                      </div>
                     
                      
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        
                          
                        </div>
                      </div>

                    </div>
                  </div>
		


    <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Stories:</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                  <div class="form-horizontal form-label-left">
                       <div class="ln_solid">
                         
                      </div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                           <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="172px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ID" ></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AgilyToolConnectionString %>" SelectCommand="SELECT [ID], [Name] FROM [Story] WHERE ([ProjectID] = @ProjectID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Label1" Name="ProjectID" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            

                           <asp:Button ID="Button3" runat="server" Text="Add Story" type="Add_STory" class="btn btn-primary" OnClick="AddStory" Height="32px" Width="97px" />


                            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>

                            <br />
                            
                            <br />
                            <br />
                            <br />
                        </div>
                      </div>
</div>
                   </div>
                       <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Submit" class="btn btn-success" OnClick="submit" />
                            
                        <asp:Button ID="Button1" runat="server" Text="Cancal" type="submit" class="btn btn-primary" OnClick="Cancel"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                      </div>
                  </div>
                </div>
              </div>
        	
  
</div>
                      </div>
                      </div>
                    </div>
                  </div>
                </div>
           

</asp:Content>

