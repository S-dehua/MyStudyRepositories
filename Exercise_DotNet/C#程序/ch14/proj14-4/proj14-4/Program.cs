using System;
using System.Threading;
namespace proj14_4
{
    public class Worker
    {
        private volatile bool isstop;   //volatile变量，被多个线程访问
        public void DoWork1()
        {
            while (!isstop)
                Console.WriteLine("工作线程1：工作中...");
            Console.WriteLine("工作线程1终止.");
        }
        public void DoWork2()
        {
            while (!isstop)
                Console.WriteLine("工作线程2：工作中...");
            Console.WriteLine("工作线程2终止.");
        }
        public void RequestStop()
        {
            isstop = true;
        }
    }

    public class Program
    {
        static void Main()
        {
            Console.WriteLine("主线程启动...");
            Worker workobj = new Worker();
            Thread workth1 = new Thread(workobj.DoWork1);
            Thread workth2 = new Thread(workobj.DoWork2);
            Console.WriteLine("主线程启动两个工作线程");
            workth1.Start();
            workth2.Start();
            Thread.Sleep(1);           //让主线程睡眠1ms
            workobj.RequestStop();      //让工作线程自己停止
            workth1.Join();             //阻塞workth1线程
            workth2.Join();             //阻塞workth2线程
            Console.WriteLine("主线程: 工作线程已终止.");
        }
    }
}
