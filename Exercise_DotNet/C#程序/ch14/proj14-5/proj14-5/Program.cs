using System;
using System.Threading;
namespace proj14_5
{
    class Program
    {
        static double number1 = -1; //存放要计算的数值的字段
        static double number2 = -1;

        public static void Main()
        {
            // 获取线程池的最大线程数和维护的最小空闲线程数
            int maxThreadNum, portThreadNum;
            int minThreadNum;
            ThreadPool.GetMaxThreads(out maxThreadNum, out portThreadNum);
            ThreadPool.GetMinThreads(out minThreadNum, out portThreadNum);
            Console.WriteLine("最大线程数：{0}", maxThreadNum);
            Console.WriteLine("最小线程数：{0}", minThreadNum);
            int x = 64;      //函数变量值
            Console.WriteLine("启动第一个任务：计算{0}的2次方", x);
            ThreadPool.QueueUserWorkItem(new WaitCallback(TaskProc1), x);
            Console.WriteLine("启动第二个任务：计算{0}的2次方根", x);
            ThreadPool.QueueUserWorkItem(new WaitCallback(TaskProc2), x);
            Thread.Sleep(1000);
            while (number1 == -1 || number2 == -1) ;                //等待直到两个数值都完成计算
            Console.WriteLine("f({0}) = {1}", x, number1 + number2);  //输出计算结果
        }

        static void TaskProc1(object o)     //计算x的2次方
        {
            number1 = Math.Pow(Convert.ToDouble(o), 2);
        }
        static void TaskProc2(object o)     //计算x的2次方根
        {
            number2 = Math.Pow(Convert.ToDouble(o), 1.0 / 2.0);
        }
    }
}
