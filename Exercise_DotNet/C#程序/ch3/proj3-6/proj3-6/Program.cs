using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj3_6
{
    class Program
    {
        static void Main(string[] args)
        {
            int digit, num;
            Console.Write("输入一个整数:");
            num = int.Parse(Console.ReadLine());
            Console.Write("反向显示结果:");
            while (num != 0)
            {
                digit = num % 10;  //依次求个位、十位、…上的数字digit
                num = num / 10;
                Console.Write(digit);
            }
            Console.WriteLine();
        }
    }
}
