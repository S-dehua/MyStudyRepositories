using System;
namespace proj7_1
{
    class Student       //学生类
    {
        int sno;        //学号
        string sname;   //姓名
        public Student() { }
        public Student(int no, string name)
        {
            sno = no;
            sname = name;
        }
        public void Dispstudent()
        {
            Console.Write("[{0}:{1}] ",sno,sname);
        }
    }
    class Teacher       //教师类
    {
        int tno;        //编号
        string tname;   //姓名
        public Teacher() { }
        public Teacher(int no, string name)
        {
            tno = no;
            tname = name;
        }
        public void Dispteacher()
        {
            Console.Write("[{0}:{1}] ", tno, tname);
        }
    }
    class Stack<T>					//声明栈泛型类
    {
        int maxsize;				//栈中元素最多个数
        T[] data;					//存放栈中T类型的元素
        int top;					//栈顶指针
        public Stack()				//构造函数
        {
            maxsize = 10;
            data = new T[maxsize];
            top = -1;
        }
        public bool StackEmpty()		//判断栈空方法
        { return top == -1; }
        public bool Push(T e)			//元素e进栈方法
        {
            if (top == maxsize - 1)		//栈满返回false
                return false;
            top++;
            data[top] = e;
            return true;
        }
        public bool Pop(ref T e)		//元素出栈方法
        {
            if (top == -1)			//栈空返回false
                return false;
            e = data[top];
            top--;
            return true;
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            int e = 0;
            Stack<int> s1 = new Stack<int>();		    //定义整数栈
            s1.Push(1);							        //进栈3个整数
            s1.Push(2);
            s1.Push(3);
            Console.Write("整数栈出栈次序：");
            while (!s1.StackEmpty())					//栈不空时出栈元素
            {
                s1.Pop(ref e);
                Console.Write("{0} ", e);
            }
            Console.WriteLine();
            double d= 0;
            Stack<double> s2 = new Stack<double>();		//定义实数栈
            s2.Push(2.5);							    //进栈3个实数
            s2.Push(3.8);
            s2.Push(5.9);
            Console.Write("实数栈出栈次序：");
            while (!s2.StackEmpty())					//栈不空时出栈元素
            {
                s2.Pop(ref d);
                Console.Write("{0} ", d);
            }
            Console.WriteLine();

            Student st =new Student();
            Stack<Student> s3 = new Stack<Student>();//定义学生栈
            s3.Push(new Student(1,"Student1"));			//进栈3个学生对象
            s3.Push(new Student(2,"Student2"));
            s3.Push(new Student(3,"Student3"));
            Console.Write("学生对象栈出栈次序：");
            while (!s3.StackEmpty())				//栈不空时出栈元素
            {
                s3.Pop(ref st);
                st.Dispstudent();
            }
            Console.WriteLine();
            Teacher te = new Teacher();
            Stack<Teacher> s4 = new Stack<Teacher>();   //定义教师栈
            s4.Push(new Teacher(1, "Teacher1"));	    //进栈3个教师对象
            s4.Push(new Teacher(2, "Teacher2"));
            s4.Push(new Teacher(3, "Teacher3"));
            Console.Write("教师对象栈出栈次序：");
            while (!s4.StackEmpty())				//栈不空时出栈元素
            {
                s4.Pop(ref te);
                te.Dispteacher();
            }
            Console.WriteLine();
        }
    }
}
