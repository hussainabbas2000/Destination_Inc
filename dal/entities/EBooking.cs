using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dal.Entities
{
    public class EBooking
    {
        public string tourname { get; set; }
        public string usrname { get; set; }
        public DateTime DepDate { get; set; }
    
        public int passengerNo { get; set; }
        public string type { get; set; }

        public string guide { get; set; }
        public string loc_name { get; set; }

    }
}
