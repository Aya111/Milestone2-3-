<%@ Page Title="" Language="VB" MasterPageFile="~/IterationAdminMaster.master" AutoEventWireup="false" CodeFile="Edit_and_delete_iteratin.aspx.vb" Inherits="Edit_and_delete_iteratin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">


     <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Edit && Delete Iteration  <small></small></h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <div id="demo-form2" class="form-horizontal form-label-left">

                       </div>
                      </div>
                    </div>
                  </div>
         </div>
                     <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" GridLines="None" AllowPaging="True" AllowSorting="True" ForeColor="#333333" Height="400px"  Width="800px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
                            </asp:GridView>
                        
                           
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AgilyToolConnectionString %>" DeleteCommand="DELETE FROM [Iteration] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Iteration] ([Name], [StartDate], [EndDate]) VALUES (@Name, @StartDate, @EndDate)" SelectCommand="SELECT * FROM [Iteration]" UpdateCommand="UPDATE [Iteration] SET [Name] = @Name, [StartDate] = @StartDate, [EndDate] = @EndDate WHERE [ID] = @ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Name" Type="String" />
                                    <asp:Parameter Name="StartDate" Type="DateTime" />
                                    <asp:Parameter Name="EndDate" Type="DateTime" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Name" Type="String" />
                                    <asp:Parameter Name="StartDate" Type="DateTime" />
                                    <asp:Parameter Name="EndDate" Type="DateTime" />
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        
                           
                        </div>
                      </div>

                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        
                           <%-- <asp:Button ID="Button2" runat="server" Text="Submit" class="btn btn-success" onclick="Cancel"/>
                            <asp:Button ID="Button1" runat="server" Text="Button" type="submit" class="btn btn-primary" OnClick="ViewProject"/>
                        --%>
                        </div>
                      </div>

                    </div>
                  

     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

