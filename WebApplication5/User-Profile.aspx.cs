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
    public partial class User_Profile : System.Web.UI.Page
    {
        protected void set(object sender, EventArgs e)
        {
            Session["Username"] = "";
            Response.Redirect("Login.aspx");
        }
        protected void load(object sender, EventArgs e)
        {
            Response.Redirect("review.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"].ToString()=="")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                TextBox1.Text = Session["Username"].ToString();
                EUser usr = new EUser();
                OUser oUser = new OUser();
                using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
                {
                    sqlCon.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = sqlCon;
                    cmd.CommandText = "userprint";
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    SqlParameter p1 = new SqlParameter("@username", Session["Username"].ToString());
                    cmd.Parameters.Add(p1);
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        TextBox1.Text = rdr["Username"].ToString();
                        TextBox2.Text = rdr["dob"].ToString();
                        TextBox3.Text = rdr["contactno"].ToString();
                        TextBox4.Text = rdr["email"].ToString();
                        TextBox6.Text = rdr["cnic"].ToString();
                    }

                    sqlCon.Close();



                }

                Session["TourName"] = "";
                Session["DepDate"] = "";
                Session["Vehicle"] = "";
                Session["TourGuide"] = "";
                Session["LocationName"] = "";
                Session["Cost"] = "";
                Session["Hotel"] = "";
                Session["Restaurant"] = "";
                using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
                {
                    sqlCon.Open();

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = sqlCon;
                    cmd.CommandText = "printbooking";
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    SqlParameter p1 = new SqlParameter("@username", Session["Username"].ToString());

                    cmd.Parameters.Add(p1);

                    SqlDataReader rdr = cmd.ExecuteReader();
                    grid.DataSource = rdr;
                    grid.DataBind();
                    sqlCon.Close();

                }
            }
            
        }
    }
}