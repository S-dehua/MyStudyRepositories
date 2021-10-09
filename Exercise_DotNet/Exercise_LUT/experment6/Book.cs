using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace experment6
{
    class Book : BClass
    {
        public string authorInfo;
        public Book(string name,int id)
        {
            this.name = name;
            this.id = id;
        }
    }
}
