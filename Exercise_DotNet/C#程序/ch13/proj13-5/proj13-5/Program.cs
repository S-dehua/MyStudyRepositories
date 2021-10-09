using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj13_5
{
    class Program
    {
        static void fun()
        {
            int x = 5, y = 0;
            try					//try...catch语句
            {
                x = x / y;			//引发除零错误
            }
            catch (Exception err) 	//捕捉该错误
            {
                Console.WriteLine("fun:{0}", err.Message);
                throw;			//重新抛出异常
            }
        }
        static void Main(string[] args)
        {
            try
            { fun(); }
            catch (Exception err) 	//捕捉该错误
            { Console.WriteLine("Main:{0}", err.Message); }
        }
    }
}
