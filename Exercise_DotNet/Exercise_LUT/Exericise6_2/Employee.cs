using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exericise6_1
{
    class Employee
    {
        int workingAge = 0;
        double salary = 1000;
        public double Salary
        {
            get
            {
                return salary;
            }
            set
            {
                salary = value;
            }
        }
        public int WorkingAge
        {
            get
            {
                return workingAge;
            }
            set
            {
                workingAge = value;
            }
        }
        public Employee()
        {

        }
        public Employee(int workingAge)
        {
            this.workingAge = workingAge;
            Salary = Salary + 30 * workingAge;
        }
        public void showSalary()
        {
            Console.WriteLine("Employee 的工资是： " + Salary);
        }
    }
}
