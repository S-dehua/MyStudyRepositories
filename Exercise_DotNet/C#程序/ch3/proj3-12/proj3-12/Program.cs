using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj3_12
{
    class Program
    {
        static void Main(string[] args)
        {
            int sum = 0, n = 0;
            do
            {
                sum += n * n;
                if (sum > 1000) break;
                n++;
            } while (sum < 1000);
            Console.WriteLine("最大的n为:{0}", n - 1);
        }
    }
}
