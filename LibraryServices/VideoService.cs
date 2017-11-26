using LibraryData;
using LibraryData.Models;
using System.Collections.Generic;
using System.Linq;

namespace LibraryServices
{
    public class VideoService : IVideo
    {
        // need to give the class a constructor that takes a dbContext.
        // save that off into a private field where we can store the dbContext.
        // then, implment IBook interface.

        private LibraryContext _context; // private field to store the context.

        public VideoService(LibraryContext context)
        {
            _context = context;
        }

        IEnumerable<Video> IVideo.GetAll()
        {
            return _context.Videos;
        }

        public IEnumerable<Video> GetByDirector(string director)
        {
            return _context.Videos.Where(a => a.Director.Contains(director));
        }

        public void Add(Video newVideo)
        {
            _context.Add(newVideo);
            _context.SaveChanges();
        }

        public Video Get(int id)
        {
            return _context.Videos.FirstOrDefault(v => v.Id == id);
        }
    }
}
