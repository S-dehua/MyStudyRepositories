using System;
using System.Collections.Generic;

namespace tmp1
{
    class MyClass
    {
        public IEnumerable<int> ItNum()
        {
            yield return 1;
            yield return 2;
            yield return 3;
        }
        public IEnumerable<string> ItStr()
        {
            yield return "Mary";
            yield return "Smith";
            yield return "Johnson";
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            MyClass s=new MyClass();
            foreach(int item in s.ItNum())
                Console.Write("{0} ",item);
            Console.WriteLine();
            foreach(string item in s.ItStr())
                Console.Write("{0} ",item);
            Console.WriteLine();
        }
    }
}
