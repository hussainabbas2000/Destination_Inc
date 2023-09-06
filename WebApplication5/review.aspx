<%@ Page Title="Destination Inc.-Reviews" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="review.aspx.cs" Inherits="WebApplication5.review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="tm-banner" runat="server">

        <!-- Flexslider -->
        <div class="flexslider flexslider-banner">
            <ul class="slides">
                <li>
                    <div class="tm-banner-inner">
                        <h1 class="tm-banner-title">We Care About Your <span class="tm-yellow-text">Opinions</span> </h1>
                        <a href="#more" class="tm-banner-link">Write A Review</a>
                    </div>
                    <img src="img/banner-2.jpg" alt="Image" />
                </li>

            </ul>
        </div>
    </section>

    <!-- gray bg -->
    <section class="container tm-home-section-1" id="more">
        <div class="row">
            <div class="row">

                <br />
                <br />
                <div class="tm-form-inner">

                    <div class="pull-left">

<%--                        <asp:Label ID="label1" Font-Size="XX-Large" runat="server" ForeColor="#333300" CssClass="form-control">How Was Your Trip?</asp:Label>--%>
                        <h2 style="padding-top:20px">Writing Review For</h2>
                    </div>

                </div>
                <div class="col-lg-6 col-md-6 tm-contact-form-input" style="align-items:center">
                    <div class="form-group" >
                    <asp:DropDownList ID="tournames" CssClass="form-control" runat="server"></asp:DropDownList>
<%--                        <asp:GridView ID="grid" runat="server" CssClass="form-control" AutoGenerateSelectButton="true"></asp:GridView>--%>
                </div>
                    </div>
                <br />
                <br />
                <div class="tm-form-inner">

                    <div class="pull-left">

<%--                        <asp:Label ID="label1" Font-Size="XX-Large" runat="server" ForeColor="#333300" CssClass="form-control">How Was Your Trip?</asp:Label>--%>
                        <h2 style="padding-top:20px">Your Username</h2>
                    </div>

                </div>
                <div class="col-lg-6 col-md-6 tm-contact-form-input" >
                    <div class="form-group">
                        <asp:TextBox ID="TextBox2" Height="50" placeholder="Your Username" CssClass="form-control" runat="server" Font-Italic="true"></asp:TextBox>

                    </div>


                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <div class="tm-form-inner">

                    <div class="pull-left">

<%--                        <asp:Label ID="label1" Font-Size="XX-Large" runat="server" ForeColor="#333300" CssClass="form-control">How Was Your Trip?</asp:Label>--%>
                        <h2 style="padding-top:20px">How Was Your Trip</h2>
                    </div>

                </div>
                <div class="col-lg-6 col-md-6 tm-contact-form-input">
                    <div class="form-group">
                        <asp:TextBox ID="tbox1" Height="50" placeholder="Positive Feedback" CssClass="form-control" runat="server" Font-Italic="true"></asp:TextBox>

                    </div>


                </div>
                <br />
                <br />
                <br />

                <div class="tm-form-inner">
                    <div class="pull-left">

                        <%--<asp:Label ID="labe2" Font-Size="X-Large" ForeColor="#333300" runat="server" CssClass="form-control"><b>YOU</b> help us IMPROVE!</asp:Label>--%>
                        <h2 style="padding-top:20px"><b>YOU</b> help us IMPROVE!</h2>


                    </div>
                </div>


                <div class="col-lg-6 col-md-6 tm-contact-form-input">
                    <div class="form-group">
                        <asp:TextBox placeholder="Complaints" Height="50" ID="tbox2" CssClass="form-control" runat="server" Font-Italic="true"></asp:TextBox>
                    </div>
                </div>
                <br />
                <br />
                <br />
                <div class="tm-form-inner">
                    <div class="pull-left">

                        <%--<asp:Label ID="label3" Font-Size="Larger" ForeColor="#333300" runat="server" CssClass="form-control">Rate Us Out Of Five:</asp:Label>--%>
                        <h4>Rate Us Out Of Five:</h4>

                    </div>
                </div>
                <div class="form-group">
                    <asp:RadioButton Text="1 Star" ID="radiobutton1" runat="server" GroupName="rating" />
                    <asp:RadioButton Text="2 Star" ID="radiobutton2" runat="server" GroupName="rating" />
                    <asp:RadioButton Text="3 Star" ID="radiobutton3" runat="server" GroupName="rating" />
                    <asp:RadioButton Text="4 Star" ID="radiobutton4" runat="server" GroupName="rating" />
                    <asp:RadioButton Text="5 Star" ID="radiobutton5" runat="server" GroupName="rating" />
                    <asp:Panel HorizontalAlign="Right" runat="server">
                        <img src="img/review-1.jpg" height="100" alt="Reviews" />
                    </asp:Panel>

                </div>
                <div class="pull-right">
                    <asp:Button ID="submitReview" Text="Submit Review" CssClass="tm-yellow-btn" OnClick="SubmitReview" runat="server"  />
                </div>
                <div class="form-group" style="text-align:center">
                                         <asp:Label ID="sm" runat="server" Text="Sign Up Completed Succesfuly." ForeColor="#33cc33" ></asp:Label>
                                        </div>
            </div>


        </div>
    </section>
</asp:Content>
