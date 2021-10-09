using System;
using System.Threading.Tasks;
namespace tmp
{
    class Program
    {
        public static void Main()
        {
            Task task1 = new Task(()=>Console.WriteLine("Task"));
            task1.Start();
            Console.ReadKey();
        }
    }
}
