<%@ Page Title="Destination Inc.-Tours" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="WebApplication5.booking" %>

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
                        <a href="#more" class="tm-banner-link">BOOK NOW</a>
                    </div>
                    <img src="img/banner-5.jpeg" alt="Image" />
                </li>
                <li>
                    <div class="tm-banner-inner">
                        <h1 class="tm-banner-title">5 <span class="tm-yellow-text">Star</span> Hotels</h1>
                        <p class="tm-banner-subtitle">Wonderful Destinations</p>
                        <a href="#more" class="tm-banner-link">BOOK NOW</a>
                    </div>
                    <img src="img/banner-2.jpg" alt="Image" />
                </li>
                <li>
                    <div class="tm-banner-inner">
                        <h1 class="tm-banner-title">Luxury <span class="tm-yellow-text">Transport</span> </h1>
                        <p class="tm-banner-subtitle">Comfortable Rides</p>
                        <a href="#more" class="tm-banner-link">BOOK NOW</a>
                    </div>
                    <img src="img/banner-6.jpeg" alt="Image" />
                </li>
            </ul>
        </div>
    </section>

    <!-- gray bg -->
    <section class="container tm-home-section-1" id="more">
        <div class="row" style="padding-bottom: 600px">
            <div class="container center-page" style="padding-right: 410px">
                <!-- Nav tabs -->
                <div class="tm-home-box-1">
                    <ul class="nav nav-tabs tm-white-bg" role="tablist" id="hotelCarTabs">
                        <li role="presentation" class="active">
                            <a href="#tripDetails" aria-controls="tripDetails" role="tab" data-toggle="tab">Trip Details</a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane fade in active tm-white-bg" id="tripDetails">
                            <div class="tm-search-box effect2">
                                <form action="#" method="post" class="hotel-search-form">
                                    <div class="tm-form-inner">
                                        <div class="form-group">
							                <asp:TextBox ID="tourname" placeholder="What do you want to call your tour" cssclass="form-control"  runat="server"></asp:TextBox>
						                </div>
                                    
                                        <div class="form-group">
                                            <div class='input-group date' id='datetimepicker1'>
                                                <asp:TextBox ID="departure_Date" value="" runat="server" CssClass="form-control" placeholder="Departure"></asp:TextBox>
                                                <span class="input-group-addon">
                                                    <span class="fa fa-calendar"></span>
                                                </span>
                                            </div>
                                        </div>
                                      
                                        <div class="form-group margin-bottom-0">
                                            <asp:DropDownList ID="Passengers" CssClass="form-control" runat="server">
                                                <asp:ListItem Text="No of Passengers" Value="" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                                <asp:ListItem Text="5" Value="5p"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>                                       
                                        <div class="form-group margin-bottom-0">
                                            <asp:label Text="To:" runat="server" CssClass="form-control"></asp:label>
                                            <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server">
                                               
                                            </asp:DropDownList>
                                            <asp:Textbox ID="loc" CssClass="form-control" runat="server"></asp:Textbox>
                                        </div>
                                         <div class="form-group">                       

                                            <asp:radiobuttonlist  CssClass="form-control" runat="server" ID="rlist">
                                                <asp:ListItem Selected="False" Text="Business Class" Value="Business class"></asp:ListItem>
                                                <asp:ListItem Selected="False" Text="Economic Class" Value="Economic class"></asp:ListItem>
                                            </asp:radiobuttonlist>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label  CssClass="form-control" runat="server"><span style="color:black">Your Tour Guide:</span></asp:Label>
                                            <asp:TextBox ID="TextBox1" placeholder="Tour Guide" cssclass="form-control"  runat="server"></asp:TextBox>
                                            <asp:Button CssClass="tm-yellow-btn" OnClick="sort" Font-Size="X-Small" text="Sort by Experience" runat="server" ID="s_btn" />
                                            <asp:DropDownList ID="gList" CssClass="form-control" runat="server"></asp:DropDownList>
                                        </div>
                                         <div class="form-group">
                                            <asp:Label  CssClass="form-control" runat="server"><span style="color:black">Vehicle:</span></asp:Label>
                                            <asp:TextBox ID="TextBox4" placeholder="Vehicle" cssclass="form-control"  runat="server"></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                            <asp:Label  CssClass="form-control" runat="server"><span style="color:black">Hotel:</span></asp:Label>
                                            <asp:TextBox ID="TextBox2" placeholder="Hotel" cssclass="form-control"  runat="server"></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                            <asp:Label  CssClass="form-control" runat="server"><span style="color:black">Restaurant:</span></asp:Label>
                                            <asp:TextBox ID="TextBox3" placeholder="Restaurant" cssclass="form-control"  runat="server"></asp:TextBox>

                                        </div>
                                       <div class="form-group">
                                            <asp:Label  CssClass="form-control" runat="server"><span style="color:black">Basic Cost:</span></asp:Label>
                                            <asp:TextBox ID="TextBox6" placeholder="Basic Cost" cssclass="form-control"  runat="server"></asp:TextBox>

                                        </div>
                                         <div class="form-group margin-bottom-0">
                                            <asp:Label  CssClass="form-control" runat="server"><span style="color:black">Additional Cost:</span></asp:Label>
                                            <asp:TextBox ID="TextBox5" placeholder="Additional Cost" cssclass="form-control"  runat="server"></asp:TextBox>

                                        </div>

                                    </div>
                                    <div class="form-group tm-yellow-gradient-bg text-center">
<%--                                        <button type="submit" name="submit" onclick="btbook_Click" class="tm-yellow-btn">Book Now</button>--%>
                                        <asp:Button ID="submit" CssClass="tm-yellow-btn" Text="Book Now" OnClick="SetaddPrice" runat="server" />
                                    </div>
                                    <div class="form-group" style="text-align:center">
                                         <asp:Label ID="sm" runat="server" Text="Sign Up Completed Succesfuly." ForeColor="#33cc33" ></asp:Label>
                                        </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>