using System;
using System.Reflection;
namespace Proj7_4
{
    class Program
    {
        static void Main(string[] args)
        {
            int i, j;
            if (args.GetLength(0) < 1)  //命令行输入的参数不正确
                Console.WriteLine("用法:Program dll库名");
            else
            {
                Assembly assembly = Assembly.LoadFrom(args[0]);	//获取程序集对象
                Type[] types = assembly.GetTypes();
                Console.WriteLine(assembly.GetName().Name + "包含的项目名如下:");
                for (i = 0; i < types.GetLength(0); ++i)
                    Console.WriteLine("\r" + i + ": " + types[i].Name);
                i = types.Length - 1;
                Console.Write("请选择(0-" + i + "):");
                j = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine();
                if (types[j].IsSubclassOf(typeof(Sport)))	//若types[j]是Sport的子类
                {
                    ConstructorInfo ci = types[j].GetConstructor(new Type[0]);
                    Sport sport = (Sport)ci.Invoke(new Object[0]);	//创建sport对象
                    Console.WriteLine(sport.GetName() + "比赛时间:" +
                        sport.GetDuration());
                }
                else
                    Console.WriteLine(types[j].Name + "不属于指定的体育项目");
            }
        }
    }
}
