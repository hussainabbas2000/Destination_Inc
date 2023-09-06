using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal.Entities;
using dal.Operations;
using System.Data.SqlClient;
using System.Data;
using System.Drawing.Printing;

namespace WebApplication5
{
    public partial class newTour : System.Web.UI.Page
    {
        string str = "Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            sm.Text = "New Tour Added Successfully";
            sm.Visible = false;
            if (!IsPostBack)
            {
                fill();
            }            
        }
        public void fill()
        {
            sm.Visible = false;
            SqlConnection con = new SqlConnection(str);
            string com = "Select [cnic] from [guide]";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            guideList.DataSource = dt;
            guideList.DataBind();
            guideList.DataTextField = "cnic";
            guideList.DataBind();
        }
        protected void InsertTour(object sender, EventArgs e)
        {
            ETour tour = new ETour();
            OTour Otour = new OTour();
            tour.tourname = tbox1.Text.Trim();
            tour.dep_date = datebox.Text.Trim();
            tour.vehicle = Vehicle.Text.Trim();
            tour.location_name = tbox2.Text.Trim();
            tour.guide_cnic = guideList.SelectedValue.Trim();
            int check= Otour.insert(tour);            
            if (check==2)
            {
                sm.Visible = true;
                //code when insertion is successful
            }
            else
            {
                
                sm.Text = "Location Constraint";
                sm.Visible = true;
            }
                
        }
    }
}