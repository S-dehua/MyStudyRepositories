using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj2_4
{
    class Program
    {
        static void Main(string[] args)
        {
            byte b1, b2, b3;
            b1 = 10;
            b2 = (byte)~b1;		//~b1的结果为int，需强制转换成byte类型
            Console.WriteLine(b2);
            b3 = (byte)(b1 << 2);	//b1<<b2结果为int类型，需强制转换成byte类型
            Console.WriteLine(b3);
            b1 = 3; b2 = 6;
            b3 = (byte)(b1 & b2);	//b1&b2结果为int类型，需强制转换成byte类型
            Console.WriteLine(b3);
            b3 = (byte)(b1 ^ b2);	//b1^b2结果为int类型，需强制转换成byte类型
            Console.WriteLine(b3);
            b3 = (byte)(b1 | b2);	//b1|b2结果为int类型，需强制转换成byte类型
            Console.WriteLine(b3);
        }
    }
}
