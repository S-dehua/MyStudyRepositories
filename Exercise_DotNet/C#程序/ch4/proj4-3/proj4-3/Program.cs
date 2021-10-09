using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj4_3
{
    class Program
    {
        static void Main(string[] args)
        {
            int i, k;
            int[] myarr = new int[10];		//定义一个一维数组
            Random randobj = new Random();	//定义一个随机对象
            for (i = myarr.GetLowerBound(0);
                    i <= myarr.GetUpperBound(0); i++)
            {
                k = randobj.Next() % 20;		//返回一个0～19的正整数
                myarr.SetValue(k, i);		//给数组元素赋值
            }
            Console.Write("随机数序:");
            for (i = myarr.GetLowerBound(0); i <= myarr.GetUpperBound(0); i++)
                Console.Write("{0} ", myarr.GetValue(i));
            Console.WriteLine();
            Array.Sort(myarr);				//数组排序
            Console.Write("排序数序:");
            for (i = myarr.GetLowerBound(0); i <= myarr.GetUpperBound(0); i++)
                Console.Write("{0} ", myarr.GetValue(i));
            Console.WriteLine();
        }
    }
}
