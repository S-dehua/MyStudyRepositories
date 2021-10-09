using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj4_1
{
    class Program
    {
        static void Main(string[] args)
        {
            double[] a = new double[10] { 0, 1.2, 2.5, 3.1, 4.6, 5.0, 6.7, 7.6, 8.2, 9.8 };
            double k;
            int low = 0, high = 9, mid;
            Console.Write("k:");
            k = double.Parse(Console.ReadLine());
            while (low <= high)
            {
                mid = (low + high) / 2;
                if (a[mid] == k)
                {
                    Console.WriteLine("a[{0}]={1}", mid, k);
                    return;		//返回
                }
                else if (a[mid] > k)
                    high = mid - 1;
                else
                    low = mid + 1;
            }
            Console.WriteLine("未找到{0}", k);
        }
    }
}
