using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj3_4
{
    class Program
    {
        static void Main(string[] args)
        {
            float x;
            Console.Write("分数:");
            x = float.Parse(Console.ReadLine());
            if (x >= 90) Console.WriteLine("等级为A");
            else if (x >= 80) Console.WriteLine("等级为B");
            else if (x >= 70) Console.WriteLine("等级为C");
            else if (x >= 60) Console.WriteLine("等级为D");
            else Console.WriteLine("等级为E");
        }
    }
}
