using System;
using System.Threading;				//新增引用
namespace proj14_1
{
    public class A
    {
        public void fun()			//定义类A的方法
        {
            while (true)
            { Console.WriteLine("工作线程:正在执行A.fun方法..."); }
        }
    };
    public class Program
    {
        public static void Main()
        {
            Console.WriteLine("主线程启动...");
            A a = new A();		//创建A类的实例
            Thread workth = new Thread(new ThreadStart(a.fun));
            //创建一个线程，使之执行A类的fun()方法
            Console.WriteLine("工作线程启动...");
            workth.Start();		//启动工作线程workth
            while (!workth.IsAlive) ;//循环直到工作线程激活
            Console.WriteLine("主线程睡眠1ms...");
            Thread.Sleep(1);		//让主线程睡眠1ms,以允许工作线程完成自已的工作
            Console.WriteLine("终止工作线程");
            workth.Abort();
            Console.WriteLine("阻塞工作线程");
            workth.Join();
            try
            {
                Console.WriteLine("试图重新启动工作线程");
                workth.Start();
            }
            catch (ThreadStateException)	//捕捉workth.Start()的异常
            {
                Console.WriteLine("终止后的线程不能重启,在重启时引发相关异常");
            }
            Console.WriteLine("主线程结束");
        }
    }
}
