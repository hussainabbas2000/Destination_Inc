<%@ Page Title="Destination Inc.-Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication5.Login" %>
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
					<p class="tm-banner-subtitle">Log In to access the Destination Inc. user portal</p>
                    <p class=" gray-text" style="font-size:20px">Dont have an account? <a style="color:gold" href="usersignup.aspx" >Sign Up</a></p>	
				</div>
		      <img src="img/banner-7.jpg" />
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
			      <%--<img src="img/about-1.jpg" alt="image" />--%>
			      <div class="flex-caption" style=" padding-left:320px; padding-top:100px">
					  <div class="container" >
                          <form>
      <div class="row" style="">
         <div class="col-md-6 mx-auto" style="min-height:100%;padding-bottom:150px;width:40%;">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col" style="text-align:center">
                        <center>
                           <h3>Member Login</h3>
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
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID" required="required"></asp:TextBox>
                        </div>
                        <label>Password</label>
                        <div class="form-group" style="text-align:center">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" required="required"></asp:TextBox>
                        </div>
                        <div class="form-group" style="text-align:center">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="LoginButton_click"></asp:Button>
<%--                             <a href="User-Profile.aspx"><input class="btn btn-success btn-block btn-lg" id="LoginButton" type="button" value="Log In" /></a>--%>
                        </div>
                         <label>Or</label>
                        <div class="form-group" style="text-align:center">
                           <a href="usersignup.aspx"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign Up" /></a>
                        </div>
                         <div class="form-group" style="text-align:center">
<%--                           <a href="usersignup.aspx"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign Up" /></a>--%>
                             <asp:Label ID="LoginErrorMessage" runat="server" Text="Incorrect Credentials" ForeColor="Red" ></asp:Label>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="index.aspx"><< Back to Home</a> <a href="AdminLogin.aspx" style="padding-left:241px">Admin Login</a><br><br>
         </div>
      </div>
                              </form>
   </div>
			      	<%--<h2 class="slider-title">Welcome To Destination Inc.</h2>
			      	<h3 class="slider-subtitle">The best travel advisors in town.</h3>
			      	<p class="slider-description">As exciting as the idea of a holiday sounds, as inconvenient, it can be for a person who has not planned it carefully. Well, worry no more as Destination Inc. is here to help you plan your dream holiday. Be it an extended weekend, a long-awaited family outing, or just a one-day quick tour, our company will provide you with all the assistance you need. From the mighty mountains of Karakoram, peaceful plateaus of Punjab, magnificent landscapes of Balochistan, unexplored beaches of Sindh, to busy streets of Lahore and Karachi, just give us the dates and your desired destination and we will plan it for you.
						Destination Inc. provides all the booking and ticketing details at the comfort of your home. Not only that but also the company shows the major tourist attractions along the way. We also save the traveling history of our users to give amazing discounts to the globetrotters. So go pack your bags and leave the rest to us!
						.</p>
			      	<div class="slider-social">
			      		<a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
			      		<a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
			      		<a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
			      		<a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
			      	</div>--%>
			      </div>			      
			    </li>
			  </ul>
			</div>
		</div>
	</section>	



</asp:Content>
