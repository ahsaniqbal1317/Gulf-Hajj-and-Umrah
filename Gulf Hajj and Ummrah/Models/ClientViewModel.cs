using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Gulf_Hajj_and_Ummrah.Models
{
    public class ClientViewModel
    {
        //client table details
        public int clientid { get; set; }
        public string name { get; set; }
        public string dispatched_to { get; set; }
        public string phone_number { get; set; }
        public string address { get; set; }
        public Nullable<System.DateTime> date { get; set; }
        public string passport_doc { get; set; }
        public string shirka { get; set; }
        public string picture { get; set; }
        public string reference_by { get; set; }
        public string reference_contact_number { get; set; }

        // hotel table details
        public int h_id { get; set; }
        public string hotel_name { get; set; }
        public Nullable<System.TimeSpan> checkin_time { get; set; }
        public Nullable<System.TimeSpan> checkout_time { get; set; }

        // package details table
        public int packageid { get; set; }
        public string package_name { get; set; }
        public string no_of_days { get; set; }
        public Nullable<System.DateTime> date_of_departure { get; set; }
        public Nullable<System.DateTime> date_of_arrival { get; set; }
        public string pnr { get; set; }
        public string other_details { get; set; }

        // flight details table
        public int id { get; set; }
        public string airline_name { get; set; }
        public Nullable<int> departure_from { get; set; }
        public Nullable<int> arrirved_at { get; set; }
        public Nullable<System.TimeSpan> departure_time { get; set; }
        public Nullable<System.TimeSpan> arrival_time { get; set; }
        public Nullable<System.DateTime> dateOfFlight { get; set; }

        //Cities
        public int cityid { get; set; }
        public string cityname { get; set; }

        //Roomtype
        public int roomTypeId { get; set; }
        public string type_of_room { get; set; }
    }
}