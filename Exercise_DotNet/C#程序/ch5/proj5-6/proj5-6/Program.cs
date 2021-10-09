using System;
namespace proj5_6
{
    class MyClass2
    {
        int n;
        public MyClass2(int i) { n = i; }
        static public void add() { s++; }	//定义静态方法
        static public int s = 0;			//静态字段定义并初始化
    };
    class Program
    {
        static void Main(string[] args)
        {
            MyClass2 a = new MyClass2(2);
            MyClass2 b = new MyClass2(5);
            MyClass2 c = new MyClass2(8);
            MyClass2.add();			//调用静态方法
            Console.WriteLine("s={0}", MyClass2.s);
            MyClass2.add();			//调用静态方法
            Console.WriteLine("s={0}", MyClass2.s);
            MyClass2.add();			//调用静态方法
            Console.WriteLine("s={0}", MyClass2.s);
        }
    }
}
