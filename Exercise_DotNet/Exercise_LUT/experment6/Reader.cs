using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace experment6
{
    class Reader : BClass
    {
        Book[] books = new Book[5];
        int index = 0;
        public Reader(string name,int id)
        {
            this.name = name;
            this.id = id;
        }

        public void BorrowBook(Book book)
        {
            books[index] = book;
            index++;
        }

        public void ShowMyBooks()
        {
            for (int i = 0; i < books.Length; i++)
            {
                if (books[i] == null) break;
                Console.WriteLine("\t"+(i+1)+"："+books[i].name+"<"+books[i].id+">");
            }
        }

        public void ShowMyInfo()
        {
            Console.WriteLine("读者：{0} <{1}>所借的图书：",name,id);
        }
    }
}
