using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dal.Entities
{
    public class ETour
    {
        public string tourname { get; set; }
        
        public string dep_date { get; set; }
        public string vehicle { get; set; }
        public string location_name { get; set; }
        public string guide_cnic { get; set; }
    }
}
//create table tour(
//tourname varchar(30) primary key,
//tourtype varchar(30),
//vehicle varchar(20),
//location_name varchar(30) foreign key references location(location_name) on update cascade on delete cascade,
//guide_cnic varchar(16) foreign key references guide(cnic) on update no action on delete no action
//);