using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dal.Entities;
using System.Data.SqlClient;
namespace dal.Operations
{
   public class OAdmin
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True");
        public int insert(EAdmin admin)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                SqlCommand cmd;
                sqlCon.Open();
                cmd = new SqlCommand("insert into [Admin] ([password], [name], [email] ,[contactno],[dob],[username]) values('" + admin.password + "', '" + admin.a_name + "', '" + admin.email + "', '" + admin.contactno + "','" + admin.DOB + "','" + admin.adminId + "')", sqlCon);
                int check = cmd.ExecuteNonQuery();
                con.Close();
                return check;
            }
        }

        public int select(string input1,string input2)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM [Admin] WHERE Username=@Username AND Password=@PASSWORD";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@username", input1);
                sqlCmd.Parameters.AddWithValue("@PASSWORD", input2);
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());

                return count;
                //if (count == 1)
                //{
                //    int id = Convert.ToInt32();
                //    Session["Username"] = input1;
                //    Response.Redirect("User-Profile.aspx");
                //}
                //else
                //{
                //    LoginErrorMessage.Visible = true;
                //}
            }
        }
    }
}
