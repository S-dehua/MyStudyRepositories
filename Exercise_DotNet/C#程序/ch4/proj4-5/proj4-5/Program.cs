using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj4_5
{
    struct Stud						//结构类型声明
    {
        public int sno;				//学号
        public string sname;			//姓名
    };
    class Program
    {
        static void Main(string[] args)
        {
            int i;
			List<Stud> myset = new List<Stud>();	//定义一个集合myset
			Stud s1 = new Stud();
			s1.sno = 101;s1.sname = "李明";
			myset.Add(s1);				//向集合myset中添加一个结构变量
			Stud s2 = new Stud();
			s2.sno = 103; s2.sname = "王华";
			myset.Add(s2); 			//向集合myset中添加一个结构变量
			Stud s3 = new Stud();
			s3.sno = 108; s3.sname = "张英";
			myset.Add(s3); 			//向集合myset中添加一个结构变量
			Stud s4 = new Stud();
			s4.sno = 105; s4.sname = "张伟";
			myset.Add(s4); 			//向集合myset中添加一个结构变量
			Console.WriteLine("元素序列:");
			Console.WriteLine("  下标  学号  姓名");
			i = 0;
			foreach (Stud st in myset)	//输出集合myset中所有元素
			{	Console.WriteLine("   {0}    {1}   {2}",i,st.sno, st.sname);
				i++;
			}
			Console.WriteLine("容量: {0}", myset.Capacity);
			Console.WriteLine("元素个数: {0}", myset.Count);
			Console.WriteLine("在索引2处插入一个元素");
			Stud s5 = new Stud();
			s5.sno = 106; s5.sname = "陈兵";
			myset.Insert(2, s5);		//向集合myset中插入一个结构变量
			Console.WriteLine("元素序列:");
			Console.WriteLine("  下标  学号  姓名");
			i = 0;
			foreach (Stud st in myset)	//输出集合myset中所有元素
			{	Console.WriteLine("   {0}    {1}   {2}", i, st.sno, st.sname);
				i++;
			}
        }
    }
}
