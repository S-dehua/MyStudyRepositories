using System;

namespace Exercise5_1
{
    class Program
    {
        static void Main(string[] args)
        {
            Person person = new Person(2,60.2);
            Animal animal = new Animal(4, 310.5);
            Console.WriteLine("人有{0}条腿，体重是{1}kg",person.legs,person.GetWeight());
            Console.WriteLine("动物有{0}条腿，体重是{1}kg",animal.legs,animal.GetWeight());
        }
    }

    class Person
    {
        public int legs;
        protected double weight;

        public double GetWeight()
        {
            return weight;
        }

        public Person(int legs,double weight)
        {
            this.legs = legs;
            this.weight = weight;
        }
    }

    class Animal
    {
        public int legs;
        protected double weight;

        public double GetWeight()
        {
            return weight;
        }

        public Animal(int legs,double weight)
        {
            this.legs = legs;
            this.weight = weight;
        }
    }

}
