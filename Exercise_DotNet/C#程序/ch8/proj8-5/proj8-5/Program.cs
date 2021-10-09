using System;
using System.Collections;
using System.Collections.Generic;
namespace Proj8_5
{
    public class MyClass<T> : IEnumerable<T>   //声明泛型类
    {
        private T[] data = new T[100];
        private int length = 0;
        public void Add(T e)                    //添加元素e
        {
            data[length] = e;
            length++;
        }
        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }
        public IEnumerator<T> GetEnumerator()  //迭代器方法
        {
            for (int i = 0; i <= length - 1; i++)
                yield return data[i];
        }
        public IEnumerable<T> Positive
        {
            get
            {
                return this;
            }
        }

        public IEnumerable<T> Reverse
        {
            get
            {
                for (int i = length - 1;i>=0; i--)
                    yield return data[i];
            }
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            MyClass<int> numlist = new MyClass<int>();
            for (int i = 1; i <= 9; i++)
                numlist.Add(i);
            Console.Write("反向数字表:");
            foreach (int item in numlist.Reverse)
                Console.Write("{0} ", item);
            Console.WriteLine();
            //----------------------------------------------------
            MyClass<string> strlist = new MyClass<string>();
            strlist.Add("Mary");
            strlist.Add("Smith");
            strlist.Add("Johnson");
            Console.Write("正向字符串表:");
            foreach (string item in strlist.Positive)
                Console.Write("{0} ", item);
            Console.WriteLine();
        }
    }
}
