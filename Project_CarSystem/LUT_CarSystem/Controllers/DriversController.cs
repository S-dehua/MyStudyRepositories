using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using LUT_CarSystem.DAL;
using LUT_CarSystem.Models;
using PagedList;

namespace LUT_CarSystem.Controllers
{
    public class DriversController : Controller
    {
        private CarContext db = new CarContext();

        // GET: Drivers
        [FunctionFilter(2)]
        public ActionResult Index(string sortDriver, string currentFilter, string SearchString,int? page)
        {
            ViewBag.currentFilter = sortDriver;
            if (SearchString!=null)
            {
                page = 1;
            }
            else
            {
                SearchString = currentFilter;
            }

            ViewBag.CurrentFilter = SearchString;

            ViewBag.NameSortParm = String.IsNullOrEmpty(sortDriver) ? "Name" : "";
            ViewBag.GenderSortParm = sortDriver == "Gender" ? "gender_desc" : "Gender";
            ViewBag.AddressSortParm = sortDriver == "Address" ? "address_desc" : "Address";
            ViewBag.PowerSortParm = sortDriver == "Power" ? "power_desc" : "Power";
            var drivers = from s in db.Driver select s;

            var NameLst = new List<string>();
            var NameQry = from s in db.Driver select s.Name;
            NameLst.AddRange(NameQry.Distinct());
            if (!string.IsNullOrEmpty(SearchString))
            {
                drivers = drivers.Where(s => s.Name.Equals(SearchString));
            }

            switch (sortDriver)
            {
                case "Name":
                    drivers = drivers.OrderBy(s => s.Name);
                    break;
                case "gender_desc":
                    drivers = drivers.OrderByDescending(s => s.Gender);
                    break;
                case "Gender":
                    drivers = drivers.OrderBy(s => s.Gender);
                    break;
                case "address_desc":
                    drivers = drivers.OrderByDescending(s => s.Address);
                    break;
                case "Address":
                    drivers = drivers.OrderBy(s => s.Address);
                    break;
                case "power_desc":
                    drivers = drivers.OrderByDescending(s => s.Power);
                    break;
                case "Power":
                    drivers = drivers.OrderBy(s => s.Power);
                    break;
                default:
                    drivers = drivers.OrderByDescending(s => s.Name);
                    break;
            }
            int pageSize = 6;
            int pageNumber = (page ?? 1);
            return View(drivers.ToPagedList(pageNumber,pageSize));
        }

        // GET: Drivers/Details/5
        [FunctionFilter(0)]
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Driver driver = db.Driver.Find(id);
            if (driver == null)
            {
                return HttpNotFound();
            }
            return View(driver);
        }

        // GET: Drivers/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Drivers/Create
        // 为了防止“过多发布”攻击，请启用要绑定到的特定属性；有关
        // 更多详细信息，请参阅 https://go.microsoft.com/fwlink/?LinkId=317598。
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "DriverId,Name,Password,Gender,Phone,Email,Address,Power")] Driver driver)
        {
            if (ModelState.IsValid)
            {
                db.Driver.Add(driver);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(driver);
        }

        // GET: Drivers/Edit/5
        [FunctionFilter(2)]
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Driver driver = db.Driver.Find(id);
            if (driver == null)
            {
                return HttpNotFound();
            }
            return View(driver);
        }

        // POST: Drivers/Edit/5
        // 为了防止“过多发布”攻击，请启用要绑定到的特定属性；有关
        // 更多详细信息，请参阅 https://go.microsoft.com/fwlink/?LinkId=317598。
        [HttpPost]
        [ValidateAntiForgeryToken]
        [FunctionFilter(2)]
        public ActionResult Edit([Bind(Include = "DriverId,Name,Password,Gender,Phone,Email,Address,Power")] Driver driver)
        {
            if (ModelState.IsValid)
            {
                db.Entry(driver).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(driver);
        }

        // GET: Drivers/Delete/5
        [FunctionFilter(2)]
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Driver driver = db.Driver.Find(id);
            if (driver == null)
            {
                return HttpNotFound();
            }
            return View(driver);
        }

        // POST: Drivers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [FunctionFilter(2)]
        public ActionResult DeleteConfirmed(long id)
        {
            Driver driver = db.Driver.Find(id);
            db.Driver.Remove(driver);
            db.SaveChanges();
            return RedirectToAction("Index");
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
