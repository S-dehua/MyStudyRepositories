using System;

namespace experment3
{
    class Program
    {
        static void Main(string[] args)
        {
            int ge;
            int shi;
            int bai;
            for (int i = 100; i < 1000; i++)
            {
                ge = i % 10;
                shi = i / 10 % 10;
                bai = i / 100;
                if (i == Math.Pow(ge,3)+Math.Pow(shi,3)+Math.Pow(bai,3))
                {
                    Console.WriteLine(i);
                }
            }
        }
    }
}
