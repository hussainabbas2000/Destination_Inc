<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addHotel.aspx.cs" Inherits="WebApplication5.addHotel" %>
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
					<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Add a New Hotel</h2></div>
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>	
				</div>				
			</div>
			<div class="row">
				<!-- contact form -->
                    <form >
					<div class="col-lg-6 col-md-6 tm-contact-form-input">
						<div class="form-group">
							<asp:TextBox ID="res_name" placeholder="Hotel Name" cssclass="form-control" runat="server" required="required"></asp:TextBox>
						</div>
						<div class="form-group">
							<asp:TextBox ID="contact" placeholder="Contact Number" cssclass="form-control"  runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
						  <asp:DropDownList ID="Selected_City" cssClass="form-control" runat="server">
                                            
                                            </asp:DropDownList>	
						</div>
						<div class="form-group">
							<asp:button text="Submit Now" OnClick="btAddHotel_click" cssclass="tm-submit-btn" runat="server" />
						</div>
						<div class="form-group" style="text-align:center">
             <asp:Label ID="sm" runat="server" Text="New Hotel Added Succesfuly." ForeColor="#33cc33" ></asp:Label>
        </div>
					</div>
				</form>
			</div>			
		</div>
	</section>
	</section>
</asp:Content>
