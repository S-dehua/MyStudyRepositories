using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj3_1
{
    class Program
    {
        static void Main(string[] args)
        {
            int x;
            x = int.Parse(Console.ReadLine());
            if (x < 0) x = -x;
            Console.WriteLine("绝对值为{0}", x);
        }
    }
}
