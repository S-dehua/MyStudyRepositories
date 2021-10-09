using System;

namespace Exercise3_2
{
    class Program
    {
        static void Main(string[] args)
        {
            while (true)
            {
                Console.Write("输入正整数(输入0结束)n=");
                int total = 0;
                int n = int.Parse(Console.ReadLine());
                if (n == 0) break;
                for (int i = 1; i <= n; i++)
                {
                    total += sum(i);
                }
                Console.WriteLine("total is " + total);
            }
        }
        public static int sum(int s)
        {
            int sum = 0;
            for (int i = 1; i <= s; i++)
            {
                sum += i;
            }
            return sum;
        }
    }
   


}
