using System;
namespace proj6_9
{
    interface Ia						//声明接口Ia
    { float getarea(); }				//接口成员声明
    public class Rectangle : Ia			//类Rectangle继承接口Ia
    {
        float x, y;
        public Rectangle(float x1, float y1)	//构造函数
        { x = x1; y = y1; }
        float Ia.getarea()		//显式接口成员实现,带有接口名前缀,不能使用public
        { return x * y; }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Rectangle box1 = new Rectangle(2.5f, 3.0f);	//定义一个类实例
            Ia ia = (Ia)box1;							//定义一个接口实例
            Console.WriteLine("长方形面积: {0}", ia.getarea());
        }
    }
}
