using System;
using System.Collections;
using System.Collections.Generic;

namespace Exercise3_1
{
    class Program
    {
        static void Main(string[] args)
        {
            //法一：使用List容器
            //List<int> list = new List<int>();
            //int sumOdd =0, sumEven = 0;
            //Console.WriteLine("请输入整数（输入0则结束）: ");
            //while (true)
            //{ int i = 0;
            //    int value = int.Parse(Console.ReadLine());
            //    if (value == 0) break;
            //    list.Add (value);
            //}

            //for (int i = 0; i < list.ToArray().Length; i++)
            //{
            //    if (list[i]%2==0)
            //    {
            //        sumEven += list[i];
            //    }
            //    else
            //    {
            //        sumOdd += list[i];
            //    }
            //}
            //Console.WriteLine("奇数的和："+sumOdd+",偶数的和："+sumEven);

            //法二：不使用容器，读入数据后立即判断
            int sumOdd = 0, sumEven = 0;
            while (true)
            {
                Console.Write("请输入整数（输入0则结束）: ");
                int n = int.Parse(Console.ReadLine());
                if (n == 0) break;
                if (n % 2 == 0)
                {
                    sumEven += n;
                }
                else
                {
                    sumOdd += n;
                }

            }
            Console.WriteLine("奇数的和：" + sumOdd + ",偶数的和：" + sumEven);

        }
    }
}
