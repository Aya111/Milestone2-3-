<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>


<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

       
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <h1 style="text-decoration:underline">Dashboard</h1>

                    </div>
                    <div class="row" style="height:200px">
                        <div class="col-md-3 col-sm-3 col-xs-3 chart_main">
                            <div class="charts">
                                <b class="chartslinks">Projects</b>
                            </div>
                            <h4>300</h4>
                            <span class="text-muted">Now  there  is   300 project this year<br />  using our  agilo Tool</span>
                        </div>

                        <div class="col-md-3 col-sm-3 col-xs-3  chart_main">
                            <div class="charts">
                                <b class="chartslinks">USERS</b>
                            </div> <h4>6000</h4>
                            <span class="text-muted">Every  day  there  is  about 20   user  use Agilo</span>

                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 chart_main">
                            <div class="charts">
                                <b class="chartslinks">VISITORS</b>
                            </div><h4>70000</h4>
                            <span class="text-muted">there  is  about 70000  visitors  visit our site </span>

                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-3 chart_main">
                            <div class="charts">
                                <b class="chartslinks">LIKES</b>
                            </div><h4>50000</h4>
                            <span class="text-muted">
                                <span class="text-muted">there  is  about 50000  visitors  visit our site </span>
                            </span>
                        </div>
                    </div>


                </div>

                <h2>Projects Data </h2>
                <hr>

                <div class="table-responsive">
                    <table class="table table-striped">

                        <tr class="row">
                            <th class="col-md-2 col-xs-2 col-sm-2">#</th>
                            <th class="col-md-2 col-xs-2 col-sm-2"> project Name</th>
                            <th class="col-md-2 col-xs-2 col-sm-2">Manger</th>
                            <th class="col-md-2 col-xs-2 col-sm-2"> NO of Member</th>
                            <th class="col-md-2 col-xs-2 col-sm-2">Start Date</th>
                            <th class="col-md-2 col-xs-2 col-sm-2">End Date</th>
                        </tr>

                        <tbody>
                            <tr class="row gray">
                                <td>1</td>
                                <td>Agile Tool</td>
                                <td>Walaa</td>
                                <td>5</td>
                                <td>20/5/2016</td>
                                <td>15/6/2016</td>

                            </tr>
                            <tr class="row Aqua">
                                <td>2</td>
                                <td>To Do List</td>
                                <td>Zeinb</td>
                                <td>5</td>
                                <td>20/5/2016</td>
                                <td>15/6/2016</td>

                            </tr>
                            <tr class="row gray">
                                <td>3</td>
                                <td>Restaurant</td>
                                <td>Ahmed</td>
                                <td>5</td>
                                <td>20/5/2016</td>
                                <td>15/6/2016</td>

                            </tr>
                            <tr class="row Aqua">
                                <td>4</td>
                                <td>Web Parser</td>
                                <td>Eman</td>
                                <td>5</td>
                                <td>20/5/2016</td>
                                <td>15/6/2016</td>
                            </tr>
                            <tr class="row gray">
                                <td>5</td>
                                <td>Online Hyper Market</td>
                                <td>Asmaa</td>
                                <td>5</td>
                                <td>20/5/2016</td>
                                <td>15/6/2016</td>
                            </tr>

                            <tr class="row Aqua">
                                <td>6</td>
                                <td>Agile Tool</td>
                                <td>Walaa</td>
                                <td>5</td>
                                <td>20/5/2016</td>
                                <td>15/6/2016</td>

                            </tr>
                            <tr class="row gray">
                                <td>7</td>
                                <td>To Do List</td>
                                <td>Zeinb</td>
                                <td>5</td>
                                <td>20/5/2016</td>
                                <td>15/6/2016</td>

                            </tr>
                            <tr class="row Aqua">
                                <td>8</td>
                                <td>Restaurant</td>
                                <td>Ahmed</td>
                                <td>5</td>
                                <td>20/5/2016</td>
                                <td>15/6/2016</td>

                            </tr>
                            <tr class="row gray">
                                <td>9</td>
                                <td>Web Parser</td>
                                <td>Eman</td>
                                <td>5</td>
                                <td>20/5/2016</td>
                                <td>15/6/2016</td>
                            </tr>
                            <tr class="row Aqua">
                                <td>10</td>
                                <td>Online Hyper Market</td>
                                <td>Asmaa</td>
                                <td>5</td>
                                <td>20/5/2016</td>
                                <td>15/6/2016</td>
                            </tr>





                        </tbody>
                    </table>
                </div>
          
</asp:Content>



