using System;
namespace proj6_3
{
    class Student
    {
        protected int no;				//学号
        protected string name;			//姓名
        protected string tname;			//班主任或指导教师
        public void setdata(int no1, string name1, string tname1)
        { no = no1; name = name1; tname = tname1; }
        public virtual void dispdata()	//虚方法
        {
            Console.WriteLine("本科生  学号:{0} 姓名:{1} 班主任:{2}", no, name, tname);
        }
    }
    class Graduate : Student
    {
        public override void dispdata()	//重写方法
        { Console.WriteLine("研究生 学号:{0}姓名:{1}指导教师:{2}", no, name, tname); }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Student s = new Student();
            s.setdata(101, "王华", "李量");
            s.dispdata();
            Graduate g = new Graduate();
            g.setdata(201, "张华", "陈军");
            g.dispdata();
        }
    }
}
