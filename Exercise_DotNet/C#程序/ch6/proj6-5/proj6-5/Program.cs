using System;
namespace proj6_5
{
    abstract class A				//抽象类声明
    {
        abstract public int fun();	//抽象方法声明
    }
    class B : A					//从类派生类B
    {
        int x, y;
        public B(int x1, int y1)	//构造函数
        { x = x1; y = y1; }
        public override int fun()	//抽象方法实现
        { return x * y; }
    }
    class Program
    {
        static void Main(string[] args)
        {
            B b = new B(2, 3);
            Console.WriteLine("{0}", b.fun());
        }
    }
}
