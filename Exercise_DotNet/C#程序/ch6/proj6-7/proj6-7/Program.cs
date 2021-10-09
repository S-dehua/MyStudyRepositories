using System;
namespace proj6_7
{
    interface Ia							//声明接口Ia
    {
        float getarea();					//接口成员声明
    }
    public class Rectangle : Ia				//类A继承接口Ia
    {
        float x, y;
        public Rectangle(float x1, float y1)	//构造函数
        { x = x1; y = y1; }
        public float getarea()				//隐式接口成员实现,必须使用public
        { return x * y; }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Rectangle box1 = new Rectangle(2.5f, 3.0f);	//定义一个类实例
            Console.WriteLine("长方形面积: {0}", box1.getarea());
        }
    }
}
