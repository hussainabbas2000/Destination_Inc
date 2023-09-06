using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace dal.Entities
{
    public class ELocation
    {
        public string location_name { get; set; }
        public string state_name { get; set; }
        public string city_name { get; set; }
        public string country_name { get; set; }
        public int cost { get; set; }
    }
}
//create table[Location](
//location_name varchar(30) primary key,
//state_name varchar(30),
//city_name varchar(30),
//country_name varchar(30)
//);