using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj4_2
{
    class Program
    {
        const int N = 10;
        static void Main(string[] args)
        {
            int i, j;
            int[,] a = new int[N, N];
            for (i = 1; i < N; i++)			//1列和对角线元素均为1
            { a[i, i] = 1; a[i, 1] = 1; }
            for (i = 3; i < N; i++)			//求第3～N行的元素值
                for (j = 2; j <= i - 1; j++)
                    a[i, j] = a[i - 1, j - 1] + a[i - 1, j];
            for (i = 1; i < N; i++)			//输出数序
            {
                for (j = 1; j <= i; j++)
                    Console.Write("{0,-2} ", a[i, j]);
                Console.WriteLine();
            }
        }
    }
}
