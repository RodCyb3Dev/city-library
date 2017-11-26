using LibraryData;
using LibraryData.Models;
using System.Collections.Generic;
using System.Linq;

namespace LibraryServices
{
    public class BookService : IBook
    {
        public void Add(Book newBook)
        {
            throw new System.NotImplementedException();
        }

        public Book Get(int id)
        {
            throw new System.NotImplementedException();
        }

        public IEnumerable<Book> GetAll()
        {
            throw new System.NotImplementedException();
        }

        public IEnumerable<Book> GetByAuthor(string author)
        {
            throw new System.NotImplementedException();
        }

        public IEnumerable<Book> GetByISBN(string isbn)
        {
            throw new System.NotImplementedException();
        }
    }
}
