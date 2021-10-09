using System;
namespace proj7_2
{
    public class Student
    {
        private int id;         //学号
        private string name;    //姓名

        public Student(int i,string s)     //构造函数
        {
            id = i;
            name = s;
        }
        public string Name      //Name属性
        {
            get { return name; }
            set { name = value; }
        }

        public int Id          //Id属性
        {
            get { return id; }
            set { id = value; }
        }
    }

    public class GenericList<T> where T : Student   //学生链表类
    {
        private class Node      //结点类
        {
            private Node next;  //指向下一个结点
            private T data;     //结点值

            public Node(T t)    //构造函数
            {
                next = null;
                data = t;
            }

            public Node Next    //Next属性
            {
                get { return next; }
                set { next = value; }
            }

            public T Data       //Data属性
            {
                get { return data; }
                set { data = value; }
            }
        }

        private Node head;      //指向首结点

        public GenericList()    //构造函数
        {
            head = null;
        }

        public void AddHead(T t)    //向首部插入一个结点
        {
            Node n = new Node(t);
            n.Next = head;
            head = n;
        }

        public void Display()   //输出所有结点的数据
        {
            Node current = head;
            while (current != null)
            {
                Console.Write("[{0},{1}]  ",current.Data.Id,current.Data.Name);
                current = current.Next;
            }
            Console.WriteLine();
        }

        public T FindNoNode(int no)   //按学号查找
        {
            Node current = head;
            T t = null;
            while (current != null)
            {   //约束能够确保对Id的访问
                if (current.Data.Id == no)
                {
                    t = current.Data;
                    break;
                }
                else
                    current = current.Next;
            }
            return t;
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            GenericList<Student> st=new GenericList<Student>();
            Student s;
            Student s1 = new Student(1, "Mary");
            Student s2 = new Student(2, "Smith");
            Student s3 = new Student(3, "John");
            Student s4 = new Student(4, "Daniel");
            st.AddHead(s1);
            st.AddHead(s2);
            st.AddHead(s3);
            st.AddHead(s4);
            Console.Write("输出所有学生信息：");
            st.Display();
            int no = 1;
            s = st.FindNoNode(no);
            if (s != null)
                Console.WriteLine("学号为{0}的学生姓名是:{1}", no, s.Name);
            else
                Console.WriteLine("查无此人");
        }
    }
}
