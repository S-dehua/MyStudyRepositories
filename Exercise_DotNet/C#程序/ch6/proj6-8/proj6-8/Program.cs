using System;
namespace proj6_8
{
    interface Ia					//声明接口Ia
    {
        int fun();				//接口成员声明
    }
    class A : Ia					//类A继承接口Ia
    {
        int x, y;
        public A(int a, int b)		//构造函数
        { x = a; y = b; }
        public int fun()			//隐式接口成员实现
        { return x - y; }
    }
    class B : Ia					//类B继承接口Ia
    {
        int x, y;
        public B(int a, int b)		//构造函数
        { x = a; y = b; }
        public int fun()			//隐式接口成员实现
        { return x + y; }
    }
    class Program
    {
        static void Main(string[] args)
        {
            A a = new A(5, 2);
            Console.WriteLine("{0}", a.fun());
            B b = new B(5, 2);
            Console.WriteLine("{0}", b.fun());
        }
    }
}
