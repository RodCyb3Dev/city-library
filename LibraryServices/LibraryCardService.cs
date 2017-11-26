using LibraryData;
using LibraryData.Models;
using System.Linq;
using System.Collections.Generic;

namespace LibraryServices
{
    public class LibraryCardService : ILibraryCard
    {
        private LibraryContext _context; // private field to store the context.

        public LibraryCardService(LibraryContext context)
        {
            _context = context;
        }

        public void Add(LibraryCard newLibraryCard)
        {
            _context.Add(newLibraryCard);
            _context.SaveChanges();
        }

        public LibraryCard Get(int cardId)
        {
            return _context.LibraryCards.FirstOrDefault(p => p.Id == cardId);
        }

        IEnumerable<LibraryCard> ILibraryCard.GetAll()
        {
            return _context.LibraryCards;
        }
    }
}
