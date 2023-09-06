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
    public partial class newGuide : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sm.Visible = false;
        }
        protected void InsertGuide(object sender, EventArgs e)
        {
            
            EGuide guide = new EGuide();
            OGuide Oguide = new OGuide();
            guide.name = name.Text.Trim();
            guide.phone = phone.Text.Trim();
            guide.location_name = loc.Text.Trim();
            guide.experience = Convert.ToInt32(Experience.SelectedValue.Trim());
            guide.cnic = cnic.Text.Trim();
            guide.email = email.Text.Trim();
            int check=Oguide.insert(guide);
            if (check==1)
            {
                sm.Visible = true;
                //code if insertion is successful
            }
        }
    }
}