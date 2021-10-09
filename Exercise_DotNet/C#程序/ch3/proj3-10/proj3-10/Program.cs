using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj3_10
{
    class Program
    {
        static void Main(string[] args)
        {
            int sum = 0, n = 1;
            while (n != 0)  			//循环
            {
                Console.Write("输入一个整数(以0表示结束):");
                n = int.Parse(Console.ReadLine());
                if (n < 0) continue; 	//开始下一次循环
                sum += n;
            }
            Console.WriteLine("所有正数之和={0}", sum);
        }
    }
}
