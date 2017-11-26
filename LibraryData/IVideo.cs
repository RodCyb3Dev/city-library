using LibraryData.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace LibraryData
{
    public interface IVideo
    {
        IEnumerable<Video> GetAll();
        IEnumerable<Video> GetByDirector(string author);
        Video Get(int id);
        void Add(Video newVideo);
    }
}
