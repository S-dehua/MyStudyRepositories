using System;
namespace proj6_11
{
    interface Ia						//接口Ia声明
    { int fun(); }					//接口成员声明
    class A : Ia						//实现接口Ia
    {
        public int fun()				//接口成员实现
        { return 1; }
    }
    class B : A						//从类A派生类B
    {
        new public int fun()			//隐藏基类A中的fun方法
        { return 2; }
    }
    class Program
    {
        static void Main(string[] args)
        {
            A a = new A();
            Console.WriteLine("{0} ", a.fun());	//调用A.fun()
            B b = new B();
            Console.WriteLine("{0} ", b.fun());	//调用B.fun()
            Ia ia = a;
            Console.WriteLine("{0} ", ia.fun());	//调用A.fun()
            Ia ib = b;
            Console.WriteLine("{0} ", ib.fun());	//调用A.fun()
        }
    }
}
