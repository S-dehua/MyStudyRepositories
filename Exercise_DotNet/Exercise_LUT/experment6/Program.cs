using System;

namespace experment6
{
    class Program
    {
        static void Main(string[] args)
        {
            Book book1 = new Book("C语言",100);
            Book book2 = new Book("数据结构",110);
            Book book3 = new Book("软件工程",210);
            Book book4 = new Book("操作系统",208);

            Reader wangHua = new Reader("王华",1234);
            Reader liBing = new Reader("李兵",2600);

            wangHua.BorrowBook(book1);
            wangHua.BorrowBook(book2);
            wangHua.BorrowBook(book3);

            liBing.BorrowBook(book4);

            wangHua.ShowMyInfo();
            wangHua.ShowMyBooks();
            liBing.ShowMyInfo();
            liBing.ShowMyBooks();
        }
    }
}
