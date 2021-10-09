using System;
using System.Collections;				//新增引用
namespace proj6_14
{
    class Program
    {
        class Stud					//声明Stud类
        {
            int xh;				 	//学号字段
            string xm;				//姓名字段
            int fs;					//分数字段
            public int pxh			//pxh属性
            { get { return xh; } }
            public string pxm			//pxm属性
            { get { return xm; } }
            public int pfs			//pfs属性
            { get { return fs; } }
            public Stud(int no, string name, int degree)	//构造函数
            { xh = no; xm = name; fs = degree; }
            public void disp()							//输出学生信息
            { Console.WriteLine("\t{0}\t{1}\t{2}", xh, xm, fs); }
        }
        public class myCompareClassxh : IComparer	//从接口派生myCompareClassxh类
        {
            int IComparer.Compare(object x, object y)	//实现Compare方法
            {
                Stud a = (Stud)x;					//将x对象转换成Stud类对象a
                Stud b = (Stud)y; 					//将y对象转换成Stud类对象b
                if (a.pxh > b.pxh) return 1;
                else if (a.pxh == b.pxh) return 0;
                else return -1;
            }
        }
        public class myCompareClassxm : IComparer	//从接口派生myCompareClassxm类
        {
            int IComparer.Compare(object x, object y)	//实现Compare方法
            {
                Stud a = (Stud)x;					//将x对象转换成Stud类对象a
                Stud b = (Stud)y; 					//将y对象转换成Stud类对象b
                return String.Compare(a.pxm, b.pxm);
            }
        }
        public class myCompareClassfs : IComparer	//从接口派生myCompareClassfs类
        {
            int IComparer.Compare(object x, object y)	//实现Compare方法
            {
                Stud a = (Stud)x; 					//将x对象转换成Stud类对象a
                Stud b = (Stud)y; 					//将y对象转换成Stud类对象b
                if (a.pfs < b.pfs) return 1;
                else if (a.pfs == b.pfs) return 0;
                else return -1;
            }
        }
        static void disparr(ArrayList myarr, string str)	//Program类的静态方法
        {
            Console.WriteLine(str);
            Console.WriteLine("\t学号\t姓名\t分数");
            foreach (Stud s in myarr)
                s.disp();
        }
        static void Main(string[] args)					//Program的主函数
        {
            int i, n = 4;
            IComparer myComparerxh = new myCompareClassxh();
            IComparer myComparerxm = new myCompareClassxm();
            IComparer myComparerfs = new myCompareClassfs();
            ArrayList myarr = new ArrayList();
            Stud[] st = new Stud[4] { new Stud(1, "Smith", 82),new Stud(4, "John", 88),
					  new Stud(3, "Mary", 95),new Stud(2, "Cherr", 64) };
            for (i = 0; i < n; i++)		//将st的各元素添加到myarr集合中
                myarr.Add(st[i]);
            disparr(myarr, "排序前:");
            myarr.Sort(myComparerxh);	//按学号排序
            disparr(myarr, "按学号升序排序后:");
            myarr.Sort(myComparerxm);	//按姓名排序
            disparr(myarr, "按姓名词典次序排序后:");
            myarr.Sort(myComparerfs);	//按分数排序
            disparr(myarr, "按分数降序排序后:");
        }
    }
}
