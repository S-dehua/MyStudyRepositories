using System;
namespace proj6_1
{
    class A
    {
        private int x;
        public A() { Console.WriteLine("调用类A的构造函数"); }
        public A(int x1)
        {
            x = x1;
            Console.WriteLine("调用类A的重载构造函数");
        }
        ~A() { Console.WriteLine("A:x={0}", x); }
    }
    class B : A
    {
        private int y;
        public B() { Console.WriteLine("调用类B的构造函数"); }
        public B(int x1, int y1)
            : base(x1)
        {
            y = y1;
            Console.WriteLine("调用类B的重载构造函数");
        }
        ~B() { Console.WriteLine("B:y={0}", y); }
    }
    class C : B
    {
        private int z;
        public C() { Console.WriteLine("调用类C的构造函数"); }
        public C(int x1, int y1, int z1)
            : base(x1, y1)
        {
            z = z1;
            Console.WriteLine("调用类C的重载构造函数");
        }
        ~C() { Console.WriteLine("C:z={0}", z); }
    }
    class Program
    {
        static void Main(string[] args)
        { C c = new C(1, 2, 3); }
    }
}
