<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="AddMember.aspx.cs" Inherits="AddMember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <div id="demo-form2"  class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name"> Select Member <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                         
                        <asp:DropDownList ID="DropDownList1" runat="server"  class="form-control col-md-7 col-xs-12"></asp:DropDownList>
                        </div>
                      </div>
                     
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button type="submit" ></button>
                            <asp:Button ID="Button2" runat="server" Text="Submit" class="btn btn-success" OnClick="ViewProject"/>
                            <asp:Button ID="Button1" runat="server" Text="Cancel" class="btn btn-primary" OnClick="Cancel"/>
                            
                          <button type="submit" ></button>
                        </div>
                      </div>

                    </div>
                

</asp:Content>

