using System;

namespace Exercise3_4
{
    class Program
    {
        static void Main(string[] args)
        {
            int n = 2000;
            Console.WriteLine("Π值为："+ 4*Calculate(n));
        }

        public static double Calculate(int n)
        {
            double sum = 0;
            for (double i = 1; i < n; i++)
            {
                sum += 1 / (4 * i - 3) - 1 / (4 * i - 1);
            }
            return sum;
        }

    }
}
