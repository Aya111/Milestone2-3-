<%@ Page Title="" Language="C#" MasterPageFile="~/FirstPageMaster.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="NewProject.aspx.cs" Inherits="NewProject" %>



<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">

    <div class="clearfix">

    </div>
                 
                  <div class="x_content">
                    <br />
                    <div id="demo-form2" class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Project Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:textbox runat="server" ID="txt1"></asp:textbox>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Start Date <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:textbox runat="server" ID="txt2"></asp:textbox>
                            <asp:imagebutton runat="server" ID="ImageButton1" Height="17px" Width="21px" ImageUrl="images/images (1).jpg" OnClick="ImageButton1_Click"></asp:imagebutton>
                            <asp:calendar runat="server"  ID="Calendar1" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="120px" NextPrevFormat="ShortMonth" Width="121px" Visible="False" OnSelectionChanged="cal1_SelectionChanged">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                                <DayStyle BackColor="#CCCCCC" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                                <TodayDayStyle BackColor="#999999" ForeColor="White" />
                            </asp:calendar>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">End Date</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:textbox runat="server" ID="txt3"></asp:textbox>
                            <asp:imagebutton runat="server" ID="ImageButton2" Height="17px" Width="21px" ImageUrl="images/images (1).jpg" OnClick="ImageButton2_Click" ></asp:imagebutton>
                            <asp:calendar runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="95px" NextPrevFormat="ShortMonth" Width="51px" Visible="False" ID="Calendar2" OnSelectionChanged="Calendar2_SelectionChanged1">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                                <DayStyle BackColor="#CCCCCC" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                                <TodayDayStyle BackColor="#999999" ForeColor="White" />
                            </asp:calendar>
                        </div>
                      </div>
                     
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Description
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <asp:textbox runat="server" ID="txt4"></asp:textbox>
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        
                            <asp:Button ID="btn1" runat="server" Text="Submit" class="btn btn-success" OnClick="btn1_Click" />
                            <asp:Button ID="btn2" runat="server" Text="Cancal" type="submit" class="btn btn-primary" OnClick="btn2_Click" />
                        
                        </div>
                      </div>

                    </div>
                  </div>
              

</asp:Content>

