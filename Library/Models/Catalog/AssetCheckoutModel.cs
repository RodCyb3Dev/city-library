using LibraryData.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Library.Models.Catalog
{
    public class AssetCheckoutModel
    {
        public string Title { get; set; }
        public string ImageUrl { get; set; }
        public LibraryCard LibraryCard { get; set; }
        public DateTime DateDue { get; set; }
        public DateTime DateCheckedOut { get; set; }
    }
}
