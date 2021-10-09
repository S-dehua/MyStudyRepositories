using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

namespace tmp1
{
    class Program
    {
        static void Main(string[] args) 
        {
            test();
            log("Main：调用test后");
            Console.ReadKey();
            //Thread.Sleep(Timeout.Infinite); 
        }
        static async void test() 
        { 
            log("test: await之前"); 
            await doo();
            log("test: await之后"); 
        }    //返回Task的async方法 
        static async Task doo()
        {
            log("doo: Task结果：" + await Task.Run(() => { 
                Thread.Sleep(1000); log("Task"); return 1; }));
            log("doo: Task结果：" + await Task.Run(() => { Thread.Sleep(1000); log("Task"); return 2; }));      
            log("doo: Task结果：" + await Task.Run(() => { Thread.Sleep(1000); log("Task"); return 3; }));
            Thread.Sleep(1000); Console.WriteLine("doo中在Task外的Thread.Sleep执行完毕");
        }
        //输出方法：显示当前线程的ManagedThreadId 
        static void log(string msg) 
        { 
            Console.WriteLine("{0}: {1}", Thread.CurrentThread.ManagedThreadId, msg); 
        }
    }
}
