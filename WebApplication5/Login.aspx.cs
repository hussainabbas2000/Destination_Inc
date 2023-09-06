using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using dal.Entities;
using dal.Operations;
namespace WebApplication5
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginErrorMessage.Visible = false;
        }
        //protected void LoginButton_click 
        protected void LoginButton_click(object sender, EventArgs e)
        {
            //using (SqlConnection sqlCon = new SqlConnection(@"Data Source=HAIER-PC;Initial Catalog=Destination_inc;Integrated Security=True"))
            //{

            //    sqlCon.Open();
            //    string query = "SELECT COUNT(1) FROM [User] WHERE Username=@Username AND Password=@PASSWORD";
            //    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
            //    sqlCmd.Parameters.AddWithValue("@Username", TextBox1.Text.Trim());
            //    sqlCmd.Parameters.AddWithValue("@PASSWORD", TextBox2.Text.Trim());
            //    int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            EUser usr = new EUser();
            OUser ousr = new OUser();
            int count;
            string param1 = TextBox1.Text.Trim();
            string param2 = TextBox2.Text.Trim();
            count = ousr.select(param1, param2);
            if (count == 1)
            {
                Session["Username"] = TextBox1.Text.Trim();
                Response.Redirect("User-Profile.aspx");
            }
            else
            {
                LoginErrorMessage.Visible = true;
            }
            //}
        }
    }
}