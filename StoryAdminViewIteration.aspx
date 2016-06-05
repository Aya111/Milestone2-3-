<%@ Page Title="" Language="C#" MasterPageFile="~/TaskAdminMaster.master" AutoEventWireup="true" CodeFile="StoryAdminViewIteration.aspx.cs" Inherits="StoryAdminViewIteration" %>

  
  <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Iteraton  data <small></small></h2>
                    
                    <div class="clearfix"></div>
                  </div>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <div id="demo-form2" class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">The Data About Iteration In this Project<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                         <%--<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="choiceProject" DataTextField="Name" DataValueField="ID"   class="form-control col-md-7 col-xs-12" style = ""
></asp:DropDownList>
                                                        <asp:SqlDataSource ID="choiceProject" runat="server" ConnectionString="<%$ ConnectionStrings:AgilyToolConnectionString %>" SelectCommand="SELECT [Name], [ID] FROM [Project]"></asp:SqlDataSource>
--%>

                        </div>
                          <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                      </div>
                      <div class="form-group">
                        

      
      </div>
                  </div>
                </div>
              </div>
            </div>


    <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Iteration and Story</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                  <div class="form-horizontal form-label-left">

                      <div class="form-group">
                  

        
                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1003px" CellPadding="4" ForeColor="#333333" GridLines="None" Height="93px">
                              <AlternatingRowStyle BackColor="White" />
                              <Columns>
                                  <asp:BoundField DataField="ProjectID" HeaderText="ProjectID" SortExpression="ProjectID" />
                                  <asp:BoundField DataField="Iteration_Name" HeaderText="Iteration_Name" SortExpression="Iteration_Name" />
                                  <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                                  <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                                  <asp:BoundField DataField="Story_Name" HeaderText="Story_Name" SortExpression="Story_Name" />
                                  <asp:BoundField DataField="Points" HeaderText="Points" SortExpression="Points" />
                                  <asp:BoundField DataField="MainStory" HeaderText="MainStory" SortExpression="MainStory" />
                                  <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                              </Columns>
                              <EditRowStyle BackColor="#7C6F57" />
                              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                              <RowStyle BackColor="#E3EAEB" />
                              <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                              <SortedAscendingCellStyle BackColor="#F8FAFA" />
                              <SortedAscendingHeaderStyle BackColor="#246B61" />
                              <SortedDescendingCellStyle BackColor="#D4DFE1" />
                              <SortedDescendingHeaderStyle BackColor="#15524A" />
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AgilyToolConnectionString %>" SelectCommand="sELECT  st.ProjectID,  Iter.Name  as  Iteration_Name,Iter.StartDate,Iter.EndDate ,St.Name as Story_Name,St.Points,St.MainStory,St.Description 
FROM Iteration as Iter ,Story as st,Story_Iteration as st_iter
where 
Iter.ID =st_iter.IterationID and st.ID = st_iter.StoryID  and st.ProjectID=@id">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="Label1" Name="id" PropertyName="Text" />
                              </SelectParameters>
                          </asp:SqlDataSource>
        </div>



                      </div>
                     
                     
                     
                    
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                         <asp:Button ID="Button1" runat="server" Text="Edit Iteration" class="btn btn-primary" style="display: inline-block;padding: 2px 8px;" />
                        

                        </div>
                      </div>

                   </div>
                    
                      
                  </div>
                </div>
              </div>
          

                 <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12" style="left: 47px; top: -3px">
                <div class="x_panel" style="left: 0px; top: 318px">
                  <div class="x_title">
                    <h2>Iteradton and story </h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                  <div class="form-horizontal form-label-left">

                      <div class="form-group">
                         
                         


                       
                       <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">

                        </div>
                      </div>
                  </div>
                </div>
              </div>
            </div>

     </div>
     </div>
    </asp:Content>

   


   
