using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj3_5
{
    class Program
    {
        static void Main(string[] args)
        {
            char ch;
			Console.Write("课程代号:");
			ch=(char)Console.Read();
            switch (ch)
            {
                case 'm':
                case 'M':
                case 'w':
                case 'W':
                    Console.WriteLine("8学分");
                    break;
                case 'p':
                case 'P':
                case 'c':
                case 'C':
                    Console.WriteLine("5学分");
                    break;
                case 'e':
                case 'E':
                    Console.WriteLine("6学分");
                    break;
                default:
                    Console.WriteLine("输入的课程代号不正确");
                    break;
            }
        }
    }
}
