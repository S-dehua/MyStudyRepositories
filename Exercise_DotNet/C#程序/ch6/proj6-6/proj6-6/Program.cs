using System;
namespace proj6_6
{
    abstract class A							//抽象类声明
    {
        protected int x = 2;
        protected int y = 3;
        public abstract void fun();				//抽象方法声明
        public abstract int px { get; set; }		//抽象属性声明
        public abstract int py { get; }			//抽象属性声明
    }
    class B : A
    {
        public override void fun()				//抽象方法实现
        { x++; y++; }
        public override int px					//抽象属性实现
        {
            set
            { x = value; }
            get
            { return x + 10; }
        }
        public override int py					//抽象属性实现
        {
            get
            { return y + 10; }
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            B b = new B();
            b.px = 5;
            b.fun();
            Console.WriteLine("x={0}, y={1}", b.px, b.py);
        }
    }
}
