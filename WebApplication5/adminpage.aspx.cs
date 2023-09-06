using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 
namespace WebApplication5
{
    public partial class adminpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = sqlCon;
                cmd.CommandText = "adminprint";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("@username", Session["adminUsername"].ToString());
                cmd.Parameters.Add(p1);
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    one.Text = rdr["Username"].ToString();
                    two.Text = rdr["password"].ToString();
                    o.Text = rdr["email"].ToString();
                    four.Text = rdr["contactno"].ToString();
                    
                }

                sqlCon.Close();



            }
        }
    }
}