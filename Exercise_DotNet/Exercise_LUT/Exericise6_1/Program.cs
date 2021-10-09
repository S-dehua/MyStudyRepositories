using System;

namespace Exericise6_1
{
    class Program
    {
        static void Main(string[] args)
        {
            Employee employee = new Employee();
;           UEmployee uEmployee = new UEmployee();
            employee.showSalary();
            uEmployee.showSalary();
            Employee employee1 = new Employee(2);
            UEmployee uEmployee1 = new UEmployee(2);
            employee1.showSalary();
            uEmployee1.showSalary();
        }
    }
}
