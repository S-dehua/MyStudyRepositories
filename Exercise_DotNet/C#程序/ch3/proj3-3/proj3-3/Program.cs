using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj3_3
{
    class Program
    {
        static void Main(string[] args)
        {
            int year, rem4, rem100, rem400;
            Console.Write("输入年份:");
            year = int.Parse(Console.ReadLine());
            rem400 = year % 400;
            rem100 = year % 100;
            rem4 = year % 4;
            if ((rem400 == 0) || ((rem4 == 0) && (rem100 != 0)))
                Console.WriteLine("{0}是闰年", year);
            else
                Console.WriteLine("{0}不是闰年", year);
        }
    }
}
