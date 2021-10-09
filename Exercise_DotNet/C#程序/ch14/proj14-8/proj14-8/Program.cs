using System;
using System.Threading.Tasks;
namespace proj14_8
{
    class Program
    {
        public static void Main()
        {
            Func<int> myfunc = comp;
            Task<int> task1 = Task.Run(myfunc);
            Console.WriteLine("task1.IsCompleted:{0}", task1.IsCompleted);
            Console.WriteLine("task1.IsCompleted:{0}", task1.Result);
            //如果Run方法未完成，则会等待直到计算完成，得到返回值才运行下去。 
            Console.WriteLine("task1.IsCompleted:{0}", task1.IsCompleted);
        }
        public static int comp()
        {
            int sum = 0;
            for (int i = 1; i < 100; i++)
                sum += i;
            return sum;
        }
    }
}
