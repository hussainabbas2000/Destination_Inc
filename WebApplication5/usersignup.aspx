<%@ Page Title="Destination Inc.-SignUp" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="WebApplication5.usersignup" %>
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
					<h1 class="tm-banner-title"><span class="tm-yellow-text">Create</span> Account</h1>
					<p class="tm-banner-subtitle">Sign Up to enjoy Destination Inc. services</p>
                    <p class=" gray-text" style="font-size:20px">Already have an account? <a style="color:gold" href="Login.aspx" >Log In</a></p>	
				</div>
		      <img src="img/banner-8.jpg" />
		    </li>
		  </ul>
		</div>		
	</section>
    <!-- gray bg -->	
	<section class="container tm-home-section-1" id="more">
		<div class="row">
			<!-- slider -->
			<div class="flexslider flexslider-about effect2" style="height:660px; background-image: url('img/bk-1.jpg');">
			  <ul class="slides">
			    <li>
			      <%--<img src="img/about-1.jpg" alt="image" />--%>
			      <div class="flex-caption" style=" padding-left:320px; padding-top:100px">
					  <div class="container" >
      <div class="row" style="">
         <div class="col-md-6 mx-auto" style="min-height:100%;padding-bottom:150px;width:40%;">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col" style="text-align:center">
                        <center>
                           <h3>User Sign Up</h3>
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
             

                          <div style="display:inline-block">
                    <%--<label style="float:left">Password</label>--%>
                        <div class="form-group" style="float:left; padding-right:20px; border-radius:50px 20px; border: 2px solid gold">
                           <asp:TextBox CssClass="form-control" ID="tbName" runat="server" placeholder="Name"></asp:TextBox>
                        </div>  
                    <%--<label style="float:right">Confirm Password</label>--%>
                        <div class="form-group" style="float:right; padding-left:20px; border-radius:50px 20px; border: 2px solid gold">
                           <asp:TextBox CssClass="form-control" ID="tbUname" runat="server" placeholder="Username" required="required"></asp:TextBox>
                        </div>
                    </div>
       
                     <div style="display:inline-block">
                        <div class="form-group" style="float:left; padding-right:20px; border-radius:50px 20px; border: 2px solid gold">
                           <asp:TextBox CssClass="form-control" TextMode="Password" ID="tbPass" runat="server" placeholder="Password"></asp:TextBox>
                        </div>
                        <div class="form-group" style="float:right; padding-left:20px; border-radius:50px 20px; border: 2px solid gold">
                           <asp:TextBox CssClass="form-control" TextMode="Password" ID="tbCPass" runat="server" placeholder="Confirm Password"></asp:TextBox>
                        </div>
                    </div>
                         <asp:CompareValidator ID="CompareValidator1" runat="server"
     ControlToValidate="tbCPass"
     ControlToCompare="tbPass"
     ErrorMessage="No Match" ForeColor="Red"
     ToolTip="Password must be the same" />

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
     ErrorMessage="&laquo; (Required)" ForeColor="Red"
     ControlToValidate="tbCPass"
     ToolTip="Compare Password is a REQUIRED field">
    </asp:RequiredFieldValidator>
                          <div style="padding-left:19px">
          <div class="form-group" style="border-radius:50px 20px; border: 2px solid gold; width:430px">
                           <asp:TextBox CssClass="form-control" ID="tbEmail" runat="server" placeholder="Email"></asp:TextBox>
                        </div>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail"    
ErrorMessage="Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">  
</asp:RegularExpressionValidator> 
          <div class="form-group" style="border-radius:50px 20px; border: 2px solid gold; width:430px">
                           <asp:TextBox CssClass="form-control" ID="num" runat="server" placeholder="Contact Number"></asp:TextBox>
                        </div>
           <div class="form-group" style="border-radius:50px 20px; border: 2px solid gold; width:430px">
                           <asp:TextBox CssClass="form-control" ID="date1" runat="server" TextMode="Date" placeholder="Date of Birth"></asp:TextBox>
                        </div> 
             <div class="form-group" style="border-radius:50px 20px; border: 2px solid gold; width:430px">
                           <asp:TextBox CssClass="form-control" ID="tbcnic" runat="server"  placeholder="CNIC Number"></asp:TextBox>
                        </div> 
                              </div>

        <%--<div class="col-xs-11 space-vert">
            <asp:Button ID="btSignup" runat="server" Class="btn btn-success" Text="Sign Up" OnClick="btSignup_Click"  />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>--%>
        <div class="form-group" style="text-align:center">
             <asp:Label ID="SignUpSuccessMessage" runat="server" Text="Sign Up Completed Succesfuly." ForeColor="#33cc33" ></asp:Label>
        </div>
        <div class="form-group" style="text-align:center">
              <asp:Button class="btn btn-success btn-block btn-lg" ID="LoginButtonAfterSignUp" runat="server" Text="Login" OnClick="LoginButtonAfterSignUp_click"></asp:Button>
        </div>
        <div class="form-group" style="text-align:center">
              <asp:Button class="btn btn-success btn-block btn-lg" ID="btSignup" runat="server" Text="Sign Up" OnClick="btSignup_Click"></asp:Button>
          </div>
</div>
                  </div>
               </div>
            </div>
            <a href="index.aspx"><< Back to Home</a><br><br>
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
