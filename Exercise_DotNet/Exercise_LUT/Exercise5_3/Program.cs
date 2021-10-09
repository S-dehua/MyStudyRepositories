using System;
using System.Collections.Generic;

namespace Exercise5_3
{
    class Program
    {
        static void Main(string[] args)
        {
            List<int> list1 = new();
            List<string> list2 = new();
            list1.Add(2);
            list1.Add(5);
            list1.Add(3);
            list1.Add(9);
            list1.Add(4);
            list1.Add(7);
            list1.Add(1);
            list2.Add("java");
            list2.Add("python");
            list2.Add("C#");
            list2.Add("C++");
            list2.Add("Golang");
            list2.Add("PHP");
            list2.Add("Ruby");
            Console.WriteLine("执行int、string类型Add方法");
            for (int i = 0; i < list1.Count; i++)
            {
                Console.WriteLine(list1[i] + "  " + list2[i]);
            }
            Console.WriteLine();
            list1.Remove(2);
            list2.Remove("python");
            Console.WriteLine("执行int、string类型Remove方法");
            for (int i = 0; i < list1.Count; i++)
            {
                Console.WriteLine(list1[i] + "  " + list2[i]);
            }
            Console.WriteLine();
            list1.Sort();
          
            Console.WriteLine("执行int类型Sort方法");
            for (int i = 0; i < list1.Count; i++)
            {
                Console.Write(list1[i] + "  ");
            }
     
        }
    }
}
