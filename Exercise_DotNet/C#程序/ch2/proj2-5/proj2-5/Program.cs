using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj2_5
{
    class Program
    {
        static void Main(string[] args)
        {
			Console.WriteLine("byte类型所占字节数:{0}", sizeof(byte));
			Console.WriteLine("char类型所占字节数:{0}", sizeof(char));
			Console.WriteLine("int类型所占字节数:{0}", sizeof(int));
			Console.WriteLine("float类型所占字节数:{0}", sizeof(float));
			Console.WriteLine("double类型所占字节数:{0}", sizeof(double));
			Console.WriteLine("decimal类型所占字节数:{0}",
				sizeof(decimal));
        }
    }
}
