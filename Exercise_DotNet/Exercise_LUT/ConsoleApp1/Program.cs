using System;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("欢迎进入学生管理系统!");
            Console.Write("请输入需要计算成绩的学生人数：");
            int num = Convert.ToInt32(Console.ReadLine());
            Student[] stu = new Student[num];
            for (int i = 0; i < num; i++)
            {
                double temp = 0;
                Console.Write("请输入第{0}位学生英语课成绩：", i + 1);
                int english = Convert.ToInt32(Console.ReadLine());
                Console.Write("请输入第{0}位学生数学课成绩：", i + 1);
                int math = Convert.ToInt32(Console.ReadLine());
                stu[i] = new Student(math,english,"第"+(i+1)+"位同学");
            }

            Array.Sort(stu);

            Console.WriteLine("总分从高到低排序后的结果：");

            for (int i = 0; i < num; i++)
            {
                Console.WriteLine( stu[i].name + "的总分" + stu[i].showSum());
            }
        }

        class Student : IComparable
        {
            public int math;
            public int english;
            public string name;
            int sum;
            public Student(int math, int english,string name)
            {
                this.math = math;
                this.english = english;
                this.name = name;
                sum = math + english;
            }

            public int showSum()
            {
                return sum;
            }

            public int CompareTo(Object obj)
            {
                Student stu = (Student)obj;
                return -(this.sum - stu.sum);
                throw new NotImplementedException();
            }
        }
    }
}
