using System;
using System.Collections.Generic;
namespace tmp
{
    class Program
    {
        static void Main()
        {
            foreach (int number in Attr)
                Console.Write(number.ToString() + " ");
        }
        public static IEnumerable<int> Attr
        {
            get
            {
                int[] myarr = { 3, 5, 8 };
                for (int i = 0; i <= 2; i++)
                {
                    yield return myarr[i];
                }
            }
        }
    }
}
