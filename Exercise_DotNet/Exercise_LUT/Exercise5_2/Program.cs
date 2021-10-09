using System;

namespace Exercise5_2
{
    class Program
    {
        public delegate int mydelegate(int x,int y);
        static void Main(string[] args)
        {
            Program program = new Program();
            mydelegate p = new mydelegate(program.QuadraticSum);
            Console.WriteLine("6与5的平方和 ：" + p(6, 5));
            p = new mydelegate(program.QuadraticDifference);
            Console.WriteLine("6与5的平方差 ：" + p(6, 5));

        }

        public int QuadraticSum(int x,int y)
        {
            return x * x + y * y;
        }
        public int QuadraticDifference(int x, int y)
        {
            return x * x - y * y;
        }
    }
}
