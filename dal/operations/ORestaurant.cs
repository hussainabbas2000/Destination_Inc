using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dal.Entities;
using System.Data.SqlClient;
namespace dal.Operations
{
    public class ORestaurant
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True");

        public int insert(ERestaurant res)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                SqlCommand cmd;
                sqlCon.Open();
                cmd = new SqlCommand("insert into [restaurant] ([res_name], [contactno], [location_name] ) values('" + res.name + "', '" + res.contactNo + "', '" + res.area + "')", sqlCon);
                int check = cmd.ExecuteNonQuery();
                sqlCon.Close();
                return check;
            }
        }
        public ERestaurant select(string i1)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                sqlCon.Open();
                ERestaurant r = new ERestaurant();
                r.area = i1;
                string query = "SELECT [res_name] FROM [restaurant] WHERE location_name=@LocationName";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@LocationName", i1);

                r.name = sqlCmd.ExecuteScalar().ToString();

                query = "SELECT [contactno] FROM [restaurant] WHERE location_name=@LocationName";
                sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@LocationName", i1);
                r.contactNo = sqlCmd.ExecuteScalar().ToString();


                return r;

            }
        }
    }
}
