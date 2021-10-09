using System;
using System.Collections;
using System.Collections.Generic;
namespace Proj8_3
{
    public class Primes
    {
        int n;
        public Primes(int n)
        {
            this.n = n;
        }
        public IEnumerator<int> GetEnumerator()
        { return itmethod(); }         	        //返回枚举器
        public IEnumerator<int> itmethod()  	//迭代器方法
        {
            int i,j;
            bool isprime;
            for (i = 3; i <= n; i++)
            {
                isprime = true;
                for (j = 2; j <= (int)Math.Floor(Math.Sqrt(i)); j++)
                {
                    if (i % j == 0)
                    {
                        isprime = false;
                        break;
                    }
                }
                if (isprime)
                    yield return i;
            }
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            int i = 1;
            Primes ps = new Primes(100);
            Console.WriteLine("100以内素数:");
            foreach (int item in ps)
            {
                Console.Write("{0,4:d}", item);
                if (i % 10 == 0)        //某输出10个整数换一行
                    Console.WriteLine();
                i++;
            }
            Console.WriteLine();
        }
    }
}
