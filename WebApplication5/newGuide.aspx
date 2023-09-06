<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="newGuide.aspx.cs" Inherits="WebApplication5.newGuide" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container tm-home-section-1" id="more">
		<section class="section-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="tm-section-header section-margin-top">
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Add a New Tour Guide</h2></div>
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>	
				</div>				
			</div>
			<div class="row">
				<!-- contact form -->
                    <form >
					<div class="col-lg-6 col-md-6 tm-contact-form-input">
						<div class="form-group">
							<asp:TextBox ID="name" placeholder=" Name" cssclass="form-control"  runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
							<asp:TextBox ID="email" placeholder=" Email" cssclass="form-control"  runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
						  <asp:DropDownList ID="Experience" cssClass="form-control" runat="server">
                                            <asp:ListItem text="--Experience--" Value="" Selected="True"></asp:ListItem>    
                                            <asp:ListItem Text="1 Year" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="2 Years" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="3 Years" Value="3"></asp:ListItem>
											<asp:ListItem Text="4 Years" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="5 Years" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="6+ Years" Value="6"></asp:ListItem>
   
                                            </asp:DropDownList>	
						</div>
						<div class="form-group">
							<asp:TextBox ID="phone" placeholder="Phone" cssclass="form-control"  runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
							<asp:TextBox ID="cnic" placeholder="CNIC" cssclass="form-control"  runat="server" required="required"></asp:TextBox>
						</div>
						<div class="form-group">
							<asp:TextBox ID="loc" placeholder="Location Name" cssclass="form-control"  runat="server"></asp:TextBox>
						</div>
						<div class="form-group">
							<asp:button text="Submit Now" cssclass="tm-submit-btn" OnClick="InsertGuide" runat="server" />
						</div>   
						<div class="form-group" style="text-align:center">
             <asp:Label ID="sm" runat="server" Text="New Guide Added Succesfuly." ForeColor="#33cc33" ></asp:Label>
        </div>
					</div>
				</form>
			</div>			
		</div>
	</section>
	</section>
</asp:Content>
