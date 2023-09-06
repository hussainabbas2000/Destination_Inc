<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpage.aspx.cs" Inherits="WebApplication5.adminpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!-- Banner -->
	<section class="tm-banner">
		<!-- Flexslider -->
		<div class="flexslider flexslider-banner"  >
		  <ul class="slides">
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title"><span class="tm-yellow-text">Admin</span> Pannel</h1>
				</div>
		      <img style="height:400px" src="img/banner-9.jpg" />
		    </li>
		  </ul>
		</div>		
	</section>
		<section class="container tm-home-section-1" id="more" runat="server">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-6">
						<img style="height:200px; float:left; border-radius:50%;  border: 6px solid #555" src="img/avatar-3.jpg" />
				</div>
						<h2  class="slider-title" style="padding-top:80px; padding-left:50px">UserName:</h2><div style="padding-left:390px"><asp:textbox ID="one" runat="server"></asp:textbox></div>
						<h2  style=" padding-left:390px"><b>Password:</b>  </h2> <div style="padding-left:390px"> <asp:TextBox ID="two" runat="server"></asp:TextBox></div>
						<h2  style=" padding-left:390px"><b>Email ID:</b></h2> <div style="padding-left:390px"><asp:TextBox ID="o" runat="server"></asp:TextBox></div> 
						<h2  style=" padding-left:390px"><b>Phone No:</b> </h2><div style="padding-left:390px"><asp:TextBox ID="four" runat="server"></asp:TextBox></div>
						
			</div>
				<div class="section-margin-top">
			<div class="row">				
				<div class="tm-section-header">
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">Admin Actions</h2></div>
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>	
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="tm-tours-box-1">
						<img src="img/addres.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-1-link">
							<div class="tm-tours-box-1-link-left">
								To Add a New Restuarant
							</div>
							<a href="AddRes.aspx" class="tm-tours-box-1-link-right">
								Click							
							</a>							
						</div>
					</div>					
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="tm-tours-box-1">
						<img src="img/addloc.jpg" alt="image" class="img-responsive">
			
						<div class="tm-tours-box-1-link">
							<div class="tm-tours-box-1-link-left">
								To Add a New Location
							</div>
							<a href="NewLocation.aspx" class="tm-tours-box-1-link-right">
								Click							
							</a>							
						</div>
					</div>					
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="tm-tours-box-1">
						<img src="img/addtour.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-1-link">
							<div class="tm-tours-box-1-link-left">
								To Add a New Tour
							</div>
							<a href="newTour.aspx" class="tm-tours-box-1-link-right">
								Click
							</a>							
						</div>
					</div>					
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="tm-tours-box-1">
						<img src="img/addhotel.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-1-link">
							<div class="tm-tours-box-1-link-left">
								To Add a New Hotel
							</div>
							<a href="addHotel.aspx" class="tm-tours-box-1-link-right">
								Click								
							</a>							
						</div>
					</div>					
				</div>

				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="tm-tours-box-1">
						<img src="img/addguide.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-1-link">
							<div class="tm-tours-box-1-link-left">
								To Add a New Tour Guide
							</div>
							<a href="newGuide.aspx" class="tm-tours-box-1-link-right">
								Click							
							</a>							
						</div>
					</div>					
				</div>
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="tm-tours-box-1">
						<img src="img/manageuser.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-1-link">
							<div class="tm-tours-box-1-link-left">
								To Add Manage Users
							</div>
							<a href="ManageUsers.aspx" class="tm-tours-box-1-link-right">
								Click							
							</a>							
						</div>
					</div>					
				</div>
				<br />
				<br />
				<br />
				<br />
				<div class="row">
					<div>
						<asp:Panel HorizontalAlign="Center"  runat="server">
							<a class="btn-warning btn-lg" style="color:black" href="Login.aspx" role="button"><b>Log Out</b></a>
						</asp:Panel>
						
					</div>
				</div>
			</div>		
		</div>
			</section>

</asp:Content>
