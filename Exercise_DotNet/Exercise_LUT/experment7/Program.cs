using System;
using System.Collections.Generic;

namespace experment7
{
    class Program
    {
        class MyGen<T>
        {
            List<T> list = new List<T>();

            public void add(T value)
            {
                list.Add(value);
            }

            public void Displist()
            {
                for (int i = 0; i < list.Count; i++)
                {
                    Console.Write(list[i]+" \t ");
                }
            }
        }
        static void Main(string[] args)
        {
            MyGen<int> obj1 = new MyGen<int>();
            MyGen<string> obj2 = new MyGen<string>();

            Console.WriteLine("向obj1对象中添加3个整数");
            obj1.add(1);
            obj1.add(2);
            obj1.add(3);
            Console.Write("obj1对象中的元素：");
            obj1.Displist();
            Console.WriteLine();
            Console.WriteLine("向obj2对象中添加4个字符串");
            obj2.add("C++");
            obj2.add("Java");
            obj2.add("VB");
            obj2.add("C#");
            Console.Write("obj2对象中的元素：");
            obj2.Displist();
            Console.WriteLine();
            System.Reflection.MethodInfo[] methodInfos = obj1.GetType().GetMethods();
            Console.WriteLine("obj1对象的类型的方法个数："+methodInfos.Length);
            Console.WriteLine("方法如下：");
            for (int i = 0; i < methodInfos.Length; i++)
            {
                Console.WriteLine(methodInfos[i]);
            }
        }
    }

    
}
