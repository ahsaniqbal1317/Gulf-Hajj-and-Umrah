//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Gulf_Hajj_and_Ummrah.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class flight_details_tbl
    {
        public int id { get; set; }
        public Nullable<int> airline_name { get; set; }
        public string ticketNo { get; set; }
        public Nullable<int> departure_from { get; set; }
        public Nullable<int> arrirved_at { get; set; }
        public Nullable<System.TimeSpan> departure_time { get; set; }
        public Nullable<System.TimeSpan> arrival_time { get; set; }
        public Nullable<System.DateTime> date { get; set; }
        public Nullable<int> client_id { get; set; }
        public Nullable<bool> isDeleted { get; set; }
    
        public virtual airline_tbl airline_tbl { get; set; }
        public virtual cities_tbl cities_tbl { get; set; }
        public virtual cities_tbl cities_tbl1 { get; set; }
        public virtual client_details_tbl client_details_tbl { get; set; }
    }
}
