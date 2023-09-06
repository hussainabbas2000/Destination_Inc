<%@ Page Title="Destination Inc.-Contact" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication5.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- Banner -->
	<section class="tm-banner" runat="server">
		<!-- Flexslider -->
		<div class="flexslider flexslider-banner" runat="server">
		  <ul class="slides">
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title">Your <span class="tm-yellow-text">Special</span> Tour</h1>
					<p class="tm-banner-subtitle">For Upcoming Holidays</p>
					<a href="#more" class="tm-banner-link">Contact Us</a>	
				</div>
				<img src="img/banner-3.jpg" alt="Banner 3" />	
		    </li>		    
		  </ul>
		</div>	
	</section>

	<!-- gray bg -->	
	<section class="container tm-home-section-1" id="more">
		<div class="row">
			<!-- slider -->
			<div class="flexslider effect2 effect2-contact tm-contact-box-1">
				<ul class="slides">
					<li>
						<img src="img/world-map.png" alt="image" class="contact-image" />
						<div class="contact-text">
							<h2 class="slider-title">Destination Inc.</h2>
							<h3 class="slider-subtitle"></h3>
							<p class="slider-description">Destination Inc. is here to help you plan your dream holiday. Be it an extended weekend, a long-awaited family outing, or just a one-day quick tour, our company will provide you with all the assistance you need.  <br><br>
								Destination Inc. provides all the booking and ticketing details at the comfort of your home. Not only that but also the company shows the major tourist attractions along the way</p>
							<div class="slider-social">
								<a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
								<a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
								<a href="#" class="tm-social-icon"><i class="fa fa-pinterest"></i></a>
								<a href="#" class="tm-social-icon"><i class="fa fa-google-plus"></i></a>
							</div>
						</div>			      
					</li>
				</ul>
			</div>
		</div>
	</section>		
	
	<!-- white bg -->
	<section class="section-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="tm-section-header section-margin-top">
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Contact Us</h2></div>
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>	
				</div>				
			</div>
			<div class="row">
				<!-- contact form -->
				<form action="#" method="post" class="tm-contact-form">
					<div class="col-lg-6 col-md-6">
						<div id="google-map"></div>
						<div class="contact-social">
							<a href="#" class="tm-social-icon tm-social-facebook"><i class="fa fa-facebook"></i></a>
				      		<a href="#" class="tm-social-icon tm-social-dribbble"><i class="fa fa-dribbble"></i></a>
				      		<a href="#" class="tm-social-icon tm-social-twitter"><i class="fa fa-twitter"></i></a>
				      		<a href="#" class="tm-social-icon tm-social-instagram"><i class="fa fa-instagram"></i></a>
				      		<a href="#" class="tm-social-icon tm-social-google-plus"><i class="fa fa-google-plus"></i></a>
						</div>
					</div> 
                    </form>
                    <form>
					<div class="col-lg-6 col-md-6 tm-contact-form-input">
						<div class="form-group">
							<asp:TextBox ID="contact_name" placeholder="Name" cssclass="form-control"   runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
							<asp:TextBox ID="contact_email" placeholder="Email" cssclass="form-control"  runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
							<asp:TextBox ID="contact_subject" placeholder="Subject" cssclass="form-control"  runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
						<asp:TextBox ID="contact_message" placeholder="Message" cssclass="form-control" runat="server"></asp:TextBox>	
						</div>
						<div class="form-group">
							<asp:button text="Submit Now" cssclass="tm-submit-btn" runat="server" />
						</div>               
					</div>
				</form>
			</div>			
		</div>
	</section>

</asp:Content>
