using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using dal.Entities;
namespace dal.Operations
{
    public class OReview
    {
        public int insert(EReview review)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True");
            SqlCommand cmd;
            con.Open();
            cmd = new SqlCommand("insert into [review] ([tourname], [username], [neg_comments] ,[pos_comments],[rating]) values('" + review.tourID + "', '" + review.touristID + "', '" + review.complaints + "', '" + review.feedback + "','" + review.rating + "')", con);
            int check = cmd.ExecuteNonQuery();
            con.Close();
            return check;
        }
        public void delete()
        {

        }
        public void select()
        {

        }
        public void update()
        {

        }
    }
}
