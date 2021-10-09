using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace experment5_1
{
    class Course
    {
        public string className;
        public int credit;
        public int grade;
        public Course(string className,int credit,int grade)
        {
            this.className = className;
            this.credit = credit;
            this.grade = grade;
        }
    }
}
