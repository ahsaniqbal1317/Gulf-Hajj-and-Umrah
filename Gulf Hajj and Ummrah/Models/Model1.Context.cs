﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Gulf_HUEntities : DbContext
    {
        public Gulf_HUEntities()
            : base("name=Gulf_HUEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<billing_details_tbl> billing_details_tbl { get; set; }
        public virtual DbSet<cities_tbl> cities_tbl { get; set; }
        public virtual DbSet<client_details_tbl> client_details_tbl { get; set; }
        public virtual DbSet<flight_details_tbl> flight_details_tbl { get; set; }
        public virtual DbSet<group_of_people_details_tbl> group_of_people_details_tbl { get; set; }
        public virtual DbSet<hotel_details_tbl> hotel_details_tbl { get; set; }
        public virtual DbSet<package_details_tbl> package_details_tbl { get; set; }
        public virtual DbSet<roomtype_tbl> roomtype_tbl { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<transportation_details_tbl> transportation_details_tbl { get; set; }
    }
}
