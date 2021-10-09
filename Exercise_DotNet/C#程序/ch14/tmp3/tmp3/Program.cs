using System;
using System.Threading.Tasks;
using System.Net;

namespace tmp3
{
    class MyClass
    {
        public void DoRun()
        {
            Task<int> t = CountCharacters("http://www.stockstar.com/home.htm");
            t.Wait();
            Console.WriteLine("{0}",t.IsCompleted);
            Console.WriteLine("return values:{0}", t.Result);
            Console.WriteLine("{0}", t.IsCompleted);
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
