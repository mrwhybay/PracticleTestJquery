using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace CompanyRecordMvc.Models
{
    public class CompnayContext : DbContext
    {
        public CompnayContext() : base("name=CompnayContext")
        {
        }
        public DbSet<Company> Company { get; set; }
    }
}