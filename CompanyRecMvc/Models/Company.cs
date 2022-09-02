using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace CompanyRecordMvc.Models
{
    [Table("Company")]
    public class Company
    {
        [Key]
        public int CompanyId { get; set; }

        [Required(ErrorMessage = "Please enter your Company Name")]
        [StringLength(maximumLength:20, MinimumLength =5)]
        public string CompanyName { get; set; }

        [Display(Name = "Email Address")] [DataType(DataType.EmailAddress)]
        [Required(ErrorMessage = "Please enter your email address")]
        public string Emailaddress { get; set; }

        [Display(Name = "Newsletter")]
        public bool Newsletter { get; set; }
    }
}