using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CompanyRecMvc.Models;
using CompanyRecordMvc.Models;

namespace CompanyRecMvc.Controllers
{
    public class CompanyController : Controller
    {
        private CompanyDbContext db = new CompanyDbContext();

        public ActionResult Index()
        {
            return View(db.Company.ToList());
        }

       

        
        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Company company)
        {
            if (ModelState.IsValid)
            {
                if(db.Company.Any(x=>x.CompanyName==company.CompanyName))
                {
                    ViewBag.Error = "Compmay Name is already Exist";
                    return View(company);
                }
                db.Company.Add(company);
                if(db.SaveChanges()>0)
                {
                    ViewBag.Success = "Company created";
                    return View(company);
                }

            }

            return View(company);
        }

      

       
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
