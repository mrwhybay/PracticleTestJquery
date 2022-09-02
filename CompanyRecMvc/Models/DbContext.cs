using CompanyRecordMvc.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace CompanyRecMvc.Models
{

    public class CompanyDbContext : DbContext
    {
       
        public CompanyDbContext() : base("name=CompanyDbContext")
        {
        }


        public DbSet<Company> Company { get; set; }
    }

}