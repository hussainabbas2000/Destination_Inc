using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using dal.Entities;
using dal.Operations;
namespace WebApplication5
{
    public partial class tours : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["Username"].ToString()!="")
            //{
                
                
            //}
            Session["TourName"] = "";
            Session["DepDate"] = "";
            Session["Vehicle"] = "";
            Session["TourGuide"] = "";
            Session["LocationName"] = "";
            Session["Cost"] = "";
            Session["Hotel"] = "";
            Session["Restaurant"] = "";
        }
        protected void LoadAttributesb1(object sender, EventArgs e)
        {
            ELocation loc = new ELocation();
            OLocation Oloc = new OLocation();
            ETour tour = new ETour();
            OTour oTour = new OTour();
            EHotel hotel = new EHotel();
            OHotel oHotel = new OHotel();
            ERestaurant res = new ERestaurant();
            ORestaurant oRes = new ORestaurant();
            loc = Oloc.select(b1.Text.Trim());
            tour = oTour.Select(b1.Text.Trim());
            hotel = oHotel.select(b1.Text.Trim());
            res = oRes.select(b1.Text.Trim());
            Session["TourName"] = tour.tourname;
            Session["DepDate"] = tour.dep_date;
            Session["Vehicle"] = tour.vehicle;
            Session["TourGuide"] = tour.guide_cnic;
            Session["LocationName"] = tour.location_name;
            Session["Cost"] = loc.cost;
            Session["Hotel"] = hotel.h_name;
            Session["Restaurant"] = res.name;

            Response.Redirect("booking.aspx");


        }

        protected void LoadAttributesb0(object sender, EventArgs e)
        {
            ELocation loc = new ELocation();
            OLocation Oloc = new OLocation();
            ETour tour = new ETour();
            OTour oTour = new OTour();
            EHotel hotel = new EHotel();
            OHotel oHotel = new OHotel();
            ERestaurant res = new ERestaurant();
            ORestaurant oRes = new ORestaurant();
            loc = Oloc.select(Button1.Text.Trim());
            tour = oTour.Select(Button1.Text.Trim());
            hotel = oHotel.select(Button1.Text.Trim());
            res = oRes.select(Button1.Text.Trim());
            Session["TourName"] = tour.tourname;
            Session["DepDate"] = tour.dep_date;
            Session["Vehicle"] = tour.vehicle;
            Session["TourGuide"] = tour.guide_cnic;
            Session["LocationName"] = tour.location_name;
            Session["Cost"] = loc.cost;
            Session["Hotel"] = hotel.h_name;
            Session["Restaurant"] = res.name;

            Response.Redirect("booking.aspx");


        }
        protected void LoadAttributesb2(object sender, EventArgs e)
        {
            ELocation loc = new ELocation();
            OLocation Oloc = new OLocation();
            ETour tour = new ETour();
            OTour oTour = new OTour();
            EHotel hotel = new EHotel();
            OHotel oHotel = new OHotel();
            ERestaurant res = new ERestaurant();
            ORestaurant oRes = new ORestaurant();
            loc = Oloc.select(b2.Text.Trim());
            tour = oTour.Select(b2.Text.Trim());
            hotel = oHotel.select(b2.Text.Trim());
            res = oRes.select(b2.Text.Trim());
            Session["TourName"] = tour.tourname;
            Session["DepDate"] = tour.dep_date;
            Session["Vehicle"] = tour.vehicle;
            Session["TourGuide"] = tour.guide_cnic;
            Session["LocationName"] = tour.location_name;
            Session["Cost"] = loc.cost;
            Session["Hotel"] = hotel.h_name;
            Session["Restaurant"] = res.name;

            Response.Redirect("booking.aspx");


        }
        protected void LoadAttributesb3(object sender, EventArgs e)
        {
            ELocation loc = new ELocation();
            OLocation Oloc = new OLocation();
            ETour tour = new ETour();
            OTour oTour = new OTour();
            EHotel hotel = new EHotel();
            OHotel oHotel = new OHotel();
            ERestaurant res = new ERestaurant();
            ORestaurant oRes = new ORestaurant();
            loc = Oloc.select(b3.Text.Trim());
            tour = oTour.Select(b3.Text.Trim());
            hotel = oHotel.select(b3.Text.Trim());
            res = oRes.select(b3.Text.Trim());
            Session["TourName"] = tour.tourname;
            Session["DepDate"] = tour.dep_date;
            Session["Vehicle"] = tour.vehicle;
            Session["TourGuide"] = tour.guide_cnic;
            Session["LocationName"] = tour.location_name;
            Session["Cost"] = loc.cost;
            Session["Hotel"] = hotel.h_name;
            Session["Restaurant"] = res.name;

            Response.Redirect("booking.aspx");


        }
        protected void LoadAttributesb4(object sender, EventArgs e)
        {
            ELocation loc = new ELocation();
            OLocation Oloc = new OLocation();
            ETour tour = new ETour();
            OTour oTour = new OTour();
            EHotel hotel = new EHotel();
            OHotel oHotel = new OHotel();
            ERestaurant res = new ERestaurant();
            ORestaurant oRes = new ORestaurant();
            loc = Oloc.select(b4.Text.Trim());
            tour = oTour.Select(b4.Text.Trim());
            hotel = oHotel.select(b4.Text.Trim());
            res = oRes.select(b4.Text.Trim());
            Session["TourName"] = tour.tourname;
            Session["DepDate"] = tour.dep_date;
            Session["Vehicle"] = tour.vehicle;
            Session["TourGuide"] = tour.guide_cnic;
            Session["LocationName"] = tour.location_name;
            Session["Cost"] = loc.cost;
            Session["Hotel"] = hotel.h_name;
            Session["Restaurant"] = res.name;

            Response.Redirect("booking.aspx");


        }
        protected void LoadAttributesb5(object sender, EventArgs e)
        {
            ELocation loc = new ELocation();
            OLocation Oloc = new OLocation();
            ETour tour = new ETour();
            OTour oTour = new OTour();
            EHotel hotel = new EHotel();
            OHotel oHotel = new OHotel();
            ERestaurant res = new ERestaurant();
            ORestaurant oRes = new ORestaurant();
            loc = Oloc.select(b4.Text.Trim());
            tour = oTour.Select(b4.Text.Trim());
            hotel = oHotel.select(b4.Text.Trim());
            res = oRes.select(b4.Text.Trim());
            Session["TourName"] = tour.tourname;
            Session["DepDate"] = tour.dep_date;
            Session["Vehicle"] = tour.vehicle;
            Session["TourGuide"] = tour.guide_cnic;
            Session["LocationName"] = tour.location_name;
            Session["Cost"] = loc.cost;
            Session["Hotel"] = hotel.h_name;
            Session["Restaurant"] = res.name;

            Response.Redirect("booking.aspx");


        }
        protected void LoadAttributesb6(object sender, EventArgs e)
        {
            ELocation loc = new ELocation();
            OLocation Oloc = new OLocation();
            ETour tour = new ETour();
            OTour oTour = new OTour();
            EHotel hotel = new EHotel();
            OHotel oHotel = new OHotel();
            ERestaurant res = new ERestaurant();
            ORestaurant oRes = new ORestaurant();
            loc = Oloc.select(b4.Text.Trim());
            tour = oTour.Select(b4.Text.Trim());
            hotel = oHotel.select(b4.Text.Trim());
            res = oRes.select(b4.Text.Trim());
            Session["TourName"] = tour.tourname;
            Session["DepDate"] = tour.dep_date;
            Session["Vehicle"] = tour.vehicle;
            Session["TourGuide"] = tour.guide_cnic;
            Session["LocationName"] = tour.location_name;
            Session["Cost"] = loc.cost;
            Session["Hotel"] = hotel.h_name;
            Session["Restaurant"] = res.name;

            Response.Redirect("booking.aspx");


        }
        protected void LoadAttributesb7(object sender, EventArgs e)
        {
            ELocation loc = new ELocation();
            OLocation Oloc = new OLocation();
            ETour tour = new ETour();
            OTour oTour = new OTour();
            EHotel hotel = new EHotel();
            OHotel oHotel = new OHotel();
            ERestaurant res = new ERestaurant();
            ORestaurant oRes = new ORestaurant();
            loc = Oloc.select(b7.Text.Trim());
            tour = oTour.Select(b7.Text.Trim());
            hotel = oHotel.select(b7.Text.Trim());
            res = oRes.select(b7.Text.Trim());
            Session["TourName"] = tour.tourname;
            Session["DepDate"] = tour.dep_date;
            Session["Vehicle"] = tour.vehicle;
            Session["TourGuide"] = tour.guide_cnic;
            Session["LocationName"] = tour.location_name;
            Session["Cost"] = loc.cost;
            Session["Hotel"] = hotel.h_name;
            Session["Restaurant"] = res.name;

            Response.Redirect("booking.aspx");


        }
        protected void LoadAttributesb8(object sender, EventArgs e)
        {
            ELocation loc = new ELocation();
            OLocation Oloc = new OLocation();
            ETour tour = new ETour();
            OTour oTour = new OTour();
            EHotel hotel = new EHotel();
            OHotel oHotel = new OHotel();
            ERestaurant res = new ERestaurant();
            ORestaurant oRes = new ORestaurant();
            loc = Oloc.select(b8.Text.Trim());
            tour = oTour.Select(b8.Text.Trim());
            hotel = oHotel.select(b8.Text.Trim());
            res = oRes.select(b8.Text.Trim());
            Session["TourName"] = tour.tourname;
            Session["DepDate"] = tour.dep_date;
            Session["Vehicle"] = tour.vehicle;
            Session["TourGuide"] = tour.guide_cnic;
            Session["LocationName"] = tour.location_name;
            Session["Cost"] = loc.cost;
            Session["Hotel"] = hotel.h_name;
            Session["Restaurant"] = res.name;

            Response.Redirect("booking.aspx");


        }
        protected void LoadAttributesb9(object sender, EventArgs e)
        {
            ELocation loc = new ELocation();
            OLocation Oloc = new OLocation();
            ETour tour = new ETour();
            OTour oTour = new OTour();
            EHotel hotel = new EHotel();
            OHotel oHotel = new OHotel();
            ERestaurant res = new ERestaurant();
            ORestaurant oRes = new ORestaurant();
            loc = Oloc.select(b9.Text.Trim());
            tour = oTour.Select(b9.Text.Trim());
            hotel = oHotel.select(b9.Text.Trim());
            res = oRes.select(b9.Text.Trim());
            Session["TourName"] = tour.tourname;
            Session["DepDate"] = tour.dep_date;
            Session["Vehicle"] = tour.vehicle;
            Session["TourGuide"] = tour.guide_cnic;
            Session["LocationName"] = tour.location_name;
            Session["Cost"] = loc.cost;
            Session["Hotel"] = hotel.h_name;
            Session["Restaurant"] = res.name;

            Response.Redirect("booking.aspx");


        }
        protected void LoadAttributesb10(object sender, EventArgs e)
        {
            ELocation loc = new ELocation();
            OLocation Oloc = new OLocation();
            ETour tour = new ETour();
            OTour oTour = new OTour();
            EHotel hotel = new EHotel();
            OHotel oHotel = new OHotel();
            ERestaurant res = new ERestaurant();
            ORestaurant oRes = new ORestaurant();
            loc = Oloc.select(b10.Text.Trim());
            tour = oTour.Select(b10.Text.Trim());
            hotel = oHotel.select(b10.Text.Trim());
            res = oRes.select(b10.Text.Trim());
            Session["TourName"] = tour.tourname;
            Session["DepDate"] = tour.dep_date;
            Session["Vehicle"] = tour.vehicle;
            Session["TourGuide"] = tour.guide_cnic;
            Session["LocationName"] = tour.location_name;
            Session["Cost"] = loc.cost;
            Session["Hotel"] = hotel.h_name;
            Session["Restaurant"] = res.name;

            Response.Redirect("booking.aspx");


        }
    }
}