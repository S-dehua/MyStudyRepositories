using System;

namespace experment5_1
{
    class Program
    {
        static void Main(string[] args)
        {
            Course[] courses = new Course[] { new Course("课程1",4, 92), new Course("课程2", 3, 80),
                new Course("课程3", 2, 98), new Course("课程4", 6, 70), new Course("课程5", 3, 89) };
            Student student = new Student(1,"王华",courses);
            Console.WriteLine("学号：{0} \t 姓名：{1}",student.classId,student.name);

            Console.WriteLine("\t课程名\t\t学分\t\t分数");
            for (int i = 0; i < courses.Length; i++)
            {
                Console.WriteLine("\t"+courses[i].className+"\t\t"+courses[i].credit+"\t\t"+courses[i].grade);
            }
            Console.WriteLine("常见算法GPA={0}，标准算法GPA={1}",GPA1(courses),GPA2(courses));
        }

        static double GPA1(Course[] course)
        {
            int[] dot = new int[5];
            for (int i = 0; i < course.Length; i++)
            {
                if (course[i].grade >= 90) dot[i] = 4;
                else if (course[i].grade >= 80) dot[i] = 3;
                else if (course[i].grade >= 70) dot[i] = 2;
                else if (course[i].grade >= 60) dot[i] = 1;
                else dot[i] = 0;
            }
            return (double)(course[0].credit * dot[0] +
                course[1].credit * dot[1] +
                course[2].credit * dot[2] +
                course[3].credit * dot[3] +
                course[4].credit * dot[4]) /
                (course[0].credit + course[1].credit + course[2].credit + course[3].credit + course[4].credit);
        }

        static double GPA2(Course[] course)
        {
            return (double)(course[0].grade*course[0].credit+
                course[1].grade * course[1].credit +
                course[2].grade * course[2].credit +
                course[3].grade * course[3].credit +
                course[4].grade * course[4].credit)*4/
                ((course[0].credit+ course[1].credit+ course[2].credit + course[3].credit + course[4].credit)*100);
        }
    }
}
