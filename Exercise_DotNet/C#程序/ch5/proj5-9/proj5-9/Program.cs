﻿using System;
namespace proj5_9
{
    class Student								//学生类
    {
        private string name;					//姓名
        private float score;					//分数
        public Student(string name, float score)//构造函数
        {	//使用this给同名的字段赋值
            this.name = name;
            this.score = score;
        }
        public void display()					//显示方法
        {
            Console.WriteLine("姓名: {0}", name);
            Console.WriteLine("等级: {0}", Degree.getDegree(this));
            //用this传递当前调用display方法的对象
        }
        public float pscore					//分数属性
        {
            get { return score; }
        }
    }
    class Degree
    {
        public static string getDegree(Student s)	//求分数对应等级的静态方法
        {
            if (s.pscore >= 90)
                return "优秀";
            else if (s.pscore >= 80)
                return "良好";
            else if (s.pscore >= 70)
                return "中等";
            else if (s.pscore >= 60)
                return "及格";
            else
                return "不及格";
        }
    }
    class Program
    {
        static void Main()
        {
            Student st = new Student("王华", 88);	//创建一个学生对象
            st.display();
        }
    }
}
