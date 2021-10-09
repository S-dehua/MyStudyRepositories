using System;
using System.Collections;

namespace proj8_1
{
    public class Student    //声明Student类
    {
        public int id;          //学号
        public string name;     //姓名
        public Student(int id,string name)  //构造函数
        {
            this.id = id;
            this.name = name;
        }
    }
    public class People : IEnumerable       //声明可枚举类People
    {
        private Student[] sts;              //sts为Student对象数组
        public People(Student[] pArray)     //People类的构造函数,创建sts
        {
            sts = new Student[pArray.Length];
            for (int i = 0; i < pArray.Length; i++)
                sts[i] = pArray[i];
        }
        IEnumerator IEnumerable.GetEnumerator() //实现IEnumerable接口的GetEnumerator方法
        {
            return (IEnumerator)GetEnumerator();
        }
        public PeopleEnum GetEnumerator()      //定义People类的GetEnumerator
        {
            return new PeopleEnum(sts);
        }
    }
    public class PeopleEnum : IEnumerator   //声明Student类的枚举器类
    {
        public Student[] sts;
        int position = -1;                  //初始位置为-1
        public PeopleEnum(Student[] list)   //构造函数
        {
            sts = list;
        }
        public bool MoveNext()              //定义PeopleEnum的MoveNext方法
        {
            position++;
            return (position < sts.Length);
        }
        public void Reset()                //定义PeopleEnum的Reset方法
        {
            position = -1;
        }
        object IEnumerator.Current        //实现IEnumerator的Current属性
        {
            get
            {
                return Current;         //返回PeopleEnum的Current属性
            }
        }
        public Student Current          //定义PeopleEnum的Current属性
        {
            get
            {
                return sts[position];   //返回sts中position位置的Student对象
            }
        }
    }
    class Program
    {
        static void Main()
        {
            Student[] starry = new Student[4]
            {   new Student(1, "Smith"),new Student(2, "Johnson"),
                new Student(3,"Mary"),new Student(4,"Hammer") };
            People peopleList = new People(starry);
            foreach (Student p in peopleList)
                Console.WriteLine(p.id.ToString() + " " + p.name);
        }
    }
}
