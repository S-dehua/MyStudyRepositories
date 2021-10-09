using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj2_7
{
    class Program
    {
        static void Main(string[] args)
        {
            String mstr, sstr;
            Console.Write("输入主串:");
            mstr = Console.ReadLine();
            Console.Write("输入子串:");
            sstr = Console.ReadLine();
            Console.WriteLine("主串长度={0},子串长度={1}", mstr.Length, sstr.Length);
            if (String.Compare(mstr, sstr) != 0)		//使用静态方法
                Console.WriteLine("位置:{0}", mstr.IndexOf(sstr));	//使用非静态方法
            else
                Console.WriteLine("两个字符串相同");
        }
    }
}
