using System;
namespace proj5_11
{
    class DayCollection
    {
        string[] days = { "Sun", "Mon", "Tues", "Wed", "Thurs", "Fri", "Sat" };
        private int GetDay(string testDay)
        {
            int i = 0;
            foreach (string day in days)
            {
                if (day == testDay)
                    return i;
                i++;
            }
            return -1;
        }
        public int this[string day]		//索引器
        {
            get
            { return (GetDay(day)); }
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            DayCollection week = new DayCollection();
            Console.WriteLine("Fri:{0}", week["Fri"]);
            Console.WriteLine("ABC:{0}", week["ABC"]);
        }
    }
}
