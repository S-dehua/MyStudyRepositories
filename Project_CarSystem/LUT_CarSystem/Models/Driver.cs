using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace LUT_CarSystem.Models
{
    public class Driver
    {
       
        [Key]
        public long DriverId { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }
        [RegularExpression(@"^男$|^女$")]
        public string Gender { get; set; }
        [RegularExpression(@"^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$")]
        public long Phone { get; set; }
        [RegularExpression(@"^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$")]
        public string Email { get; set; }
        [RegularExpression(@"^.+省.+市.*$")]
        public string Address { get; set; }
        //普通用户0，管理员1，老板2
        public int Power { get; set; }


        public string[] StringPower = { "普通用户", "管理员", "公司高层" };
    }
}