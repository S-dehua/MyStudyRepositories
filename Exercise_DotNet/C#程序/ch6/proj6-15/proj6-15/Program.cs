using System;
using System.Collections;			//新增引用
namespace proj6_15
{
    class Stud					//声明Stud类
    {
        int xh;				 	//学号字段
        string xm;				//姓名字段
        string kcm;				//课程名字段
        int fs;					//分数字段
        public string pkcm			//pkcm属性
        { get { return kcm; } }
        public int pfs			//pfs属性
        { get { return fs; } }
        public Stud(int no, string name, string course, int degree)	//构造函数
        { xh = no; xm = name; kcm = course; fs = degree; }
        public void disp()						//输出成绩信息
        { Console.WriteLine("\t{0}\t{1}\t{2}\t{3}", kcm, fs, xh, xm); }
    }
    public class myCompareClass : IComparer		//从接口派生myCompareClass类
    {
        int IComparer.Compare(object x, object y)	//实现Compare方法
        {
            Stud a = (Stud)x;					//将x对象转换成Stud类对象a
            Stud b = (Stud)y; 					//将y对象转换成Stud类对象b
            if (String.Compare(a.pkcm, b.pkcm, true) > 0
                || String.Compare(a.pkcm, b.pkcm, true) == 0 && a.pfs <= b.pfs) return 1;
            else if (String.Compare(a.pkcm, b.pkcm, true) == 0 && a.pfs == b.pfs) return 0;
            else return -1;
        }
    }
    class Program
    {
        static void Main(string[] args)					//Program的主函数
        {
            int i, n = 6;
            myCompareClass myComparer = new myCompareClass();
            ArrayList myarr = new ArrayList();
            Stud[] st = new Stud[6] { new Stud(1, "Smith", "高级语言",82),
				new Stud(1,"Smith","数据结构",75),new Stud(4,"John","高级语言",82),
				new Stud(4,"John","数据结构",88),new Stud(3, "Mary","高级语言",93),
				new Stud(3,"Mary","数据结构",95) };
            for (i = 0; i < n; i++)		//将st的各元素添加到myarr集合中
                myarr.Add(st[i]);
            Console.WriteLine("排序前:");
            Console.WriteLine("\t课程名\t\t分数\t学号\t姓名");
            foreach (Stud s in myarr)
                s.disp();
            myarr.Sort(myComparer);	//排序
            Console.WriteLine("排序后:");
            Console.WriteLine("\t课程名\t\t分数\t学号\t姓名");
            foreach (Stud s in myarr)
                s.disp();
        }
    }
}
