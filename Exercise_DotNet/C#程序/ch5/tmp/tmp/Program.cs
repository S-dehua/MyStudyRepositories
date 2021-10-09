using System;
namespace tmp
{
    public class Tel            //电话类
    {
        public long telno;       //电话号码
        public Tel(long telno)
        {
            this.telno = telno;
        }
    }
    public class Person         //人员类
    {
        public int id;          //编号
        public string name;     //姓名
        public Tel tel;         //电话
        public Person DeepCopy()
        {
            Person other = (Person)this.MemberwiseClone();
            other.tel = new Tel(this.tel.telno);
            return other;
        }

        public void display()
        {
            Console.WriteLine("编号{0},姓名{1},电话{2}",id,name,tel.telno);
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            Person p1 = new Person();
            p1.id = 101; p1.name = "Mary"; p1.tel = new Tel(13912345678);
            Console.Write("p1:"); p1.display();
            Console.WriteLine("由p1复制到p2");
            Person p2 = (Person)p1.DeepCopy();
            Console.WriteLine("p1和p2是否指向同一实例:{0}",object.ReferenceEquals(p1, p2)); 
            Console.Write("p2:"); p2.display();
            Console.WriteLine("修改p2的信息");
            p2.id = 820; p2.name = "Smith"; p2.tel.telno = 68775500;
            Console.Write("p1:"); p1.display();
            Console.Write("p2:"); p2.display();
        }
    }
}
