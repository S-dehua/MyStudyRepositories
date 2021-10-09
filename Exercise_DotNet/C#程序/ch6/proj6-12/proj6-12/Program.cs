using System;
namespace proj6_12
{
    interface Ia				//接口声明
    {
        int fun1();			//接口成员声明
        int fun2();			//接口成员声明
        int fun3();			//接口成员声明
    }
    class A : Ia				//类A从接口Ia继承
    {
        int Ia.fun1()			//显式接口实现
        { return 1; }
        int Ia.fun2()			//显式接口实现
        { return 2; }
        int Ia.fun3()			//显式接口实现
        { return 3; }
    }
    class B : A, Ia			//类B从类A和接口Ia继承
    {
        public int fun1()		//隐式接口实现
        { return 4; }
        int Ia.fun2()			//显式接口实现
        { return 5; }
    }
    class Program
    {
        static void Main(string[] args)
        {
            A a = new A();
            B b = new B();
            Ia ia = a;
            Console.WriteLine("{0} ", ia.fun1());		//调用A.fun1()
            Console.WriteLine("{0} ", ia.fun2());		//调用A.fun2()
            Console.WriteLine("{0} ", ia.fun3());		//调用A.fun3()
            Ia ib = b;
            Console.WriteLine("{0} ", ib.fun1());		//调用B.fun1()
            Console.WriteLine("{0} ", ib.fun2());		//调用B.fun2()
            Console.WriteLine("{0} ", ib.fun3());		//调用A.fun3()
        }
    }
}
