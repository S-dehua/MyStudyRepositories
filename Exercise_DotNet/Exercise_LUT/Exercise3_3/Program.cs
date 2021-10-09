using System;

namespace Exercise3_3
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("输入正整数(输入不超过13)n=");
            int n = int.Parse(Console.ReadLine());
            int i, j;
            int[,] arr = new int[n, n];

            for (i = 1; i < n; i++)
            {
                arr[i, i] = 1;
                arr[i, 1] = 1;
            }

            
            for (i = 3; i < n; i++)
            {
                for ( j = 2; j <= i-1; j++)
                {
                    arr[i, j] = arr[i-1, j - 1] + arr[i - 1, j];
                }
            }

            for ( i = 1; i < n; i++)
            {
                for (int k = 0; k < (n-i+1); k++)
                {
                    Console.Write("    ");
                }
                for (j = 1; j <= i; j++)
                {
                    Console.Write("   "+arr[i, j] +"   ");
                }
                Console.WriteLine();
            }

        }
    }
}

