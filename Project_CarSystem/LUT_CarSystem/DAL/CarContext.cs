using LUT_CarSystem.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;

namespace LUT_CarSystem.DAL
{
    public class CarContext : DbContext
    {
        public CarContext() : base("CarContext")
        {
        }

        public DbSet<Car> Car { get; set; }
        public DbSet<Driver> Driver { get; set; }
        public DbSet<Order> Order { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
}