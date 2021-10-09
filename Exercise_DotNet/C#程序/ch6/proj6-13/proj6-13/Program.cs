using System;
using System.Collections;				//新增引用
namespace proj6_13
{
    class Program
    {
        class Stud : IComparable		//从接口派生
        {
            int xh;					//学号
            string xm;				//姓名
            int fs;					//分数
            public int pxh			//pxh属性
            { get { return xh; } }
            public string pxm			//pxm属性
            { get { return xm; } }
            public int pfs			//pfs属性
            { get { return fs; } }
            public Stud(int no, string name, int degree)
            { xh = no; xm = name; fs = degree; }
            public void disp()				//输出学生信息
            { Console.WriteLine("\t{0}\t{1}\t{2}", xh, xm, fs); }
            public int CompareTo(object obj)	//实现接口方法
            {
                Stud s = (Stud)obj;		//转换为Stud实例
                if (pfs < s.pfs) return 1;
                else if (pfs == s.pfs) return 0;
                else return -1;
            }
        }
        static void disparr(ArrayList myarr, string str)	//输出所有学生信息
        {
            Console.WriteLine(str);
            Console.WriteLine("\t学号\t姓名\t分数");
            foreach (Stud s in myarr)
                s.disp();
        }
        static void Main(string[] args)
        {
            int i, n = 4;
            ArrayList myarr = new ArrayList();
            Stud[] st = new Stud[4] { new Stud(1, "Smith", 82), new Stud(4, "John", 88),
				new Stud(3, "Mary", 95), new Stud(2, "Cherr", 64) };
            for (i = 0; i < n; i++)					//将对象添加到myarr集合中
                myarr.Add(st[i]);
            disparr(myarr, "排序前:");
            myarr.Sort();
            disparr(myarr, "按分数降序排序后:");
        }
    }
}
