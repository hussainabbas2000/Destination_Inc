using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using dal.Entities;
using dal.Operations;
using System.Data.Odbc;

namespace WebApplication5
{
    public partial class review : System.Web.UI.Page
    {
        string str = "Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            sm.Text = "New review Submitted Successfully";
            sm.Visible = false;

            if (!IsPostBack)
            {
                fill();
            }
        }
        public void fill()
        {
            TextBox2.Text = Session["Username"].ToString();
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-E3EOGA4;Initial Catalog=Destination_inc;Integrated Security=True"))
            {
                sm.Visible = false;
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = sqlCon;
                cmd.CommandText = "user1booking";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter("@username", Session["Username"].ToString());
                cmd.Parameters.Add(p1);
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    ListItem listItem = new ListItem();

                    listItem.Text = rdr["tourname"].ToString();
                    listItem.Value = rdr["tourname"].ToString();
                    tournames.Items.Add(listItem);
                }
               
                sqlCon.Close();
            }
        }
        protected void SubmitReview(object sender, EventArgs e)
        {
            EReview rev=new EReview();
            OReview Oreview=new OReview();
            rev.complaints = tbox2.Text;
            rev.feedback = tbox1.Text;
            if (radiobutton1.Checked)
            {
                rev.rating = 1;
            }
            else if(radiobutton2.Checked)
            {
                rev.rating = 2;
            }
            else if (radiobutton3.Checked)
            {
                rev.rating = 3;
            }
            else if (radiobutton4.Checked)
            {
                rev.rating = 4;
            }
            else
            {
                rev.rating = 5;
            }
            rev.tourID = tournames.SelectedValue;
            rev.touristID = Session["Username"].ToString();
            int check=Oreview.insert(rev);
            if (check==2)
            {
                sm.Visible = true;
            }
            else
            {
                sm.Text = "Tour constraint";
                sm.Visible = true;
            }
        }
    }
}
