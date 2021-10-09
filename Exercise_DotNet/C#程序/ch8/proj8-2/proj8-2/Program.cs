using System;
using System.Collections;
using System.Collections.Generic;
namespace Proj8_2
{
    class Program
    {
        public static IEnumerable<int> EvenSequence(int i, int j)
        {
            for (int number = i; number <= j; number++)
            {
                if (number % 2 == 0)
                    yield return number;
            }
        }
        static void Main()
        {
            foreach (int number in EvenSequence(5, 18))
                Console.Write("{0} ", number);
            Console.WriteLine();
        }
    }
}
