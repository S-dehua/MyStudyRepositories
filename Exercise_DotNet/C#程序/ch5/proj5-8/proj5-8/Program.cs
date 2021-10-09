using System;
namespace proj5_8
{
    public class TPoint3 		//声明类TPoint3
    {
        int x, y;
        public int px
        {
            get				    //get访问器
            { return x; }
            set				    //set访问器
            { x = value; }
        }
        public int py
        {
            get				    //get访问器
            { return y; }
            set				    //set访问器
            { y = value; }
        }
    };
    class Program
    {
        static void Main(string[] args)
        {
            TPoint3 p = new TPoint3();
            p.px = 3; p.py = 8;						        //属性写操作
            Console.WriteLine("点=>({0},{1})", p.px, p.py);  //属性读操作
        }
    }
}
