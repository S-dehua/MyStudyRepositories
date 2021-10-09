using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;	//新增

namespace proj4_4
{
    class Program
    {
        static void Main(string[] args)
        {
            ArrayList myarr = new ArrayList();
            myarr.Add("Smith");
            myarr.Add("Mary");
            myarr.Add("Dava");
            myarr.Add("John");
            Console.Write("排序前序列:");
            foreach (String sname in myarr)
                Console.Write(sname + " ");
            Console.WriteLine();
            myarr.Sort();
            Console.Write("排序后序列:");
            foreach (String sname in myarr)
                Console.Write(sname + " ");
            Console.WriteLine();
        }
    }
}
