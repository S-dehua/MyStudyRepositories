using System;

namespace Exericise7_2
{
    class Program
    {
        static void Main(string[] args)
        {
            MyClass myClass1 = new MyClass(18,"Mike",200);
            Console.WriteLine(myClass1);

            Type type = Type.GetType("Exericise7_2.MyClass");
            object myClass = Activator.CreateInstance(type);
            Console.WriteLine(type.GetField("name"));
            Console.WriteLine(type.GetField("age"));
            Console.WriteLine(type.GetField("price"));
            Console.WriteLine(myClass);
            Console.WriteLine(type.GetMethod("eat"));
            Console.WriteLine(type.GetMethod("fly"));
        }
    }

    public class MyClass
    {
        public int age;
        public string name;
        public double price;
        //public int Age { get; set; }
        //public string Name { get; set; }
        //public double Price { get; set; }


        public MyClass()
        {
        }
        public MyClass(int age,string name,double price)
        {
            this.age = age;
            this.name = name;
            this.price = price;
        }
        public void eat()
        {
            Console.WriteLine(" void eat() ... ");
        }
        public int fly(int legs)
        {
            Console.WriteLine(" int fly({0}) ... ",legs);
            return legs;
        }
    }
}
