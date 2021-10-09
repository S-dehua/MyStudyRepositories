using LUT_CarSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LUT_CarSystem.DAL
{
    public class CarInitializer : System.Data.Entity.DropCreateDatabaseIfModelChanges<CarContext>
    {
        protected override void Seed(CarContext context)
        {
            var car = new List<Car>
            {
            new Car{Type="小型",CarName="宝马550",CarId=132560,Money=330.5,State=0},
            new Car{Type="中型",CarName="宝马550",CarId=132560,Money=460.5,State=0},
            new Car{Type="大型",CarName="宝马550",CarId=132560,Money=650,State=0},
            new Car{Type="小型",CarName="宾利飞驰",CarId=230060,Money=230.5,State=1},
            new Car{Type="中型",CarName="宾利飞驰",CarId=230060,Money=360,State=1},
            new Car{Type="大型",CarName="宾利飞驰",CarId=230060,Money=489.5,State=1},
            new Car{Type="小型",CarName="劳斯莱斯幻影",CarId=680800,Money=470.5,State=0},
            new Car{Type="中型",CarName="劳斯莱斯幻影",CarId=680800,Money=560,State=0},
            new Car{Type="大型",CarName="劳斯莱斯幻影",CarId=680800,Money=710,State=0},
            new Car{Type="小型",CarName="捍马H2",CarId=527552,Money=210.5,State=2},
            new Car{Type="中型",CarName="捍马H2",CarId=527552,Money=460,State=2},
            new Car{Type="大型",CarName="捍马H2",CarId=527552,Money=650,State=2},
            new Car{Type="小型",CarName="玛莎拉蒂",CarId=272522,Money=220.5,State=0},
            new Car{Type="中型",CarName="玛莎拉蒂",CarId=272522,Money=360,State=0},
            new Car{Type="大型",CarName="玛莎拉蒂",CarId=272522,Money=460,State=0},
            new Car{Type="小型",CarName="保时捷-Panamera",CarId=725277,Money=130.5,State=1},
            new Car{Type="中型",CarName="保时捷-Panamera",CarId=725277,Money=460,State=1},
            new Car{Type="大型",CarName="保时捷-Panamera",CarId=725277,Money=750.5,State=1},
            new Car{Type="小型",CarName="奥迪-A8L",CarId=722000,Money=450,State=0},
            new Car{Type="中型",CarName="奥迪-A8L",CarId=722000,Money=780,State=0},
            new Car{Type="大型",CarName="奥迪-A8L",CarId=722000,Money=1300,State=0},
            new Car{Type="小型",CarName="特斯拉 Roadster",CarId=976505,Money=250.5,State=0},
            new Car{Type="中型",CarName="特斯拉 Roadster",CarId=976505,Money=460,State=0},
            new Car{Type="大型",CarName="特斯拉 Roadster",CarId=976505,Money=756.5,State=0},
            new Car{Type="小型",CarName="凯迪拉克",CarId=868750,Money=290.5,State=2},
            new Car{Type="中型",CarName="凯迪拉克",CarId=868750,Money=360,State=2},
            new Car{Type="大型",CarName="凯迪拉克",CarId=868750,Money=470.5,State=2},
            new Car{Type="小型",CarName="兰博基尼",CarId=458607,Money=830.5,State=0},
            new Car{Type="中型",CarName="兰博基尼",CarId=458607,Money=1050,State=0},
            new Car{Type="大型",CarName="兰博基尼",CarId=458607,Money=1309.5,State=0},
            new Car{Type="小型",CarName="雷克萨斯",CarId=578669,Money=730.5,State=1},
            new Car{Type="中型",CarName="雷克萨斯",CarId=578669,Money=1206,State=1},
            new Car{Type="大型",CarName="雷克萨斯",CarId=578669,Money=1506,State=1},
            new Car{Type="小型",CarName="上海大众",CarId=179679,Money=830.5,State=0},
            new Car{Type="中型",CarName="上海大众",CarId=179679,Money=1430,State=0},
            new Car{Type="大型",CarName="上海大众",CarId=179679,Money=1806.5,State=0},
            };

            
            car.ForEach(s => context.Car.Add(s));
            context.SaveChanges();


            var driver = new List<Driver>
            {
                new Driver{DriverId=131201201124123011, Password="1111", Name="田济语",Gender="男",Phone=18274268165,Email="2348596147@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
                new Driver{DriverId=430201200101104041, Password="1111",Name="王颢",Gender="女",Phone=17534826465,Email="2589637410@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
                new Driver{DriverId=120101200101124011, Password="1111",Name="田甜",Gender="女",Phone=18277513165,Email="2589631470@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
                new Driver{DriverId=120101200101124012, Password="1111",Name="钱德壮",Gender="男",Phone=17342672190,Email="2217489653@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
                new Driver{DriverId=120101200101124013, Password="1111",Name="章帐",Gender="女",Phone=18277519165,Email="5514735@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
                new Driver{DriverId=430201200101106024, Password="1111",Name="章平",Gender="男",Phone=18123571545,Email="2203684152@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
                new Driver{DriverId=123201200112306015, Password="1111",Name="张丈平",Gender="男",Phone=13107153165,Email="2201589634@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
                new Driver{DriverId=342201200168906222, Password="1111",Name="礼志斌",Gender="男",Phone=13119578565,Email="2358961475@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
                new Driver{DriverId=430201231211060112, Password="1111",Name="王洒洒",Gender="女",Phone=13877125565,Email="2013859614@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
                new Driver{DriverId=432201200101109033, Password="1111",Name="周伟平",Gender="男",Phone=13073751365,Email="2201479936@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
                new Driver{DriverId=131201201124123016, Password="1111",Name="孟祥发",Gender="男",Phone=18751979165,Email="2201769853@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
                new Driver{DriverId=430201200101104021, Password="1111",Name="韩安冉",Gender="女",Phone=17534175365,Email="1472523869@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
                new Driver{DriverId=120101200101124051, Password="1111",Name="王潇潇",Gender="女",Phone=18273793515,Email="2144785963@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
                new Driver{DriverId=120101200101124044, Password="1111",Name="钱凌然",Gender="男",Phone=17482682190,Email="2017489632@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
                new Driver{DriverId=120101200101124055, Password="1111",Name="宋雯",Gender="女",Phone=18272261165,Email="2011479933@qq.com",Address="甘肃省酒泉市东北街街道",Power=0},
            };
            driver.ForEach(s => context.Driver.Add(s));
            context.SaveChanges();

            var order = new List<Order>
            {
                new Order{OrderId=1616516516515001,DriverId=131201201124123011,CarId=458001,TotalRent=1356,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="帅哥"},
                new Order{OrderId=1616516516515002,DriverId=430201200101104041,CarId=458002,TotalRent=1356,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="帅哥"},
                new Order{OrderId=1616516516515003,DriverId=120101200101124011,CarId=458003,TotalRent=8030,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="王哥"},
                new Order{OrderId=1616516516515004,DriverId=120101200101124012,CarId=458004,TotalRent=8970,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="帅哥"},
                new Order{OrderId=1616516516515005,DriverId=120101200101124013,CarId=458005,TotalRent=60154,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="帅哥"},
                new Order{OrderId=1616516516515006,DriverId=430201200101106024,CarId=458006,TotalRent=1226,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="帅哥"},
                new Order{OrderId=1616516516515007,DriverId=123201200112306015,CarId=458007,TotalRent=7989,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="王哥"},
                new Order{OrderId=1616516516515008,DriverId=342201200168906222,CarId=458008,TotalRent=6004,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="帅哥"},
                new Order{OrderId=1616516516515009,DriverId=430201231211060112,CarId=458009,TotalRent=1666,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="王哥"},
                new Order{OrderId=1616516516515010,DriverId=432201200101109033,CarId=458010,TotalRent=7989,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="帅哥"},
                new Order{OrderId=1616516516515011,DriverId=430201200101104021,CarId=458011,TotalRent=2256,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="王哥"},
                new Order{OrderId=1616516516515012,DriverId=120101200101124051,CarId=458012,TotalRent=2888,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="帅哥"},
                new Order{OrderId=1616516516515013,DriverId=120101200101124044,CarId=458013,TotalRent=1888,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="王哥"},
                new Order{OrderId=1616516516515014,DriverId=120101200101124055,CarId=458014,TotalRent=8970,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="帅哥"},
                new Order{OrderId=1616516516515015,DriverId=620102200104133361,CarId=458015,TotalRent=4888,StartTime=DateTime.Parse("2021-7-12"),EndTime=DateTime.Parse("2021-7-20"),SalesmanName="帅哥"},
            };
            order.ForEach(s => context.Order.Add(s));
            context.SaveChanges();
        }
    }
}