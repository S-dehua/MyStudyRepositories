
using Exericise6_1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exericise6_2
{
    class Graduate : Employee
    {

        public Graduate()
        {

        }
        public Graduate(int workingAge)
        {
            WorkingAge = workingAge;
        }
        public void showSalary()
        {
            Console.WriteLine("Graduate 的工资是： " + (Salary + WorkingAge * 30) * 1.5);
        }
    }
}
