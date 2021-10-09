using System;
namespace proj5_1
{
    public class TPoint				//声明类TPoint
    {
        int x, y;						//类的私有字段
        public void setpoint(int x1, int y1)
        { x = x1; y = y1; }
        public void dispoint()
        { Console.WriteLine("({0},{1})", x, y); }
    }
    class Program
    {
        static void Main(string[] args)
        {
            TPoint p1 = new TPoint();	// 定义对象p1
            p1.setpoint(2, 6);
            Console.Write("第一个点=>");
            p1.dispoint();
            TPoint p2 = new TPoint();	// 定义对象p2
            p2.setpoint(8, 3);
            Console.Write("第二个点=>");
            p2.dispoint();
        }
    }
}
