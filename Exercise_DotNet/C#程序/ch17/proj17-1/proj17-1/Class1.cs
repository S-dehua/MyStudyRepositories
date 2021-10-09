using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj17_1
{
    class Student   //声明Student类
    {
        public int 学号;
        public string 姓名;
        public string 性别;
        public string 民族;
        public string 班号;
        public Student(int xh, string xm, string xb, string mz, string bh)
        {
            学号 = xh;
            姓名 = xm;
            性别 = xb;
            民族 = mz;
            班号 = bh;
        }
    }
    class Score       //声明Score类
    {
        public int 学号;
        public string 课程名;
        public int 分数;
        public Score(int xh, string kcm, int fs)
        {
            学号 = xh;
            课程名 = kcm;
            分数 = fs;
        }
    };
}
