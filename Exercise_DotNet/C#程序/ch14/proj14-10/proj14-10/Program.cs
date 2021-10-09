using System;
using System.Net;
using System.Diagnostics;

namespace proj14_10
{
    class MyClass
    {
        Stopwatch sw=new Stopwatch();
        public void DoRun()
        {
            const int LargeNumber=6000000;
            sw.Start();
            int t1=CountCharacters(1,"http://www.microsoft.com");
            int t2=CountCharacters(1,"http://www.whu.edu.cn");
            CountTo(1,LargeNumber);
            CountTo(2,LargeNumber);
            CountTo(3,LargeNumber);
            CountTo(4,LargeNumber);
            Console.WriteLine("Chars http://www.microsoft.com :{0}",t1);
            Console.WriteLine("Chars http://www.whu.edu.cn    :{0}",t2);
        }
        private int CountCharacters(int id,string mystr)
        {
            WebClient wc1=new WebClient();
            Console.WriteLine("Starting call {0}  :  {1}ms",id,sw.Elapsed.TotalMilliseconds);
            string result=wc1.DownloadString(new Uri(mystr));
            Console.WriteLine(" Call {0} completed: {1}ms",id,sw.Elapsed.TotalMilliseconds);
            return result.Length;
        }
        private void CountTo(int id,int value)
        {
            for (long i=0;i<value;i++);
            Console.WriteLine("End counting {0} : {1}ms",id,sw.Elapsed.TotalMilliseconds);
        }
    }


    class Program
    {
        static void Main(string[] args)
        {
            MyClass ds=new MyClass();
            ds.DoRun();
        }
    }
}
