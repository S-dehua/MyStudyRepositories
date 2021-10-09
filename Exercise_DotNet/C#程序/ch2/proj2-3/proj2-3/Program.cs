using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace proj2_3
{
    class Program
    {
        enum Color { Red=5, Green, Blue, White=1, Black } 
		//类型声明应放在Main函数的外面
		static void Main(string[] args)
		{	Color c1,c2,c3;
			Console.WriteLine("Red={0},Green={1},Blue={2},White={3},Black={4}",Color.Red,Color.Green,Color.Blue,Color.White,
				Color.Black);
			Console.WriteLine("Red={0},Green={1},Blue={2},White={3},Black={4}",(int)Color.Red,(int)Color.Green,
				(int)Color.Blue,(int)Color.White,(int)Color.Black);
			c1 = Color.Red;
			c2 = c1 + 1;
			c3 = c2 + 1;
			Console.WriteLine("c1={0},c2={1},c3={2}", c1, c2,c3);
			Console.WriteLine("c1={0},c2={1},c3={2}", (int)c1, (int)c2,(int)c3);
		}
    }
}
