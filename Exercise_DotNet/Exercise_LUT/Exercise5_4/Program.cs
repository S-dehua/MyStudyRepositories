using System;
using System.Collections.Generic;

namespace Exercise5_4
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("请输入学生人数：");
            int num = Convert.ToInt32(Console.ReadLine());
            List<Student> students = new();
            for (int i = 0; i < num; i++)
            {
                Console.Write("请输入第{0}位学生英语成绩：",i+1);
                int grade1 =Convert.ToInt32( Console.ReadLine());
                Console.Write("请输入第{0}学生数学成绩：",i+1);
                int grade2 = Convert.ToInt32(Console.ReadLine());
                students.Add(new Student(grade1+grade2));
            }

            students.Sort();

            foreach (var item in students)
            {
                item.ToString();
            }
        }
    }

    class Student : IComparable
    {
        public Student(int grade)
        {
            this.grade = grade;
        }

        public int grade;


        public void ToString()
        {
            Console.Write(grade + "\t");
        }

        public int CompareTo(Object stu)
        {
            Student stu1 = (Student)stu;
            return -(this.grade - stu1.grade);
            throw new NotImplementedException();
        }

       
    }
}
