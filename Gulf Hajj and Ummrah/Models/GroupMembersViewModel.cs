using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Gulf_Hajj_and_Ummrah.Models
{
    public class GroupMembersViewModel
    {
        public group_of_people_details_tbl addmember { get; set; }
        public Nullable<bool> isDeleted { get; set; }

        public List<group_of_people_details_tbl> members { get; set; }

        public Double? totalAmount { get; set; }
       

        public client_details_tbl client_Details_Tbl { get; set; }

    }
}