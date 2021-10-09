using System;
namespace proj6_10
{
    interface Ia				//接口Ia声明
    {
        double fun1();		//接口成员声明
        int fun2();			//接口成员声明
    }
    class A					//声明基类A
    {
        public int fun2()		//隐式实现接口成员fun2
        { return 2; }
    }
    class B : A, Ia			//类B从基类A和接口继承
    {
        double x;
        public B(double y)		//构造函数
        { x = y; }
        public double fun1()	//隐式实现接口成员fun1
        { return x; }
    }
    class Program
    {
        static void Main(string[] args)
        {
            B b = new B(2.5);
            Console.WriteLine("{0} ", b.fun1());
            Console.WriteLine("{0} ", b.fun2());
        }
    }
}
