using System;

namespace Exercise4_2
{
    class Program
    {
        static void Main(string[] args)
        {
            double[] average = new double[] { 0,0,0,0,0 };
            int[,] stu = new int[5, 4];
            Console.WriteLine("欢迎进入学生管理系统!");
            for (int i = 0; i < 5; i++)
            {
                double temp = 0;
                for (int j = 0; j < 4; j++)
                {
                    Console.Write("请输入第{1}位学生第{0}门课成绩：",j+1,i+1);
                    stu[i, j] = int.Parse(Console.ReadLine());
                    temp += stu[i, j];
                }
                average[i] = temp/4;
            }

            for (int i = 0; i < 5; i++)
            {
                Console.WriteLine("第{0}位的同学的成绩平均分为：{1}",i+1,average[i]);
            }
        }
    }
}
