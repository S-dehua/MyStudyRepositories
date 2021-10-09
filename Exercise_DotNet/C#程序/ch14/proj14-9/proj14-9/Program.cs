using System;
using System.Threading.Tasks;
using System.Net;

namespace proj14_9
{
    class MyClass
    {
        public void DoRun()
        {
            Task<int> t1 = CountCharacters("https://jw.cicc.com.cn");
            t1.Wait();
            Task<int> t2 = CountCharacters("http://www.chinahr.com");
            t2.Wait();
            Console.WriteLine("t1任务是否完成：{0}", t1.IsCompleted);
            Console.WriteLine("t2任务是否完成：{0}", t2.IsCompleted);
            Console.WriteLine("返回的总字符数：{0}", t1.Result+t2.Result);
            Console.ReadKey();
        }
        private async Task<int> CountCharacters(string myuri)
        {
            string result = await new WebClient().DownloadStringTaskAsync(new Uri(myuri));
            return result.Length;
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            MyClass s = new MyClass();
            s.DoRun();
        }
    }
}

