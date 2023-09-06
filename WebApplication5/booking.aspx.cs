using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using dal.Entities;
using dal.Operations;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace WebApplication5
{
    public partial class booking : System.Web.UI.Page
    {
        string str = "Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

            sm.Text = "New Booking Added Successfully";
            sm.Visible = false;
            if (Session["Username"].ToString()=="")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    fill();
                }
            }
           
        }





        public void fill()
        {
            if (Session["TourGuide"].ToString() == "")
            {

                s_btn.Visible = true;
                gList.Visible = true;
                DropDownList3.Visible = true;
                loc.Visible = false;
                SqlConnection con = new SqlConnection(str);
                string com = "Select [cnic] from [guide]";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                gList.DataSource = dt;
                gList.DataBind();
                gList.DataTextField = "cnic";
                gList.DataBind();


                con = new SqlConnection(str);
                com = "Select [location_name] from [location]";
                adpt = new SqlDataAdapter(com, con);
                dt = new DataTable();
                adpt.Fill(dt);
                DropDownList3.DataSource = dt;
                DropDownList3.DataBind();
                DropDownList3.DataTextField = "location_name";
                DropDownList3.DataBind();

            }
            else
            {
                DropDownList3.Visible = false;
                loc.Visible = true;
                gList.Visible = false;
                s_btn.Visible = false;
                TextBox1.Text = Session["TourGuide"].ToString();
                sm.Visible = false;
                tourname.Text = Session["TourName"].ToString();
                departure_Date.Text = Session["DepDate"].ToString();
                loc.Text = Session["LocationName"].ToString();

                TextBox4.Text = Session["Vehicle"].ToString();
                TextBox2.Text = Session["Hotel"].ToString();
                TextBox3.Text = Session["Restaurant"].ToString();
                TextBox6.Text = Session["Cost"].ToString();
            }
            
        }
    
        protected void SetaddPrice(object sender, EventArgs e)
        {
            if (Session["Tourname"].ToString()!="")
            {
                EBooking book = new EBooking();
                OBooking b = new OBooking();
                book.tourname = tourname.Text.Trim();
                book.usrname = Session["Username"].ToString();
                book.passengerNo = Convert.ToInt32(Passengers.SelectedValue);
                book.type = rlist.SelectedValue;
                int check = b.insert(book);
                int addcost = 0;
                addcost = b.getaddprice(Session["Username"].ToString(), Session["Tourname"].ToString());
                TextBox5.Text = addcost.ToString();
                if (check==2)
                {
                    sm.Visible = true;
                }
                else
                {
                    sm.Text = "Contraint Violated!";
                    sm.Visible = true;
                }
               
            }
            else
            {
                Session["Tourname"] = tourname.Text;
                ETour tour = new ETour();
                OTour otour = new OTour();
                EBooking book = new EBooking();
                OBooking b = new OBooking();                
                tour.tourname = tourname.Text;
                tour.dep_date = departure_Date.Text;
                tour.vehicle = TextBox4.Text;
                tour.location_name = DropDownList3.SelectedValue;
                tour.guide_cnic = gList.SelectedValue;
                int check1 = otour.insert(tour);
                if (check1==2)  
                {
                    book.tourname = tourname.Text.Trim();
                    book.usrname = Session["Username"].ToString();
                    book.passengerNo = Convert.ToInt32(Passengers.SelectedValue);
                    book.type = rlist.SelectedValue;
                    int check2 = b.insert(book);
                    int addcost = 0;
                    addcost = b.getaddprice(Session["Username"].ToString(), Session["Tourname"].ToString());
                    TextBox5.Text = addcost.ToString();
                    TextBox1.Text = gList.SelectedValue;
                    if (check2==2)
                    {
                        sm.Visible = true;
                    }
                    else
                    {
                        sm.Text = "Booking Constraint";
                        sm.Visible = true;
                    }
                }
                else
                {
                    sm.Text = "Tour Constraint";
                        sm.Visible = true;
                }

            }

            
           

           
           
            
        }
        protected void sort(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(str);
            string com = "Select [cnic] from [guide] order by [experience] desc";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            gList.DataSource = dt;
            gList.DataBind();
            gList.DataTextField = "cnic";
            gList.DataBind();
           
        }
    }
}