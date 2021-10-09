using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Exericise6_1
{
    class UEmployee : Employee
    {
        public UEmployee()
        {
            Salary = Salary * 1.5;

        }
        public UEmployee(int workingAge)
        {
            Salary = (Salary + workingAge * 30) * 1.5;
        }
        public void showSalary()
        {
            Console.WriteLine("UEmployee 的工资是： " + Salary);
        }
    }
}
