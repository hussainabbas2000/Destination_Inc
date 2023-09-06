using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal.Entities;
using dal.Operations;
using System.Data.SqlClient;
namespace WebApplication5
{
    public partial class NewLocation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sm.Visible = false;
        }
        protected void InsertLocation(object sender, EventArgs e)
        {
            
            ELocation location = new ELocation();
            OLocation oLocation = new OLocation();
            location.country_name = Country_name.Text.Trim();
            location.state_name = Province_name.Text.Trim();
            location.city_name = City_name.Text.Trim();
            location.location_name = area_name.Text.Trim();
            location.cost =Convert.ToInt32(price.Text);
            int check = oLocation.insert(location);
            if (check==1)
            {
                sm.Visible = true;
                //code when insertion is successful
            }
        }
    }
}