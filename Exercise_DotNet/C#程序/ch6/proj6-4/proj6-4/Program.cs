using System;
namespace proj6_4
{
    public class Rectangle 				//长方形类
    {
        public const double PI = Math.PI;
        protected double x, y;
        public Rectangle() { }
        public Rectangle(double x1, double y1)
        { x = x1; y = y1; }
        public virtual double Area()	//求面积方法
        { return x * y; }
    }
    public class Circle : Rectangle		//圆类
    {
        public Circle(double r) : base(r, 0) { }
        public override double Area()	//求面积方法
        { return PI * x * x; }
    }
    class Sphere : Rectangle			//圆球体类
    {
        public Sphere(double r) : base(r, 0) { }
        public override double Area() 	//求面积方法
        { return 4 * PI * x * x; }
    }
    class Cylinder : Rectangle			//圆柱体类
    {
        public Cylinder(double r, double h) : base(r, h) { }
        public override double Area()	//求面积方法
        { return 2 * PI * x * x + 2 * PI * x * y; }
    }
    class Program
    {
        static void Main(string[] args)
        {
            double x = 2.4, y = 5.6;
            double r = 3.0, h = 5.0;
            Rectangle t = new Rectangle(x, y);
            Rectangle c = new Circle(r);
            Rectangle s = new Sphere(r);
            Rectangle l = new Cylinder(r, h);
            Console.WriteLine("长为{0},宽为{1}的长方形面积={2:F2}", x, y, t.Area());
            Console.WriteLine("            半径为{0}的圆面积={1:F2}", r, c.Area());
            Console.WriteLine("        半径为{0}的圆球体表面积={1:F2}", r, s.Area());
            Console.WriteLine("半径为{0},高度为{1}的圆柱体表面积={2:F2}",
                r, h, l.Area());
        }
    }
}
