using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dal.Entities;
using System.Data.SqlClient;
namespace dal.Operations
{
    public class OLocation
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True");
        public int insert(ELocation obj)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                SqlCommand cmd;
                sqlCon.Open();
                cmd = new SqlCommand("insert into [Location] ([location_name], [state_name], [city_name],[country_name],[cost] ) values('" + obj.location_name + "', '" + obj.state_name + "', '" + obj.city_name + "','" + obj.country_name + "','" + obj.cost + "')", sqlCon);
                int check = cmd.ExecuteNonQuery();
                con.Close();
                return check;
            }
        }

        public ELocation select(string i1)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                ELocation loc = new ELocation();
                loc.location_name = i1;
                sqlCon.Open();
                string query = "SELECT [cost] FROM [Location] WHERE location_name=@Location_Name";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@Location_Name", i1);               
                loc.cost= Convert.ToInt32(sqlCmd.ExecuteScalar());


                query = "SELECT [state_name] FROM [Location] WHERE location_name=@Location_Name";
                sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@Location_Name", i1);
                loc.state_name = sqlCmd.ExecuteScalar().ToString();

                query = "SELECT [city_name] FROM [Location] WHERE location_name=@Location_Name";
                sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@Location_Name", i1);
                loc.city_name = sqlCmd.ExecuteScalar().ToString();

                query = "SELECT [country_name] FROM [Location] WHERE location_name=@Location_Name";
                sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@Location_Name", i1);
                loc.country_name = sqlCmd.ExecuteScalar().ToString();


                return loc;
            }
        }
    }
}
