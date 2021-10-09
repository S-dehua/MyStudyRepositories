using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj5_10
{
    class AddClass
    {
        public int addvalue(int a, int b)
        {
            return a + b;
        }
        public int addvalue(int a, int b, int c)
        {
            return a + b + c;
        }
        public double addvalue(double a, double b)
        {
            return a + b;
        }
        public double addvalue(double a, double b,double c)
        {
            return a + b+c;
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            AddClass s = new AddClass();
            Console.WriteLine(s.addvalue(1,2));
            Console.WriteLine(s.addvalue(1,2,3));
            Console.WriteLine(s.addvalue(2.5,3.5));
            Console.WriteLine(s.addvalue(1.2,2.8,8.5));
        }
    }
}
