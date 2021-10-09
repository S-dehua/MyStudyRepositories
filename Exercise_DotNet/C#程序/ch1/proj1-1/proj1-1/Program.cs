using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj1_1
{
    class Program
    {
        static void Main(string[] args)
        {
            int a, b, c;	 					//定义变量
            Console.Write("a:");				//输出屏幕提示信息
            a = int.Parse(Console.ReadLine());	//从键盘获取字符串并转换成整数
            Console.Write("b:");
            b = int.Parse(Console.ReadLine());
            c = a + b;						    //加法运算
            Console.WriteLine("a+b={0}", c);	//输出结果

        }
    }
}
