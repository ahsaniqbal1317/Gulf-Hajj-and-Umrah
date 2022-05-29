using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Gulf_Hajj_and_Ummrah.Models
{
    public class Validation_Class
    {
        [Required]
        public string name { get; set; }
        [Required]
        public string dispatched_to { get; set; }
        [Required]
        public string passportNumber { get; set; }
        [Required]
        public string hotelVoucherNo { get; set; }
        [Required]
        public string phone_number { get; set; }
        [Required]
        public string address { get; set; }
        [Required]
        public string shirka { get; set; }
        [Required]
        public Nullable<System.DateTime> date { get; set; }
        [Required]
        public string reference_by { get; set; }
        [Required]
        public string reference_contact_number { get; set; }
    }
    [MetadataType(typeof(Validation_Class))]
    public partial class client_details_tbl
    {
    }
    public class FlightValidation
    {
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
        public Nullable<System.TimeSpan> arrival_time { get; set; }
    }
    [MetadataType(typeof(FlightValidation))]
    public partial class flight_details_tbl
    {
    }

    public class HotelValidation
    {
        [Required]
        public string hotel_name { get; set; }
        [Required]
        public string hotelNameMadina { get; set; }
        [Required]
        public Nullable<System.TimeSpan> checkin_time { get; set; }
        [Required]
        public Nullable<System.TimeSpan> checkout_time { get; set; }
    }
    [MetadataType(typeof(HotelValidation))]
    public partial class hotel_details_tbl
    {
    }

    public class PackageValidation
    {
        [Required]
        public string package_name { get; set; }
        [Required]
        public string no_of_days { get; set; }
        [Required]
        public Nullable<System.DateTime> date_of_departure { get; set; }
        [Required]
        public Nullable<System.DateTime> date_of_arrival { get; set; }
        [Required]
        public string pnr { get; set; }
        [Required]
        public string other_details { get; set; }
    }
    [MetadataType(typeof(PackageValidation))]
    public partial class package_details_tbl
    {
    }

    public class TransportationValidation
    {
        [Required]
        public string vechile_type { get; set; }
        [Required]
        public string route { get; set; }
        [Required]
        public Nullable<System.DateTime> date { get; set; }
    }
    [MetadataType(typeof(TransportationValidation))]
    public partial class transportation_details_tbl
    {
    }
}