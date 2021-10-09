using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj3_7
{
    class Program
    {
        static void Main(string[] args)
        {
            int digit, num;
            Console.Write("输入一个整数:");
            num = int.Parse(Console.ReadLine());
            Console.Write("反向显示结果:");
            do
            {
                digit = num % 10;
                num = num / 10;
                Console.Write(digit);
            } while (num != 0);
            Console.WriteLine();
        }
    }
}
