using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dal.Entities;
using System.Data.SqlClient;
namespace dal.Operations
{
    public class OBooking
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True");
        public int insert(EBooking booking)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                SqlCommand cmd;
                sqlCon.Open();
                cmd = new SqlCommand("insert into [bookings] ([tourname], [username] ,[no_of_passengers],[class]) values('" + booking.tourname + "', '" + booking.usrname + "',  '" + booking.passengerNo + "','" + booking.type + "')", sqlCon);
                int check = cmd.ExecuteNonQuery();
                con.Close();
                return check;
            }
        }
        public int insert2(EBooking booking,ETour tour)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                SqlCommand cmd;
                sqlCon.Open();
                cmd = new SqlCommand("insert into [tour] ([tourname], [dep_date] ,[vehicle],[location_name],[guide_cnic]) values('" +tour.tourname + "', '" + tour.dep_date + "',  '" + tour.vehicle + "','" + tour.location_name + "','" + tour.location_name + "')", sqlCon);
                int check = cmd.ExecuteNonQuery();
                SqlCommand s;
                s = new SqlCommand("insert into [bookings] ([tourname], [username] ,[no_of_passengers],[class]) values('" + booking.tourname + "', '" + booking.usrname + "',  '" + booking.passengerNo + "','" + booking.type + "')", sqlCon);


                check =(int) s.ExecuteScalar();
                con.Close();
                return check;
            }
        }
        public int select(string input1, string input2, DateTime i3)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM [bookings] WHERE Username=@Username AND Tourname=@TourName AND dep_date=@DepDate";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@TourName", input1);
                sqlCmd.Parameters.AddWithValue("@Username", input2);
                sqlCmd.Parameters.AddWithValue("@DepDate", i3);
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                return count;

            }
        }
        public int getaddprice(string i1,string i2)
        {

            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                SqlParameter p1 = new SqlParameter("@tourname",i2);
                SqlParameter p2 = new SqlParameter("@username",i1);                
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                cmd.Parameters.Add("@retValue",System.Data.SqlDbType.Int).Direction=System.Data.ParameterDirection.ReturnValue;
                cmd.Connection = con;
                cmd.CommandText = "caladdcost";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();
                int count = (int)cmd.Parameters["@retValue"].Value;
                con.Close();
                //sqlCon.Open();
                
                //string query = "exec caladdcost @tourname=tourname, @username=username";
                //SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                //sqlCmd.Parameters.AddWithValue("@tourname", i1);
                //sqlCmd.Parameters.AddWithValue("@username", i2);              
                //int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                return count;
            }

        }
    }
}
