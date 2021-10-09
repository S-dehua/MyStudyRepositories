
using System;
using System.Collections.Generic;

namespace experment4
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] studId = new int[] { 2, 4, 5, 1, 3 };
            string[] name = new string[] { "Simth", "John", "Marry", "Cherr", "Tomn" };
            Dictionary<int, string> dictionary = new Dictionary<int, string>();
            for (int i = 0; i < 5; i++)
            {
                dictionary.Add(studId[i], name[i]);
            }

            Console.WriteLine("排序前：");
            Console.Write("学号：");
            for (int i = 0; i < studId.Length; i++)
            {
                Console.Write(" "+studId[i]+"\t");
            }
            Console.WriteLine();
            Console.Write("姓名：");
            for (int i = 0; i < name.Length; i++)
            {
                Console.Write(name[i] + "\t");
            }

            //------------
            Console.WriteLine();
            Console.WriteLine("按学号排序后：");
            Array.Sort(studId);
            Console.Write("学号：");
            for (int i = 0; i < studId.Length; i++)
            {
                Console.Write(" " + studId[i] + "\t");
            }
            Console.WriteLine();
            Console.Write("姓名：");
            for (int i = 0; i < name.Length; i++)
            {
                Console.Write(dictionary.GetValueOrDefault(studId[i]) + "\t");
            }

            //------------
            Console.WriteLine();
            Console.WriteLine("按姓名排序后：");
            Array.Sort(name);
            Console.Write("学号：");
            for (int i = 0; i < studId.Length; i++)
            {
                for (int j = 0; j < studId.Length; j++)
                {
                    int temp = dictionary.GetValueOrDefault(studId[j]) == name[i] ? studId[j] : 0;
                    if (temp == 0)
                    {
                        continue;
                    }
                    Console.Write(" " + temp + "\t");
                }
            }
            Console.WriteLine();
            Console.Write("姓名：");
            for (int i = 0; i < name.Length; i++)
            {
                //Console.Write(dictionary.GetValueOrDefault(studId[i]) + "\t");
                Console.Write(name[i] + "\t");
            }


        }
    }
}
