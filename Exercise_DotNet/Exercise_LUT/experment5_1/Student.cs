using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace experment5_1
{
    class Student
    {
        public int classId;
        public string name;
        public Course[] courses;

        public Student()
        {
        }

        public Student(int classId,string name,Course[] courses)
        {
            this.classId = classId;
            this.name = name;
            this.courses = courses;
        }
    }
}
