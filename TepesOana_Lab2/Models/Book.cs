using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;

namespace TepesOana_Lab2.Models
{
    public class Book
    {
        public int ID { get; set; }
        public string Title { get; set; }
        public string Author { get; set; }
        [Column(TypeName = "decimal(6, 2)")]
        public decimal Price { get; set; }
        public ICollection<Order> Orders { get; set; }
        public ICollection<PublishedBook> PublishedBooks { get; set; }
    }

    public class Order
    {
        public int OrderID { get; set; }
        public int CustomerID { get; set; }
        public int BookID { get; set; }

        public DateTime OrderDate { get; set; }

        public Customer Customer { get; set; }
        public Book Book { get; set; }
    }

    public class PublishedBook
    {
        public int PublisherID { get; set; }
        public int BookID { get; set; }
        public Publisher Publisher { get; set; }
        public Book Book { get; set; }
    }
}
