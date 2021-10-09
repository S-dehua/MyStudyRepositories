using System;
namespace proj5_14
{
    public delegate void mydelegate(int c, int n);	//声明一个事件委托类型
    public class Shape						//声明引发事件的类
    {
        protected int color;				//定义保护字段color
        protected int size;				//定义保护字段size
        public event mydelegate ColorChange;	//定义一个事件
        public event mydelegate GetSize;		//定义一个事件
        public int pcolor					//定义属性pcolor
        {
            set
            {
                int ocolor = color;		//保存原来的颜色
                color = value;
                ColorChange(ocolor, color);	//在color的值发生改变后，触发事件。
            }
        }
        public int psize					//定义属性psize
        {
            get
            {
                GetSize(size, 10);
                return size;
            }
        }
        public Shape()					//构造函数
        { color = 0; size = 10; }
        public Shape(int c, int s)			//重载构造函数
        { color = c; size = s; }
    }
    class Program							//接收事件的类
    {
        static void Main(string[] argvs)
        {
            Shape obj = new Shape();
            obj.ColorChange += new mydelegate(CCHandler1);	//订阅事件
            obj.GetSize += new mydelegate(CCHandler2);	//订阅事件
            Console.WriteLine("obj对象的操作:");
            obj.pcolor = 3;							//改变颜色时触发事件
            Console.WriteLine("大小为:{0}", obj.psize);	//获取大小时触发事件
            Shape obj1 = new Shape(5, 20);
            obj1.ColorChange += new mydelegate(CCHandler1);//订阅事件
            obj1.GetSize += new mydelegate(CCHandler2);	//订阅事件
            Console.WriteLine("===================");
            Console.WriteLine("obj1对象的操作:");
            obj1.pcolor = 3;							//改变颜色时触发事件
            Console.WriteLine("大小为:{0}", obj1.psize);	//获取大小时触发事件
        }
        static void CCHandler1(int c, int n)				//事件处理方法
        { Console.WriteLine("颜色从{0}改变为{1}", c, n); }
        static void CCHandler2(int s, int n)				//事件处理方法
        {
            if (s == n)
                Console.WriteLine("大小没有改变");
            else
                Console.WriteLine("大小已改变");
        }
    }
}
