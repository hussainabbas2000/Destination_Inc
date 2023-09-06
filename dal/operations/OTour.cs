using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dal.Entities;
using System.Data.SqlClient;
namespace dal.Operations
{
    public class OTour
    {
        public int insert(ETour obj)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("insert into [tour] ([tourname], [dep_date], [vehicle],[location_name],[guide_cnic] ) values('" + obj.tourname + "', '" + obj.dep_date + "', '" + obj.vehicle + "','" + obj.location_name + "','" + obj.guide_cnic + "')", sqlCon);
                int check = cmd.ExecuteNonQuery();
                sqlCon.Close();
                return check;
            }
        }
        
        public ETour Select(string i1)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                ETour tour = new ETour();
                tour.tourname = i1;
                sqlCon.Open();
                string query = "Select [dep_date] from [tour] where tourname=@TourName";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@TourName", i1);
                tour.dep_date = sqlCmd.ExecuteScalar().ToString();

                query = "Select [vehicle] from [tour] where tourname=@TourName";
                sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@TourName", i1);
                tour.vehicle = sqlCmd.ExecuteScalar().ToString();

                query = "Select [location_name] from [tour] where tourname=@TourName";
                sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@TourName", i1);
                tour.location_name = sqlCmd.ExecuteScalar().ToString();

                query = "Select [guide_cnic] from [tour] where tourname=@TourName";
                sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@TourName", i1);
                tour.guide_cnic = sqlCmd.ExecuteScalar().ToString();         



               

                return tour;
            }
        }
    }
}
