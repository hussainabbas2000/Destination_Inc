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
    public partial class AddRes : System.Web.UI.Page
    {
        string str = "Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            sm.Text = "New Restaurant Added Successfully";
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
            sList.DataSource = dt;
            sList.DataBind();
            sList.DataTextField = "location_name";
            sList.DataBind();
        }
        protected void OnbtnRes_click(object sender, EventArgs e)
        {
            ERestaurant obj = new ERestaurant();
            ORestaurant Oobj = new ORestaurant();
            obj.name = res_name.Text;
            obj.contactNo = contact.Text;
            obj.area = sList.SelectedItem.Text;
            int check = Oobj.insert(obj);
            if (check ==1)
            {
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