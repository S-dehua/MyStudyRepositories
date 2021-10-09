using System;
using System.Threading;
namespace proj14_2
{
    class A						//声明类A
    {
        bool looptag;
        public A()				//构造函数
        { looptag = true; }
        public bool plooptag		//定义属性plooptag
        {
            set { looptag = value; }
        }
        public void fun()			//定义类A的方法
        {
            long thcount = 0;		//线程循环计数器
            while (looptag)
            {
                thcount++;		//累计循环次数
            }
            Console.WriteLine("{0}优先级为:{1,12},循环次数为:{2}",
                Thread.CurrentThread.Name,
                Thread.CurrentThread.Priority.ToString(),
                thcount.ToString());
        }
    }
    class Program
    {
        static void Main()
        {
            A a = new A();
            Thread workth1 = new Thread(a.fun);
            Console.WriteLine("启动主线程...");
            workth1.Name = "工作线程1";
            Thread workth2 = new Thread(a.fun);
            workth2.Name = "工作线程2";
            workth2.Priority = ThreadPriority.BelowNormal;
            Console.WriteLine("启动工作线程1...");
            workth1.Start();
            Console.WriteLine("启动工作线程2...");
            workth2.Start();
            Console.WriteLine("等待1秒以便执行工作线程...");
            Thread.Sleep(1000);		//主线程睡眠1秒以便执行工作线程
            a.plooptag = false;		//设为false使工作线程完成自动的工作
            Console.WriteLine("等待1秒以便输出统计结果...");
            Thread.Sleep(1000);		//主线程睡眠1秒以便工作线程输出
            Console.WriteLine("终止工作线程1");
            workth1.Abort();
            workth1.Join();
            Console.WriteLine("终止工作线程2");
            workth2.Abort();
            workth2.Join();
            Console.WriteLine("主线程结束");
        }
    }
}
