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
    
    public partial class airline_tbl
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public airline_tbl()
        {
            this.flight_details_tbl = new HashSet<flight_details_tbl>();
        }
    
        public int id { get; set; }
        public string airlineName { get; set; }
        public Nullable<bool> isDeleted { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<flight_details_tbl> flight_details_tbl { get; set; }
    }
}
