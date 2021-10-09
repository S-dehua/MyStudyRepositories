using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj2_8
{
    class Program
    {
        static void Main(string[] args)
        {
            DateTime d1 = DateTime.Now;				//定义当前日期时间变量
            DateTime d2 = new DateTime(2008, 10, 1);//定义一个日期时间变量
            Console.WriteLine("d1:{0}", d1);
            int i = d1.Year;						//求d1的年
            int j = d1.Month;						//求d1的月
            int k = d1.Day;						    //求d1的日
            int h = d1.Hour;						//求d1的时
            int m = d1.Minute;						//求d1的分
            int s = d1.Second;						//求d1的秒
            Console.WriteLine("d1:{0}年{1}月{2}日{3}时{4}分{5}秒", i, j, k, h, m, s);
            Console.WriteLine("d2:{0}", d2);
            Console.WriteLine("相距时间:{0}", d1 - d2);
            DateTime d3 = d1.AddDays(100);			//d3为d1的100天后的日期
            Console.WriteLine("d3:{0}", d3);
            Console.WriteLine("d1年是否为闰年：{0}", DateTime.IsLeapYear(i));//静态方法调用
            Console.WriteLine("d2年是否为闰年：{0}", DateTime.IsLeapYear(d2.Year));
        }
    }
}
