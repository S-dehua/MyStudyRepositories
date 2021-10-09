using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace experment5_2
{
    class Student
    {
        public string name;
        public DateTime beginTime;
        public Student(string name)
        {
            this.name = name;
            this.beginTime = DateTime.Now;
        }

        public void Do()
        {
            Console.WriteLine("学生{0}在{1}时开始考试",this.name,this.beginTime);
        }

        public void Finish()
        {
            Console.WriteLine("经过一段时间...\n\t学生{0}完成考试",this.name);
            Teacher.End();
        }
    }
}
