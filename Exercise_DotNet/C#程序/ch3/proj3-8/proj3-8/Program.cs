using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj3_8
{
    class Program
    {
        static void Main(string[] args)
        {
            int i, j;
            for (i = 1; i <= 9; i++)
            {
                for (j = 1; j <= i; j++)
                    Console.Write("{0}×{1}={2} ", i, j, i * j);
                Console.WriteLine();
            }
        }
    }
}
