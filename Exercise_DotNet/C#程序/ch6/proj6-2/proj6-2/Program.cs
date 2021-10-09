using System;
namespace proj6_2
{
    class A						//声明基类A
    {
        public void fun()
        {   Console.WriteLine("  A.fun"); }
        public void fun1()
        { Console.WriteLine("  A.fun1"); }
    }
    class B : A					//从A类派生B类
    {
        new public void fun()		//隐藏基类方法fun
        { Console.WriteLine("  B.fun"); }
        new public void fun1()
        { 
            Console.WriteLine("  调用基类的fun1方法");
            base.fun1();
        }       
    }
    class Program
    {
        static void Main(string[] args)
        {
            B b1 = new B();
            Console.WriteLine("执行b1.fun():");
            b1.fun();
            B b2 = new B();
            Console.WriteLine("执行b2.fun1():");
            b2.fun1();
        }
    }
}
