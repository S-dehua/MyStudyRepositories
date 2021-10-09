using System;
using System.Threading.Tasks;
namespace proj14_7
{
    class Program
    {
        public static void Main()
        {
            Action myaction = disp;
            Task task1 = new Task(myaction);
            task1.Start();
            Console.ReadKey();
        }
        public static void disp()
        { Console.WriteLine("Task"); }
    }
}
