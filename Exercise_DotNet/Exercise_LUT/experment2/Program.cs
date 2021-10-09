using System;

namespace experment2
{
    class Program
    {
        static void Main(string[] args)
        {
            Stud s1, s2;
            s1.name = "李明";
            s2.name = "王丽";
            s1.birthdate = new DateTime(1985, 10, 18);
            s2.birthdate = new DateTime(1986, 2, 16);
            Console.WriteLine(s1.name+"的生日为"+s1.birthdate);
            Console.WriteLine(s2.name+"的生日为"+s2.birthdate);
            Console.WriteLine(s1.name+"出生在"+s1.birthdate.Date.DayOfWeek);
            Console.WriteLine(s2.name+"出生在"+s2.birthdate.Date.DayOfWeek);
            Console.WriteLine(s1.name+"和"+s2.name+"相差"+(s2.birthdate-s1.birthdate)+"天");

        }
    }
}
