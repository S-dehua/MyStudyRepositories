using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj13_3
{
    class Program
    {
        static void Main(string[] args)
        {
            int x = 5, y = 0;
            try						//try...catch语句
            {
                x = x / y;				//引发除零错误
            }
            catch (Exception err)		//捕捉该错误
            {
                Console.WriteLine("{0}", err.Message);	//显示错误信息
            }
        }
    }
}
