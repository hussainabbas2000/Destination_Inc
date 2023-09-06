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
namespace WebApplication5
{
    public partial class addHotel : System.Web.UI.Page
    {
        string str = "Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            sm.Text = "New Hotel Added Successfully";
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
            string com = "Select [location_name] from [location]";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            Selected_City.DataSource = dt;
            Selected_City.DataBind();
            Selected_City.DataTextField = "location_name";
            Selected_City.DataBind();
        }
        protected void btAddHotel_click(object sender, EventArgs e)
        {
            EHotel obj=new EHotel();
            OHotel Oobj = new OHotel();
            obj.h_name = res_name.Text;
            obj.h_no = contact.Text;
            obj.area = Selected_City.SelectedValue;
            int check = Oobj.insert(obj);
            if (check==1) {
                sm.Text = "Location Constraint";
                sm.Visible = true;
            }
            else
            {
                sm.Visible = true;
                
            }
        }
    }
}