using CompanyRecordMvc.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CompanyRecordMvc.Controllers
{
    public class CompanyRecordController : Controller
    {
        private CompnayContext db = new CompnayContext();

        // GET: CompanyRecord
        public ActionResult Index()
        {
            return View(db.Company.ToList());
        }

        // GET: CompanyRecord/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: CompanyRecord/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: CompanyRecord/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Company Company)
        {
            try
            {
                
                    db.Company.Add(Company);
                    db.SaveChanges();
                    ViewBag.Success = "Data Inserted Successfully";
                    return RedirectToAction("Index");
              
            }
            catch
            {
                return View();
            }
        }

        // GET: CompanyRecord/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: CompanyRecord/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: CompanyRecord/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: CompanyRecord/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
