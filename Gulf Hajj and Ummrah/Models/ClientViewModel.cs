using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Gulf_Hajj_and_Ummrah.Models
{
    public class ClientViewModel
    {
        //transportation Details
        public int transportationid { get; set; }
        public string vechile_type { get; set; }
        public string route { get; set; }
        public Nullable<System.DateTime> tranportationdate { get; set; }

        public Nullable<bool> isDeletedTransport { get; set; }

        //client table details
        public int clientid { get; set; }
        [Required]
        public string name { get; set; }
        [Required]
        public string dispatched_to { get; set; }
        [Required]
        
        public string passportNumber { get; set; }
        [Required]
        public string hotelVoucherNo { get; set; }
        [Required]
        //[RegularExpression(@"^(\d\d\d\d\d\d\d\d\d\d\d)?$", ErrorMessage = "Please Enter Valid Phone NO")]
        public string phone_number { get; set; }

        public string whatsAppNumber { get; set; }
        [Required]
        public string address { get; set; }
        public Nullable<System.DateTime> date { get; set; }
        public string passport_doc { get; set; }
        [Required]
        public string shirka { get; set; }
        public string picture { get; set; }
        [Required]
        public string reference_by { get; set; }
        [Required]
        public string reference_contact_number { get; set; }

        public Nullable<bool> isDeletedClient { get; set; }

        // hotel table details
        public int h_id { get; set; }
        [Required]
        public string hotel_name { get; set; }
        [Required]
        public string hotelNameMadina { get; set; }
        [Required]
        public Nullable<int> roomtype_id { get; set; }
        [Required]
        public Nullable<int> daysMakkah { get; set; }
        [Required]
        public Nullable<int> daysMadina { get; set; }
        public Nullable<bool> isDeletedHotel { get; set; }

        // package details table
        public int packageid { get; set; }
        [Required]
        public string package_name { get; set; }
        [Required]
        public string no_of_days { get; set; }
        [Required]
        public string packageCost { get; set; }
        [Required]
        public string airlineCost { get; set; }
        [Required]
        public string visaCost { get; set; }
        [Required]
        public string transportCost { get; set; }
        [Required]
        public string costWithTicket { get; set; }
        [Required]
        public string pnr { get; set; }
        public string other_details { get; set; }
        public Nullable<bool> isDeletedPackage { get; set; }

        // flight details table
        public int Fid { get; set; }
        [Required]
        public Nullable<int> airline_name { get; set; }
        [Required]
        public string ticketNo { get; set; }
        [Required]
        public Nullable<int> departure_from { get; set; }
        [Required]
        public Nullable<int> arrirved_at { get; set; }
        [Required]
        public Nullable<System.TimeSpan> departure_time { get; set; }
        [Required]
        public string returnTicketNumber { get; set; }
        [Required]
        public Nullable<System.TimeSpan> arrival_time { get; set; }
        [Required]
        public Nullable<System.DateTime> dateOfFlight { get; set; }
        public Nullable<int> airlineNameReturn { get; set; }
        public Nullable<int> returnArrival { get; set; }
        public Nullable<int> returnDeparture { get; set; }
        public Nullable<System.DateTime> dateOfReturn { get; set; }
        public Nullable<bool> isDeletedFlight { get; set; }

        //Billing Details Table

        public billing_details_tbl Billing_Details_Tbl { get; set; }


        //Cities
        public int cityid { get; set; }
        [Required]
        public string cityname { get; set; }

        //Roomtype
        public int roomTypeId { get; set; }
        public string type_of_room { get; set; }

        //Airline
        public int id { get; set; }
        public string airlineName { get; set; }
    }
}