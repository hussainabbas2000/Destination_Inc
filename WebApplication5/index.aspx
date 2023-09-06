<%@ Page Title="Destination Inc.-Home" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication5.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Banner -->
	<section class="tm-banner" runat="server">
		<!-- Flexslider -->
		<div class="flexslider flexslider-banner">
		  <ul class="slides">
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title">Find <span class="tm-yellow-text">The Best</span> Place</h1>
					<p class="tm-banner-subtitle">For Your Holidays</p>
					<a href="#more" class="tm-banner-link">Learn More</a>	
				</div>
				<img src="img/banner-1.jpg" alt="Image" />	
		    </li>
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title">5 <span class="tm-yellow-text">Star</span> Hotels</h1>
					<p class="tm-banner-subtitle">Wonderful Destinations</p>
					<a href="#more" class="tm-banner-link">Learn More</a>	
				</div>
		      <img src="img/banner-2.jpg" alt="Image" />
		    </li>
		    <li>
			    <div class="tm-banner-inner">
					<h1 class="tm-banner-title">Luxury <span class="tm-yellow-text">Transport</span> </h1>
					<p class="tm-banner-subtitle">Comfortable Rides</p>
					<a href="#more" class="tm-banner-link">Learn More</a>	
				</div>
		      <img src="img/banner-3.jpg" alt="Image" />
		    </li>
		  </ul>
		</div>	
	</section>

	<!-- gray bg -->	
	<section class="container tm-home-section-1" id="more">
		
<div style="text-align:center; background-color:AppWorkspace; font-family:Cambria, Cochin, Georgia, Times, Times New Roman, serif; font-size:medium; border-bottom-style:inset; border-block-width:thick; border-bottom-color:cadetblue";>
<h1 style="padding-top:25px; color:cadetblue">DESTINATION INC.</h1>
<p style="padding-bottom:15px; padding-top:15px;">Destination Inc. is one of Pakistan’s largest tour sellers and specialises in organising tours tailored to the specific interest, needs and requirements of every in – and outbound client. The Destination Inc. head office is located in Karachi, with branches in Islamabad as well as Lahore, and together we have more than 60 employees, who ensure that a wide range of services are made available to all of our customers.</p>
</div>
			
	
		<div class="section-margin-top">
			<div class="row">				
				<div class="tm-section-header">
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-6 col-md-6 col-sm-6"><h2 class="tm-section-title">Famous Tours</h2></div>
					<div class="col-lg-3 col-md-3 col-sm-3"><hr></div>	
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-home-box-2">						
						<img src="img/index-03.jpg" alt="image" class="img-responsive">
						<h3>Pakistan travel: things to know before you go</h3>
						<p class="tm-date">28 March 2016</p>
						<div class="tm-home-box-2-container">
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<asp:Button  ID="b3" CssClass="tm-yellow-btn" OnClick="LoadAttributesb3" Text="Neelam Valley" runat="server"  />		
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-home-box-2">						
					    <img src="img/index-04.jpg" alt="image" class="img-responsive">
						<h3>One Month Travel Itinerary For Pakistan</h3>
						<p class="tm-date">26 March 2016</p>
						<div class="tm-home-box-2-container">
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<asp:Button  ID="b4" CssClass="tm-yellow-btn" OnClick="LoadAttributesb4" Text="Swat" runat="server"  />	
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-home-box-2">						
					    <img src="img/index-05.jpg" alt="image" class="img-responsive">
						<h3>Complete Travel Guide: Gilgit</h3>
						<p class="tm-date">24 March 2016</p>
						<div class="tm-home-box-2-container">
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<asp:Button  ID="b5" CssClass="tm-yellow-btn" OnClick="LoadAttributesb5" Text="Gilgit" runat="server"  />	
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
					<div class="tm-home-box-2 tm-home-box-2-right">						
					    <img src="img/index-06.jpg" alt="image" class="img-responsive">
						<h3>Beautiful and Vibrant Colors of Lahore</h3>
						<p class="tm-date">22 March 2016</p>
						<div class="tm-home-box-2-container">
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<asp:Button  ID="b6" CssClass="tm-yellow-btn" OnClick="LoadAttributesb6" Text="Lahore" runat="server"  />
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<p class="home-description">Destination Inc. management philosophy is based on the simple concept of delivering the highest quality customer services at the best possible price. Today we serve an ever growing number of clients, travel agents and tour operators around the world. All of our partners remain exceedingly happy with our services, especially by the number of value added services we have on offer.</p>					
				</div>
			</div>			
		</div>
		
				
	</section>		
	
	<!-- white bg -->
	<section class="tm-white-bg section-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="tm-section-header section-margin-top">
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Popular Packages</h2></div>
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>	
				</div>
				<div class="col-lg-6">
					<div class="tm-home-box-3">
						<div class="tm-home-box-3-img-container">
							<img src="img/index-07.jpg" alt="image" class="img-responsive">	
						</div>						
						<div class="tm-home-box-3-info">
							<p class="tm-home-box-3-description">Hunza is most beautiful sightseeing tour in 6 days you can visit most peoplur areas and lush greens valleys waiting for you.</p>
					        <div class="tm-home-box-2-container">
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<asp:Button  ID="b7" CssClass="tm-yellow-btn" OnClick="LoadAttributesb7" Text="Hunza" runat="server"  />		
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
						</div>						
					</div>					
			     </div>
			     <div class="col-lg-6">
			        <div class="tm-home-box-3">
						<div class="tm-home-box-3-img-container">
							<img src="img/index-08.jpg" alt="image" class="img-responsive">	
						</div>						
						<div class="tm-home-box-3-info">
							<p class="tm-home-box-3-description">Charna Island unanimously agreed that it is an ideal diving spot. The country’s second-largest island has become a paradise. </p>
					        <div class="tm-home-box-2-container">
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<asp:Button  ID="b8" CssClass="tm-yellow-btn" OnClick="LoadAttributesb8" Text="Charna Island" runat="server"  />
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
						</div>						
					</div>
				</div>
				<div class="col-lg-6">
				    <div class="tm-home-box-3">
						<div class="tm-home-box-3-img-container">
							<img src="img/index-09.jpg" alt="image" class="img-responsive">	
						</div>						
						<div class="tm-home-box-3-info">
							<p class="tm-home-box-3-description">Rakaposhi Expedition gives spectacular View of Karakoram Peaks. One of the world’s top Climbing Adventure.</p>
					        <div class="tm-home-box-2-container">
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<asp:Button  ID="b9" CssClass="tm-yellow-btn" OnClick="LoadAttributesb9" Text="Rakaposhi" runat="server"  />
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
						</div>						
					</div>
			    </div>
			    <div class="col-lg-6">
			        <div class="tm-home-box-3">
						<div class="tm-home-box-3-img-container">
							<img src="img/index-10.jpg" alt="image" class="img-responsive">	
						</div>						
						<div class="tm-home-box-3-info">
							<p class="tm-home-box-3-description">Spectacular mountain vistas of Karakoram Mountains.Spectacular Views of K2, Nanga Parbat and other peaks from the Flight to Skardu.</p>
					        <div class="tm-home-box-2-container">
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-heart tm-home-box-2-icon border-right"></i></a>
							<asp:Button  ID="b10" CssClass="tm-yellow-btn" OnClick="LoadAttributesb10" Text="Skardu" runat="server"  />		
							<a href="#more" class="tm-home-box-2-link"><i class="fa fa-edit tm-home-box-2-icon border-left"></i></a>
						</div>
						</div>						
					</div>
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
