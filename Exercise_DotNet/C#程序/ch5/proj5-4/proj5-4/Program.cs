using System;
namespace proj5_4
{
    class Program
    {
        public class TPoint2 //声明类TPoint2
        {
            int x, y;
            public TPoint2(int x1, int y1)	//带参数的构造函数
            { x = x1; y = y1; }
            ~TPoint2()
            { Console.WriteLine("点=>({0},{1})", x, y); }
        }
        static void Main(string[] args)
        {
            TPoint2 p1 = new TPoint2(2, 6);
            TPoint2 p2 = new TPoint2(8, 3);
        }
    }
}
