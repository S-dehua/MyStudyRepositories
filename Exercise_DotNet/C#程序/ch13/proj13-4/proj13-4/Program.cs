using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj13_4
{
    class Program
    {
        static void Main(string[] args)
        {
            int s = 10, i;
            int[] a = new int[5] { 1, 2, 3, 0, 4 };
            try
            {
                for (i = 0; i < a.Length; i++)
                    Console.Write("{0} ", s / a[i]);
                Console.WriteLine();
            }
            catch (Exception err)
            { Console.WriteLine("{0}", err.Message); }
            finally
            { Console.WriteLine("执行finally块"); }
        }
    }
}
