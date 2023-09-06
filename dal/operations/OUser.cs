using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using dal.Entities;
namespace dal.Operations
{
    public class OUser
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True");
        public int insert(EUser usr)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                SqlCommand cmd;
                sqlCon.Open();
                cmd = new SqlCommand("insert into [User] ([Password], [Name], [Email] ,[contactno],[CNIC],[DOB],[Username]) values('" + usr.password + "', '" + usr.name + "', '" + usr.email + "', '" + usr.phone + "','" + usr.cnic + "','" + usr.dob + "','" + usr.UserId + "')", sqlCon);
                int check = cmd.ExecuteNonQuery();
                sqlCon.Close();
                return check;
            }


        }
        //public SqlDataReader printBookingView(string i1)
        //{
        //    //using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
        //    //{
        //    //    sqlCon.Open();

        //    //    SqlCommand cmd = new SqlCommand();
        //    //    cmd.Connection = sqlCon;
        //    //    cmd.CommandText = "printbooking";
        //    //    cmd.CommandType = System.Data.CommandType.StoredProcedure;
        //    //    SqlParameter p1 = new SqlParameter("@username",i1);
          
        //    //    cmd.Parameters.Add(p1);
               
        //    //    SqlDataReader rdr = cmd.ExecuteReader();                
        //    //    sqlCon.Close();
        //       return rdr;
        //    //}
        //}
        public int select(string input1, string input2)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM [User] WHERE Username=@Username AND Password=@PASSWORD";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@Username", input1);
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
