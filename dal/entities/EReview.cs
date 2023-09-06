using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dal.Entities
{
    public class EReview
    {
        public string touristID { get; set; }
        public string tourID { get; set; }
        public string feedback { get; set; }
        public int rating { get; set; }
        public string complaints { get; set; }
    }
}









//create table Tourist_Feedback(
//TouristID int foreign key references [USER](USERID)
//on update cascade on delete no action,
//Tourid int foreign key references Tour(tourID),
//Feedback varchar(500),
//Rating INT,
//Complaints VARCHAR(500),
//primary key(touristID, tourID)
//);