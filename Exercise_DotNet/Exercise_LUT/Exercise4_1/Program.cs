using System;

namespace Exercise4_1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("请输入十个整数：");

            int[] arr = new int[10];

            for (int i = 0; i < arr.Length; i++)
            {
                Console.Write("请输入第{0}个整数：",i+1);
                arr[i] = int.Parse(Console.ReadLine());
            }

            Array.Sort(arr);

            Console.WriteLine("最大值是：{0}，次大值是：{1}",arr[9],arr[8]);

        }
    }
}
