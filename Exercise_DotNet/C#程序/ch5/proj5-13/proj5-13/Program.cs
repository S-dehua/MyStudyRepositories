using System;
namespace proj5_13
{
    delegate void mydelegate(double x, double y);	//声明委托类型
    class MyDeClass							//声明含有多个方法的类
    {
        public void add(double x, double y)
        { Console.WriteLine("{0}+{1}={2}", x, y, x + y); }
        public void sub(double x, double y)
        { Console.WriteLine("{0}-{1}={2}", x, y, x - y); }
        public void mul(double x, double y)
        { Console.WriteLine("{0}*{1}={2}", x, y, x * y); }
        public void div(double x, double y)
        { Console.WriteLine("{0}/{1}={2}", x, y, x / y); }
    }
    class Program
    {
        static void Main(string[] args)
        {
            MyDeClass obj = new MyDeClass();
            mydelegate p, a;
            a = obj.add;		//直接把obj.add赋值给委托对象
            p = a;			//将add方法添加到调用列表中
            a = obj.sub;		//直接把obj.sub赋值给委托对象
            p += a;			//将sub方法添加到调用列表中
            a = obj.mul;		//直接把obj.mul赋值给委托对象
            p += a;			//将mul方法添加到调用列表中
            a = obj.div;		//直接把obj.div赋值给委托对象
            p += a;			//将div方法添加到调用列表中
            p(5, 8);
        }
    }
}
