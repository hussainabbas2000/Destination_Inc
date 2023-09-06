using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal.Entities;
using dal.Operations;
namespace WebApplication5
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginErrorMessage.Visible = false;
        }
        protected void AdminLogin_Click(object sender, EventArgs e)
        {
            EAdmin admin = new EAdmin();
            OAdmin Oadmin = new OAdmin();
            int count;
            string param1 = TextBox1.Text.Trim();
            string param2 = TextBox2.Text.Trim();
            count = Oadmin.select(param1,param2);
            if (count == 1)
            {
                
                Session["adminUsername"] = TextBox1.Text.Trim();
                Response.Redirect("adminpage.aspx");

            }
            else
            {
                LoginErrorMessage.Visible = true;
            }
        }
    }
}