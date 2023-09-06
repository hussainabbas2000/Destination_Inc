<%@ Page Title="Destination Inc.-Profile" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="User-Profile.aspx.cs" Inherits="WebApplication5.User_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                      <div class="col" style="text-align:center">
                         <center>
                           <img src="img/unknown.jpg"/>
                             </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Profile</h4>
                           <span>Account Status - </span>
                           <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your status"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="03xx-xxxxxxx" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="johndoe@xyz.com" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                     <%--<div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>--%>
                  </div>
                  <div class="row">
                     
                     <div class="col-md-4">
                        <label>CNIC</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="CNIC"></asp:TextBox>
                        </div>
                     </div>
                      
                    <%-- <div class="col-md-4">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>--%>
                  </div>
               
                 

                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                               <a href="review.aspx"> 
                                   <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" OnClick="load" runat="server" Text="Write a review" />                                   

                               </a>
                               <br />
                               <br />
                               <br />
                               <asp:Button CssClass="tm-yellow-btn" Font-Size="X-Large" ID="logout" Text="Log Out" OnClick="set" runat="server" />                     
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a href="index.aspx"><< Back to Home</a><br><br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                    <div class="col" style="text-align:center">
                         <center>
                           <img src="img/tourplane.jpeg"/>
                             </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Tour History</h4>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Tours"></asp:Label>
                        </center>
                     </div>
                  </div>
                 <%-- <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>--%>
                  <div class="row">
                    <br />
                    <br />
                    <asp:panel HorizontalAlign="Center" runat="server">
                    <asp:label Font-Size="X-Large" Text="Lets go around the world!" runat="server"></asp:label><br />
                     <br />
                     <a href="booking.aspx" role="button" class="btn-warning btn-lg" ><b>Book a new trip</b></a>
                        <br/>
                        <br />
                         <br/>
                        <asp:Label  Font-Size="X-Large" Text="My Trips" runat="server"></asp:Label>
                        <br />
                         <br/>
                        <br />
                            <asp:GridView ID="grid" RowStyle-HorizontalAlign="Right" CssClass="table-condensed table-hover" runat="server"></asp:GridView>
                    </asp:panel> 
                      
                          

                      
                      
                   </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
