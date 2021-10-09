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

   
    public class OrdersController : Controller
    {
        private CarContext db = new CarContext();

        // GET: Orders
        public ActionResult Index(string sortOrder, string currentFilter, string SearchString, int? page)
        {
            ViewBag.currentFilter = sortOrder;
            if (SearchString != null)
            {
                page = 1;
            }
            else
            {
                SearchString = currentFilter;
            }

            ViewBag.CurrentFilter = SearchString;

            ViewBag.StartTimeSortParm = String.IsNullOrEmpty(sortOrder) ? "StartTime" : "";
            ViewBag.TotalRentSortParm = sortOrder == "TotalRent" ? "totalRent_desc" : "TotalRent";
            ViewBag.EndTimeSortParm = sortOrder == "EndTime" ? "endTime_desc" : "EndTime";
            ViewBag.SalesmanNameSortParm = sortOrder == "SalesmanName" ? "salesmanName_desc" : "SalesmanName";
            var orders = from s in db.Order select s;

            var DriverIdLst = new List<long>();
            long value = Convert.ToInt64(SearchString);
            var DriverIdQry = from d in db.Order
                              orderby d.DriverId
                              select d.DriverId;
            DriverIdLst.AddRange(DriverIdQry.Distinct());
            if (!string.IsNullOrEmpty(SearchString))
            {
                orders = orders.Where(s => s.DriverId == value);
            }

            switch (sortOrder)
            {
                case "StartTime":
                    orders = orders.OrderBy(s => s.StartTime);
                    break;
                case "totalRent_desc":
                    orders = orders.OrderByDescending(s => s.TotalRent);
                    break;
                case "TotalRent":
                    orders = orders.OrderBy(s => s.TotalRent);
                    break;
                case "endTime_desc":
                    orders = orders.OrderByDescending(s => s.EndTime);
                    break;
                case "EndTime":
                    orders = orders.OrderBy(s => s.EndTime);
                    break;
                case "salesmanName_desc":
                    orders = orders.OrderByDescending(s => s.SalesmanName);
                    break;
                case "SalesmanName":
                    orders = orders.OrderBy(s => s.SalesmanName);
                    break;
                default:
                    orders = orders.OrderByDescending(s => s.StartTime);
                    break;
            }

            int pageSize = 6;
            int pageNumber = (page ?? 1);
            return View(orders.ToPagedList(pageNumber, pageSize));
        }


        // GET: Orders/Details/5
        [FunctionFilter(0)]
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Order order = db.Order.Find(id);
            
            if (order == null)
            {
                return View("ErrorHttpNotFound");
            }
            return View(order);
        }
        // GET: Orders/Create
        [FunctionFilter(0)]
        public ActionResult Create()
        {
            return View();
        }

        // POST: Orders/Create
        // 为了防止“过多发布”攻击，请启用要绑定到的特定属性；有关
        // 更多详细信息，请参阅 https://go.microsoft.com/fwlink/?LinkId=317598。
        [HttpPost]
        [ValidateAntiForgeryToken]
        [FunctionFilter(0)]
        public ActionResult Create([Bind(Include = "OrderId,DriverId,CarId,TotalRent,StartTime,EndTime,SalesmanName")] Order order)
        {
            if (ModelState.IsValid)
            {
                db.Order.Add(order);
                db.SaveChanges();
                /*  改变车辆的租赁状态  */
                Car car = db.Car.Find(order.CarId);
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

                return RedirectToAction("Index");
            }

            return View(order);
        }

        // GET: Orders/Edit/5
        [FunctionFilter(2)]
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Order order = db.Order.Find(id);
            if (order == null)
            {
                return HttpNotFound();
            }
            return View(order);
        }

        // POST: Orders/Edit/5
        // 为了防止“过多发布”攻击，请启用要绑定到的特定属性；有关
        // 更多详细信息，请参阅 https://go.microsoft.com/fwlink/?LinkId=317598。
        [HttpPost]
        [ValidateAntiForgeryToken]
        [FunctionFilter(2)]
        public ActionResult Edit([Bind(Include = "OrderId,DriverId,CarId,TotalRent,StartTime,EndTime,SalesmanName")] Order order)
        {
            if (ModelState.IsValid)
            {
                db.Entry(order).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(order);
        }

        // GET: Orders/Delete/5
        [FunctionFilter(2)]
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Order order = db.Order.Find(id);
            if (order == null)
            {
                return HttpNotFound();
            }
            return View(order);
        }

        // POST: Orders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [FunctionFilter(2)]
        public ActionResult DeleteConfirmed(long id)
        {
            Order order = db.Order.Find(id);
            db.Order.Remove(order);
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
