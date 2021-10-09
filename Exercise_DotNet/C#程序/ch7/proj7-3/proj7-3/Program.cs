using System;
using System.Reflection;	//新增
namespace proj7_3
{
    class Program
    {
        static void Main(string[] args)
        {
            string classname = "System.Object";
            Console.WriteLine("{0}类", classname);
            Type t = Type.GetType(classname);
            MethodInfo[] m = t.GetMethods();
            Console.WriteLine("  {0}的方法个数:{1}", t.FullName, m.Length);
            foreach (MethodInfo item in m)
                Console.WriteLine("\t{0} ", item.Name);
            FieldInfo[] f = t.GetFields();
            Console.WriteLine("  {0}的字段个数:{1}", t.FullName, f.Length);
            foreach (FieldInfo item in f)
                Console.WriteLine("\t{0} ", item.Name);
            ConstructorInfo[] c = t.GetConstructors();
            Console.WriteLine("  {0}的构造函数个数:{1}", t.FullName, c.Length);
            foreach (ConstructorInfo item in c)
                Console.WriteLine("\t{0} ", item.Name);
        }
    }
}
