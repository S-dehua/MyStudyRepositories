using System;

namespace experment5_2
{
    class Program
    {
        static void Main(string[] args)
        {
            Student student1 = new Student("成华");
            Student student2 = new Student("张军");
            Student student3 = new Student("王丽");
            Student student4 = new Student("徐源");
            Student student5 = new Student("刘畅");

            Teacher.Begin();

            student1.Do();
            student2.Do();
            student3.Do();
            student4.Do();
            student5.Do();

            student1.Finish();
            student2.Finish();
            student3.Finish();
            student4.Finish();
            student5.Finish();
        }
    }
}
