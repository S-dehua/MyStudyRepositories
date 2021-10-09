using System;
namespace proj5_7
{	class Student				//声明Student类
	{	int no;				//学号
		string name;			//姓名
		int deg1;				//语文成绩
		int deg2;				//数学成绩
		int deg3;				//英语成绩
		static int sum1=0;		//语文总分
		static int sum2=0;		//数学总分
		static int sum3=0;		//英语总分
		static int sn=0;		//总人数
	 	public Student(int n,string na,int d1,int d2,int d3)	//构造函数
		{	no=n;  name=na;
			deg1=d1;deg2=d2;deg3=d3;
			sum1+=deg1;sum2+=deg2;sum3+=deg3;
			sn++;
		}
		public void disp()		//定义disp()方法
		{	Console.WriteLine("学号:{0} 姓名:{1} 语文:{2} 数学:{3} 英语:{4} 平均分:{5:f}",
				no,name,deg1,deg2,deg3,(double)(deg1+deg2+deg3)/3);
	 	}
		public static double avg1() { return (double)sum1/sn; }
		public static double avg2() { return (double)sum2/sn; }
		public static double avg3() { return (double)sum3/sn; }
	};
	class Program
	{	static void Main(string[] args)
		{	Student s1=new Student(1,"王华",67,89,90);
			Student s2=new Student(2,"李明",68,90,91);
			Student s3=new Student(3,"张兵",69,89,92);
			Student s4=new Student(4,"王超",70,92,93);
			Console.WriteLine("输出结果");
			s1.disp();
			s2.disp();
			s3.disp();
			s4.disp();
			Console.WriteLine("语文平均分:{0} 数学平均分:{1} 英语平均分:{2}",
				Student.avg1(), Student.avg2(),Student.avg3());
		}
	}
}
