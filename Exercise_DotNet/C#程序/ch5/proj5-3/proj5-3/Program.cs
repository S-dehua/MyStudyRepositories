using System;
namespace proj5_3
{
    class Program
    {
        public class TPoint1 				//声明类TPoint1
        {
            int x, y;						//类的私有变量
            public TPoint1() { }			//默认的构造函数
            public TPoint1(int x1, int y1)	//带参数的构造函数
            { x = x1; y = y1; }
            public void dispoint()
            { Console.WriteLine("({0},{1})", x, y); }
        }
        static void Main(string[] args)
        {
            TPoint1 p1 = new TPoint1();		//调用默认的构造函数
            Console.Write("第一个点=>");
            p1.dispoint();
            TPoint1 p2 = new TPoint1(8, 3);	//调用带参数的构造函数
            Console.Write("第二个点=>");
            p2.dispoint();
        }
    }
}
