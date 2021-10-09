using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace LUT_CarSystem.Models
{
    public class Car
    {
        
       
        public string Type { get; set; }
        public string CarName { get; set; }
        [Key]
        public int CarId { get; set; }
        public double Money { get; set; }
        //未出租0，已出租1，维修中2
        [RegularExpression(@"^0$|^1$|^2$")]
        public int State { get; set; }

        //public string getState(int value)
        //{
        //    return value == 0 ? "空闲中" : value == 1 ? "租赁中" : "维修中";
        //}
        public string[] StringState = { "空闲中", "租赁中", "维修中" };
    }
}