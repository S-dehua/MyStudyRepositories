using System;
namespace proj5_12
{
    delegate double mydelegate(double x, double y);		//声明委托类型
    class MyDeClass								//声明含有方法的类
    {
        public double add(double x, double y)
        { return x + y; }
        public double sub(double x, double y)
        { return x - y; }
        public double mul(double x, double y)
        { return x * y; }
        public double div(double x, double y)
        { return x / y; }
    }
    class Program
    {
        static void Main(string[] args)
        {
            MyDeClass obj = new MyDeClass();		//创建MyDeClass类实例
            mydelegate p = new mydelegate(obj.add);//委托对象与obj.add()相关联
            Console.WriteLine("5+8={0}", p(5, 8));	//调用委托对象p
            p = new mydelegate(obj.sub);		//委托对象与obj.sub()相关联
            Console.WriteLine("5-8={0}", p(5, 8));	//调用委托对象p
            p = new mydelegate(obj.mul);		//委托对象与obj.mul()相关联
            Console.WriteLine("5*8={0}", p(5, 8));	//调用委托对象p
            p = new mydelegate(obj.div);		//委托对象与obj.div()相关联
            Console.WriteLine("5/8={0}", p(5, 8));	//调用委托对象p
        }
    }
}
