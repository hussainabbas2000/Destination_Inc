<%@ Page Title="Destination Inc.-Tours" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="tours.aspx.cs" Inherits="WebApplication5.tours" %>
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
					<h1 class="tm-banner-title">Find <span class="tm-yellow-text">Tour</span> Programs</h1>
					<p class="tm-banner-subtitle">For Your Destinations</p>
					<a href="#more" class="tm-banner-link">Learn More</a>	
				</div>
		      <img src="img/banner-2.jpg" />
		    </li>
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title">Plan <span class="tm-yellow-text">Your Own</span> Trip</h1>
					<p class="tm-banner-subtitle">Wonderful Destinations</p>
					<a href="#more" class="tm-banner-link">Learn More</a>	
				</div>
		      <img src="img/banner-3.jpg" />
		    </li>
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title">Lifetime <span class="tm-yellow-text">Experience</span> </h1>
					<p class="tm-banner-subtitle">Bookings Open</p>
					<a href="#more" class="tm-banner-link">Learn More</a>	
				</div>
		      <img src="img/banner-1.jpg" />
		    </li>
		  </ul>
		</div>			
	</section>

	<!-- gray bg -->	
	<section class="container tm-home-section-1" id="more" runat="server">
		<div class="row">

			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="tm-home-box-1 tm-home-box-1-2 tm-home-box-1-center">
					<img src="img/index-01.jpg" alt="image" class="img-responsive">
						
						<div class="tm-green-gradient-bg tm-city-price-container">
							<div >
							<asp:Button  ID="b1" cssclass="tm-yellow-btn" OnClick="LoadAttributesb1" Text="Islamabad" runat="server"  />						
							<%--<asp:Button  ID="b1"  OnClick="LoadAttributesb1" Text="Islamabad" runat="server"  />--%>							
						</div>	
</div>
						
				</div>				
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="tm-home-box-1 tm-home-box-1-2 tm-home-box-1-right">
					<img src="img/index-111.jpg" alt="image" class="img-responsive">
					
						<div class="tm-green-gradient-bg tm-city-price-container">
							<asp:Button  CssClass="tm-yellow-btn" ID="b2"  OnClick="LoadAttributesb2" Text="Karachi" runat="server"  />
						</div>	
										
				</div>				
			</div>
		<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="tm-home-box-1 tm-home-box-1-2 tm-home-box-1-right">
					<img src="img/index-02.jpg" alt="image" class="img-responsive">
					
						<div class="tm-green-gradient-bg tm-city-price-container">
							<asp:Button  CssClass="tm-yellow-btn" ID="Button1"  OnClick="LoadAttributesb0" Text="Lahore" runat="server"  />
						</div>	
										
				</div>				
			</div>
		</div>
	
		<div class="section-margin-top">
			<div class="row">				
				<div class="tm-section-header">
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">Our Tours</h2></div>
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>	
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="tm-tours-box-1">
						<img src="img/tours-03.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-1-info">
							<div class="tm-tours-box-1-info-left">
								<p class="text-uppercase margin-bottom-20">Weekend Trip to Neelam Valley</p>	
								<p class="gray-text">28 March 2084</p>
							</div>
							<div class="tm-tours-box-1-info-right">
								<p class="gray-text tours-1-description">Neelum is one of the most beautiful valleys of Azaad Kashmir.</p>	
							</div>							
						</div>
						<div class="tm-tours-box-1-link">
							<div class="tm-tours-box-1-link-left">
								Duration: 3 days
							</div>
							<asp:Button  ID="b3" CssClass="tm-yellow-btn" OnClick="LoadAttributesb3" Text="Neelam Valley" runat="server"  />						
						</div>
					</div>					
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="tm-tours-box-1">
						<img src="img/tours-04.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-1-info">
							<div class="tm-tours-box-1-info-left">
								<p class="text-uppercase margin-bottom-20">Weekend Trip to Swat, Kalam & Malam Jabba</p>	
								<p class="gray-text">26 March 2084</p>
							</div>
							<div class="tm-tours-box-1-info-right">
								<p class="gray-text tours-1-description">Malam Jabba is a gorgeous hill station around 40 km from Saidu Sharif.</p>	
							</div>							
						</div>
						<div class="tm-tours-box-1-link">
							<div class="tm-tours-box-1-link-left">
								Duration: 4 days
							</div>
							<asp:Button  ID="b4" CssClass="tm-yellow-btn" OnClick="LoadAttributesb4" Text="Swat" runat="server"  />						
						</div>
					</div>					
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="tm-tours-box-1">
						<img src="img/tours-05.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-1-info">
							<div class="tm-tours-box-1-info-left">
								<p class="text-uppercase margin-bottom-20">Trip to Hunza Nagar and Naltar</p>	
								<p class="gray-text">24 March 2084</p>
							</div>
							<div class="tm-tours-box-1-info-right">
								<p class="gray-text tours-1-description">Hunza is a mountainous valley in the Gilgit–Baltistan region of Pakistan. </p>	
							</div>							
						</div>
						<div class="tm-tours-box-1-link">
							<div class="tm-tours-box-1-link-left">
								Duration: 6 days
							</div>
							<asp:Button  ID="b5" CssClass="tm-yellow-btn" OnClick="LoadAttributesb5" Text="Hunza" runat="server"  />						
						</div>
					</div>					
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="tm-tours-box-1">
						<img src="img/tours-06.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-1-info">
							<div class="tm-tours-box-1-info-left">
								<p class="text-uppercase margin-bottom-20">Blossom Trip to Hunza & Khunjerab</p>	
								<p class="gray-text">22 March 2084</p>
							</div>
							<div class="tm-tours-box-1-info-right">
								<p class="gray-text tours-1-description">One can enjoy the stunning views of gardens in Hunza fully covered in flowers.</p>	
							</div>							
						</div>
						<div class="tm-tours-box-1-link">
							<div class="tm-tours-box-1-link-left">
								Duration: 6 days
							</div>
							<asp:Button  ID="b6" CssClass="tm-yellow-btn" OnClick="LoadAttributesb6" Text="Khunjerab" runat="server"  />							
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
							<a class="btn-warning btn-lg" style="color:black" href="booking.aspx" role="button"><b>Book Now</b></a>
						</asp:Panel>
						
					</div>
				</div>
			</div>		
		</div>
	</section>		
	
	<!-- white bg -->
	<section class="tm-white-bg section-padding-bottom" runat="server">
		<div class="container">
			<div class="row">
				<div class="tm-section-header section-margin-top">
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Special Packages</h2></div>
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>	
				</div>				
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-tours-box-2">						
						<img src="img/index-03.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-2-info">
							<h3 class="margin-bottom-15">Multan The City of Saints</h3>
							<img src="img/rating.png" alt="image" class="margin-bottom-5">
							<p>28 March 2084</p>	
						</div>						
						<asp:Button  ID="b7" CssClass="tm-yellow-btn" OnClick="LoadAttributesb7" Text="Multan" runat="server"  />		
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-tours-box-2">						
						<img src="img/index-04.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-2-info">
							<h3 class="margin-bottom-15">Islamabad Capital City</h3>
							<img src="img/rating.png" alt="image" class="margin-bottom-5">
							<p>26 March 2084</p>	
						</div>						
						<asp:Button  ID="b8" CssClass="tm-yellow-btn" OnClick="LoadAttributesb8" Text="Islamabad" runat="server"  />		
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-tours-box-2">						
						<img src="img/index-05.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-2-info">
							<h3 class="margin-bottom-15">Gilgit Baltistan</h3>
							<img src="img/rating.png" alt="image" class="margin-bottom-5">
							<p>24 March 2084</p>	
						</div>						
						<asp:Button  ID="b9" CssClass="tm-yellow-btn" OnClick="LoadAttributesb9" Text="Gilgit Baltistan" runat="server"  />		
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-tours-box-2">						
						<img src="img/index-06.jpg" alt="image" class="img-responsive">
						<div class="tm-tours-box-2-info">
							<h3 class="margin-bottom-15">Lahore The City of Gardens</h3>
							<img src="img/rating.png" alt="image" class="margin-bottom-5">
							<p>22 March 2084</p>	
						</div>
						<asp:Button  ID="b10" CssClass="tm-yellow-btn" OnClick="LoadAttributesb10" Text="Lahore" runat="server"  />		
					</div>
				</div>

			</div>
			<div class="row">
				<div class="col-lg-12">
					<p class="home-description">Destination Inc. provides all the booking and ticketing details at the comfort of your home.
					</p>					
				</div>
			</div>	
		</div>
	</section>
	<section class="container tm-home-section-1" id="Section1" runat="server">
			<div class="row">				
				<div class="tm-section-header">
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">Or Plan Your Own Tour</h2></div>
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>	
				</div>
			</div>
				<div class="row">
					<div>
						<asp:Panel HorizontalAlign="Center"  runat="server">
							<a class="btn-warning btn-lg" style="color:black" href="booking.aspx" role="button"><b>Start Planning</b></a>
						</asp:Panel>
						
					</div>
				</div>
		</section>
</asp:Content>
