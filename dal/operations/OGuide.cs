using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dal.Entities;
using System.Data.SqlClient;
namespace dal.Operations
{
    public class OGuide
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True");
        public int insert(EGuide guide)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                SqlCommand cmd;
                sqlCon.Open();
                cmd = new SqlCommand("insert into [Guide] ([Name],[Email],[Experience],[Phone],[Cnic],[Location_name]) values('" + guide.name + "', '" + guide.email + "', '" + guide.experience + "', '" + guide.phone + "','" + guide.cnic + "','" + guide.location_name + "')", sqlCon);
                int check = cmd.ExecuteNonQuery();
                con.Close();
                return check;
            }


        }
        public int select(string input1)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM [Guide] WHERE Cnic=@Cnic";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@Cnic", input1);               
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());

                return count;
              
            }
        }
    }
}
