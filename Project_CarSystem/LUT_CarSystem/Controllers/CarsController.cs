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
    public class CarsController : Controller
    {
        private CarContext db = new CarContext();

        // GET: Cars
        
        public ActionResult Index(string sortCar, string currentFilter, string SearchString, int? page,string CarName)
        {
            ViewBag.currentFilter = sortCar;
            if (SearchString != null)
            {
                page = 1;
            }
            else
            {
                SearchString = currentFilter;
            }

            ViewBag.CurrentFilter = SearchString;

            ViewBag.TypeSortParm = String.IsNullOrEmpty(sortCar) ? "type_desc" : "";
            ViewBag.MoneySortParm = sortCar == "Money" ? "money_desc" : "Money";
            ViewBag.StateSortParm = sortCar == "State" ? "state_desc" : "State";
            var cars = from s in db.Car select s;

            var TypeLst = new List<string>();
            string value = SearchString;
            var TypeQry = from d in db.Car
                          select d.Type;
            TypeLst.AddRange(TypeQry.Distinct());
            if (!string.IsNullOrEmpty(SearchString))
            {
                cars = cars.Where(s => s.Type == value);
            }
            if (!string.IsNullOrEmpty(CarName))
            {
                cars = cars.Where(s => s.CarName == CarName);
            }

            switch (sortCar)
            {
                case "type_desc":
                    cars = cars.OrderByDescending(s => s.Type);
                    break;
                case "Money":
                    cars = cars.OrderBy(s => s.Money);
                    break;
                case "money_desc":
                    cars = cars.OrderByDescending(s => s.Money);
                    break;
                case "State":
                    cars = cars.OrderBy(s => s.State);
                    break;
                case "state_desc":
                    cars = cars.OrderByDescending(s => s.State);
                    break;
                default:
                    cars = cars.OrderBy(s => s.Type);
                    break;
            }
            int pageSize = 6;
            int pageNumber = (page ?? 1);
            return View(cars.ToPagedList(pageNumber, pageSize));
        }

        // GET: Cars/Details/5
        [FunctionFilter(0)]
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Car car = db.Car.Find(id);
            if (car == null)
            {
                return HttpNotFound();
            }
            return View(car);
        }

        // GET: Cars/Create
        [FunctionFilter(2)]
        public ActionResult Create()
        {
            return View();
        }

        // POST: Cars/Create
        // 为了防止“过多发布”攻击，请启用要绑定到的特定属性；有关
        // 更多详细信息，请参阅 https://go.microsoft.com/fwlink/?LinkId=317598。
        [HttpPost]
        [ValidateAntiForgeryToken]
        [FunctionFilter(2)]
        public ActionResult Create([Bind(Include = "CarId,Type,CarName,Money,State")] Car car)
        {
            if (ModelState.IsValid)
            {
                db.Car.Add(car);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(car);
        }

        // GET: Cars/Edit/5
        [FunctionFilter(2)]
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Car car = db.Car.Find(id);
            if (car == null)
            {
                return HttpNotFound();
            }
            return View(car);
        }

        // POST: Cars/Edit/5
        // 为了防止“过多发布”攻击，请启用要绑定到的特定属性；有关
        // 更多详细信息，请参阅 https://go.microsoft.com/fwlink/?LinkId=317598。
        [HttpPost]
        [ValidateAntiForgeryToken]
        [FunctionFilter(2)]
        public ActionResult Edit([Bind(Include = "CarId,Type,CarName,Money,State")] Car car)
        {
            if (ModelState.IsValid)
            {
                db.Entry(car).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(car);
        }

        // GET: Cars/Delete/5
        [FunctionFilter(2)]
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Car car = db.Car.Find(id);
            if (car == null)
            {
                return HttpNotFound();
            }
            return View(car);
        }

        // POST: Cars/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [FunctionFilter(2)]
        public ActionResult DeleteConfirmed(int id)
        {
            Car car = db.Car.Find(id);
            db.Car.Remove(car);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpGet, ActionName("Rent")]
        [FunctionFilter(2)]
        public ActionResult Rent(int id)
        {
            Car car = db.Car.Find(id);
            if (car.State == 0)
            {
                car.State = 1;
                db.Entry(car).State = EntityState.Modified;
                db.SaveChanges();
                ViewBag.Message = "成功租赁了" + car.CarName;
            }
            else if (car.State == 1)
            {
                ViewBag.Message = car.CarName + "已经被租赁了，请挑选其它车辆";
            }
            else
            {
                ViewBag.Message = car.CarName + "正在维修中";
            }
            //return View(car);
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
