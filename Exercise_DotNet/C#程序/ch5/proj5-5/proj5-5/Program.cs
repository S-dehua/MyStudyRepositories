using System;
namespace proj5_5
{
    class MyClass1
    {
        int n;
        public MyClass1(int i) { n = i; }
        public void add() { s += n; }
        static public int s = 0;	//静态字段定义并初始化
    };
    class Program
    {
        static void Main(string[] args)
        {
            MyClass1 a = new MyClass1(2);
            MyClass1 b = new MyClass1(5);
            MyClass1 c = new MyClass1(8);
            a.add();
            Console.WriteLine("s={0}", MyClass1.s);
            b.add();
            Console.WriteLine("s={0}", MyClass1.s);
            c.add();
            Console.WriteLine("s={0}", MyClass1.s);
        }
    }
}
