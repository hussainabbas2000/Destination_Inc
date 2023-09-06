using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using dal.Operations;
using dal.Entities;
namespace WebApplication5
{
    public partial class usersignup : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            SignUpSuccessMessage.Visible = false;
            LoginButtonAfterSignUp.Visible = false;
        }
        protected void btSignup_Click(object sender, EventArgs e)
        {
            EUser usr = new EUser();
            OUser Ousr = new OUser();
            usr.password = tbPass.Text;
            usr.name = tbName.Text;
            usr.cnic = tbcnic.Text;
            usr.email = tbEmail.Text;
            usr.dob = date1.Text;
            usr.UserId = tbUname.Text;
            usr.phone = num.Text;
            //cmd = new SqlCommand("insert into [User] ([Password], [Name], [Email] ,[Phone],[CNIC],[DOB],[Username]) values('" + tbPass.Text + "', '" + tbName.Text + "', '" + tbEmail.Text + "', '" + num.Text + "','" + tbcnic.Text + "','" + date1.Text + "','" + tbUname.Text + "')", con);
            int check = Ousr.insert(usr);
            if (check == 1)
            {
                SignUpSuccessMessage.Visible = true;
                btSignup.Visible = false;
                LoginButtonAfterSignUp.Visible = true;
            }

        }
        protected void LoginButtonAfterSignUp_click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");

        }

        //here we do the signup
        //protected void btSignup_Click(object sender, EventArgs e) {
        //    using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-ISDFPSU;Initial Catalog=Destination_inc;Integrated Security=True"))
        //    {

        //    }
        //}


        //    protected void btSignup_Click(object sender, EventArgs e)
        //    {
        //        //Response.Write("<script>alert('Testing');</script>");

        //        try
        //        {
        //            SqlConnection con = new SqlConnection(con1);
        //            //the connection has been established
        //            if (con.State == ConnectionState.Closed)
        //            {
        //                Response.Write("<script>alert('Sign up Succesful1');</script>");
        //                con.Open();
        //            }
        //            //string query = "Insert into [dbo]"
        //            SqlCommand cmd = new SqlCommand("insert into [USER] ([Name],Password,Phone,Email) values(@[Name],@Password,@Phone,@Email)", con);
        //            cmd.Parameters.AddWithValue("@[Name]", tbName.Text.Trim());
        //            cmd.Parameters.AddWithValue("@Password", tbPass.Text.Trim());
        //            cmd.Parameters.AddWithValue("@Phone", num.Text.Trim());
        //            cmd.Parameters.AddWithValue("@Email", tbEmail.Text.Trim());
        //            cmd.ExecuteNonQuery();
        //            con.Close();
        //            Response.Write("<script>alert('Sign up Succesful');</script>");



        //        }
        //        catch (Exception ex)
        //        {
        //            Response.Write("<script>alert(' " + ex.Message + " ');</script>");


        //        }
        //    }
        //}
    }
}