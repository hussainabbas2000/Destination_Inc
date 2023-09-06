using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dal.Entities;
using System.Data.SqlClient;
namespace dal.Operations
{
    public class OHotel
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True");
        public int insert(EHotel obj){
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                SqlCommand cmd;
                sqlCon.Open();
                cmd = new SqlCommand("insert into [hotel] ([hotel_name], [contactno], [location_name] ) values('" + obj.h_name + "', '" + obj.h_no + "', '" + obj.area + "')", sqlCon);
                int check = cmd.ExecuteNonQuery();
                sqlCon.Close();
                return check;
            }
        }

        public EHotel select(string i1)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                sqlCon.Open();
                EHotel h = new EHotel();
                h.area = i1;
                string query = "SELECT [hotel_name] FROM [hotel] WHERE location_name=@LocationName";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@LocationName", i1);
               
               h.h_name= sqlCmd.ExecuteScalar().ToString();

                query = "SELECT [contactno] FROM [hotel] WHERE location_name=@LocationName";
                sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@LocationName", i1);
                h.h_no = sqlCmd.ExecuteScalar().ToString();


                return h;
               
            }
        }
    }
}
