<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="newTour.aspx.cs" Inherits="WebApplication5.newTour" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<!-- gray bg -->	
	<section class="container tm-home-section-1" id="more">
		<section class="section-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="tm-section-header section-margin-top">
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Add a New Tour</h2></div>
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>	
				</div>				
			</div>
			<div class="row">
				<!-- contact form -->
                    <form >
					<div class="col-lg-6 col-md-6 tm-contact-form-input">
						<div class="form-group">
							<asp:TextBox ID="tbox1" placeholder="Tour Name" cssclass="form-control"  runat="server" required="required"></asp:TextBox>
						</div>
						<div class="form-group">
							<asp:TextBox ID="tbox2" placeholder="Location Name" cssclass="form-control"  runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
							<%--<asp:DropDownList ID="type" CssClass="form-control" runat="server" >
								<asp:ListItem Selected="True" Text="Select Class" Value=""></asp:ListItem>
								<asp:ListItem Text="Business Class" Value="Business Class"></asp:ListItem>
								<asp:ListItem Text="Economic Class" Value="Economic Class"></asp:ListItem>
							</asp:DropDownList>--%>
							<asp:TextBox ID="datebox" CssClass="form-control" runat="server" placeholder="Enter Date"></asp:TextBox>
							
						</div>
						<div class="form-group">
							<asp:Label  CssClass="form-control" runat="server"><span style="color:darkred">Available Guides:</span></asp:Label>
							<asp:DropDownList ID="guideList" CssClass="form-control" runat="server">
								<asp:ListItem Selected="True" Text="Select Available Guide" Value=""></asp:ListItem>
							</asp:DropDownList>
						</div>
						<div class="form-group">
							<asp:TextBox ID="Vehicle" placeholder="Vehicle" cssclass="form-control"   runat="server"></asp:TextBox>
						</div> 

						<div class="form-group">
							<asp:button text="Submit Now" OnClick="InsertTour" cssclass="tm-submit-btn" runat="server" />
						</div>  
						<div class="form-group" style="text-align:center">
             <asp:Label ID="sm" runat="server" Text="New Location Added Succesfuly." ForeColor="#33cc33" ></asp:Label>
        </div>
					</div>
				</form>
			</div>			
		</div>
	</section>
	</section>
</asp:Content>
