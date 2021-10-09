using System;
namespace proj5_2
{
    class Myclass
    {
        string str;
        public void setstr(string mystr)
        {
            str = mystr;
        }
        public string getstr()
        {
            return str;
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Myclass s = new Myclass();
            s.setstr("Mary");
            Console.WriteLine("s.str={0}",s.getstr());
            Myclass t = new Myclass();
            t.setstr("Smith");
            Console.WriteLine("t.str={0}",t.getstr());
            t = s;
            Console.WriteLine("执行t=s");
            Console.WriteLine("t.str={0}", t.getstr());
        }
    }
}
