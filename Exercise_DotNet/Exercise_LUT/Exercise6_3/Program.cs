using System;

namespace Exercise6_3
{
    class Program
    {
        static void Main(string[] args)
        {
            Student student = new Student(190001,"小明",111,95);
            Teacher teacher = new Teacher(100001,"老师","教授","计算机");
            Console.WriteLine(student.Id + "是" + student.Name + "的学号,他课程号为{0}的课，考了{1}分",student.ClassId,student.Grade);
            Console.WriteLine(teacher.Id + "是" + teacher.Name + "的编号,职称是{0},专业是{1}",teacher.Rank,teacher.Dept);
        }
    }

    class Student:People
    {
        int classId;
        double grade;
        public int ClassId { get; set; }
        public double Grade { get; set; }
        public Student(int id,string name,int classId,double grade)
        {
            Id = id;
            Name = name;
            ClassId = classId;
            Grade = grade;
        }
    }

    class Teacher:People
    {
        string rank;
        string dept;
        public string Rank { get; set; }
        public string Dept { get; set; }
        public Teacher(int id, string name,string rank,string dept)
        {
            Id = id;
            Name = name;
            Rank = rank;
            Dept = dept;
        }
    }

    class People
    {
        int id;
        string name;
        public int Id
        {
            get
            {
                return id;
            }
            set
            {
                id = value;
            }
        }
        public string Name
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
            }
        }

    }
}
