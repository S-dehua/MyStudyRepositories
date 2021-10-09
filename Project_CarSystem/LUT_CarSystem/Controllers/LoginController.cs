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

namespace LUT_CarSystem.Controllers
{
    public class LoginController : Controller
    {
        private CarContext db = new CarContext();
        private DBUtils dBUtils = new DBUtils();
        // GET: Login
        public ActionResult Login()
        {
            return View();
        }
        public ActionResult Regist()
        {
            return View();
        }

        
        public ActionResult Logout()
        {
            Session.RemoveAll();
            return Redirect("~/Home/Index");
        }
        [HttpPost]
        public ActionResult VerfiyLogin(string Name, string Password)
        {

                int i = dBUtils.GetUserByUsernameAndPwd(Name, Password);
                if (i != 0)
                {
                    
                    Driver d = dBUtils.getDriver(Name, Password);
                    System.Diagnostics.Debug.WriteLine("====INFO====" + d.Address);
                    //Server.HtmlEncode("UTF-8");
                    Session.Add("user", d);
                    Session.Add("Power", d.Power);
                    return View("../Home/Index");
                }
                else
                {
                    HttpCookie msg = new HttpCookie("msg", "用户名或密码错误");
                    Response.SetCookie(msg);
                    return View("Login");
                }
            }

        
  

        [HttpPost]
        public ActionResult VerfiyRegist([Bind(Include = "DriverId,Name,Password,Gender,Phone,Email,Address,Power")] Driver driver)
        {
            Driver user = driver;
            System.Diagnostics.Debug.WriteLine(user.ToString());
            if (dBUtils.canUse(user.Name))
            {
                if (dBUtils.add(driver))
                    return View("Login");
                else {
                    HttpCookie msg = new HttpCookie("msg", "注册失败");
                    Response.SetCookie(msg);
                    return View("Regist");
                }
            }
            else
            {
                HttpCookie msg = new HttpCookie("msg", "用户名已存在");
                Response.SetCookie(msg);
                return View("Regist");
            }
                
        }

        public ActionResult OrderDetails() {
           
                Driver user = (Driver)Session["user"];
                IList<Order> list = dBUtils.getOrderByDriverId(user.DriverId);
                Session.Add("userOrder", list);
          
            return View();
        
        }
      


    }

      
}
