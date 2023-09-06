using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dal.Entities
{
    public class EUser
    {
        public string UserId { get; set; }
        public string name { get; set; }
        public string password { get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public string dob { get; set; }
        public string cnic { get; set; }
    }
}
