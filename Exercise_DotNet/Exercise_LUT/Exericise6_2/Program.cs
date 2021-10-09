using Exericise6_1;
using System;

namespace Exericise6_2
{
    class Program
    {
        static void Main(string[] args)
        {
            Employee employee = new Employee();
            Graduate graduate = new Graduate();
            employee.showSalary();
            graduate.showSalary();
            Employee employee1 = new Employee(2);
            Graduate graduate1 = new Graduate(2);
            employee1.showSalary();
            graduate1.showSalary();
        }
    }
}
