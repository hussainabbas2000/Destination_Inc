<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication5.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!-- Banner -->
	<section class="tm-banner">
		<!-- Flexslider -->
		<div class="flexslider flexslider-banner">
		  <ul class="slides">
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title"><span class="tm-yellow-text">Welcome</span> Back</h1>
					<p class="tm-banner-subtitle">Log In to access the Destination Inc. Admin Pannel</p>
				</div>
		      <img style="height:500px" src="img/banner-9.jpg" />
		    </li>
		  </ul>
		</div>		
	</section>
    	<!-- gray bg -->	
	<section class="container tm-home-section-1" id="more">
		<div class="row">
			<!-- slider -->
			<div class="flexslider flexslider-about effect2" style="height:500px">
			  <ul class="slides">
			    <li>
			      <div class="flex-caption" style=" padding-left:320px; padding-top:100px">
					  <div class="container" >
      <div class="row" style="">
         <div class="col-md-6 mx-auto" style="min-height:100%;padding-bottom:150px;width:40%;">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col" style="text-align:center">
                        <center>
                           <h3>Admin Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col" style="text-align:center">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col" style="text-align:center">
                        <label>Username</label>
                        <div class="form-group" style="text-align:center">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID" required="required"></asp:TextBox>
                        </div>
                        <label>Password</label>
                        <div class="form-group" style="text-align:center">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group" style="text-align:center">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" OnClick="AdminLogin_Click" Text="Login" ></asp:Button>
<%--                             <a href="User-Profile.aspx"><input class="btn btn-success btn-block btn-lg" id="LoginButton" type="button" value="Log In" /></a>--%>
                        </div>
                         <div class="form-group" style="text-align:center">
<%--                           <a href="usersignup.aspx"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign Up" /></a>--%>
                             <asp:Label ID="LoginErrorMessage" runat="server" Text="Incorrect Credentials" ForeColor="Red" ></asp:Label>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
			      </div>			      
			    </li>
			  </ul>
			</div>
		</div>
	</section>	
</asp:Content>
