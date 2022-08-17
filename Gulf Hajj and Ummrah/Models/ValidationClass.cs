using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Gulf_Hajj_and_Ummrah.Models
{
    public class ValidationClass
    {
        [Required]
        public string cityname { get; set; }
    }
    [MetadataType(typeof(ValidationClass))]
    public partial class cities_tbl
    {

    }

    public class RoomTypeValidation
    {
        [Required]
        public string type_of_room { get; set; }
    }
    [MetadataType(typeof(RoomTypeValidation))]
    public partial class roomtype_tbl
    {

    }

    public class AirlineValidation
    {
        [Required]
        public string airlineName { get; set; }
    }
    [MetadataType(typeof(AirlineValidation))]
    public partial class airline_tbl
    {

    }
    public class UserValidation
    {
        [Required]
        public string name { get; set; }
        [Required]
        public string username { get; set; }
        [Required]
        [DataType(DataType.EmailAddress)]
        public string email { get; set; }
        [Required]
        public string password { get; set; }
        [Required]
        public string address { get; set; }
    }
    [MetadataType(typeof(UserValidation))]
    public partial class user_tbl
    {
    }

    //public class FlightValidation
    //{
    //    [Required]
    //    public Nullable<int> airline_name { get; set; }
    //    [Required]
    //    public string ticketNo { get; set; }
    //    [Required]
    //    public Nullable<int> departure_from { get; set; }
    //    [Required]
    //    public Nullable<int> arrirved_at { get; set; }
    //    [Required]
    //    public Nullable<System.TimeSpan> departure_time { get; set; }
    //    [Required]
    //    public string returnTicketNumber { get; set; }
    //    [Required]
    //    public Nullable<System.TimeSpan> arrival_time { get; set; }
    //    [Required]
    //    public Nullable<int> airlineNameReturn { get; set; }
    //    [Required]
    //    public Nullable<int> returnArrival { get; set; }
    //    [Required]
    //    public Nullable<int> returnDeparture { get; set; }
    //    [Required]
    //    public Nullable<System.DateTime> dateOfReturn { get; set; }
    //}
    //[MetadataType(typeof(FlightValidation))]
    //public partial class flight_details_tbl
    //{

    //}

    //public class ClientValidation
    //{
    //    [Required]
    //    public string name { get; set; }
    //    [Required]
    //    public string dispatched_to { get; set; }
    //    [Required]

    //    public string passportNumber { get; set; }
    //    [Required]
    //    public string hotelVoucherNo { get; set; }
    //    [Required]
    //    //[RegularExpression(@"^(\d\d\d\d\d\d\d\d\d\d\d)?$", ErrorMessage = "Please Enter Valid Phone NO")]
    //    public string phone_number { get; set; }

    //    public string whatsAppNumber { get; set; }
    //    [Required]
    //    public string address { get; set; }
    //    public Nullable<System.DateTime> date { get; set; }
    //    public string passport_doc { get; set; }
    //    [Required]
    //    public string shirka { get; set; }
    //    public string picture { get; set; }
    //    [Required]
    //    public string reference_by { get; set; }
    //    [Required]
    //    public string reference_contact_number { get; set; }

    //}
    //[MetadataType(typeof(ClientValidation))]
    //public partial class client_details_tbl
    //{

    //}



    //public class GroupOfPeopleValidation
    //{
    //    [Required]
    //    public string name { get; set; }
    //    [Required]
    //    public string passport_number { get; set; }
    //    [Required]
    //    public string phoneNumber { get; set; }
    //    [Required]
    //    public Nullable<double> packageAmount { get; set; }
    //    [Required]
    //    public Nullable<double> airlineAmount { get; set; }
    //    [Required]
    //    public Nullable<double> visaAmount { get; set; }
    //    [Required]
    //    public Nullable<double> transportAmount { get; set; }
    //    [Required]
    //    public Nullable<double> ticketAmount { get; set; }
    //}
    //[MetadataType(typeof(GroupOfPeopleValidation))]
    //public partial class group_of_people_details_tbl
    //{
    //}

    //public class HotelValidation
    //{
    //    [Required]
    //    public string hotel_name { get; set; }
    //    [Required]
    //    public string hotelNameMadina { get; set; }
    //    [Required]
    //    public Nullable<int> daysMakkah { get; set; }
    //    [Required]
    //    public Nullable<int> daysMadina { get; set; }
    //}
    //[MetadataType(typeof(HotelValidation))]
    //public partial class hotel_details_tbl
    //{
    //}

    //public class PackageValidation
    //{
    //    [Required]
    //    public string package_name { get; set; }
    //    [Required]
    //    public string no_of_days { get; set; }
    //    [Required]
    //    public string packageCost { get; set; }
    //    [Required]
    //    public string airlineCost { get; set; }
    //    [Required]
    //    public string visaCost { get; set; }
    //    [Required]
    //    public string transportCost { get; set; }
    //    [Required]
    //    public string costWithTicket { get; set; }
    //    [Required]
    //    public string pnr { get; set; }
    //    [Required]
    //    public string other_details { get; set; }
    //}
    //[MetadataType(typeof(PackageValidation))]
    //public partial class package_details_tbl
    //{

    //}

    //public class TransportValidation
    //{
    //    [Required]
    //    public string vechile_type { get; set; }
    //    [Required]
    //    public string route { get; set; }
    //    [Required]
    //    public Nullable<System.DateTime> date { get; set; }
    //}
    //[MetadataType(typeof(TransportValidation))]
    //public partial class transportation_details_tbl
    //{

    //}
}


