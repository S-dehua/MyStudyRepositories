using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj3_11
{
    class Program
    {
        static void Main(string[] args)
        {
            int sum = 0, n = 0;
            while (true)
            {
                sum += n * n;
                if (sum > 1000) goto end;
                n++;
            }
        end: Console.WriteLine("最大的n为:{0}", n - 1);
        }
    }
}
