using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PRUEBITASGO.Models
{

    public class Product
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ProductID { get; set; }

        [StringLength(50, MinimumLength = 5)]
        [Display(Name = "Nombre del producto")]
        [Required(ErrorMessage = "Nombre del producto es requerido")]
        public string ProductName { get; set; }

        [StringLength(250, MinimumLength = 0)]
        [Display(Name = "Descripción del producto")]
        public string Description { get; set; }

        [Range(0, 99999)]
        [Required(ErrorMessage = "Stock del producto es requerido")]
        public int Stock { get; set; }

        public bool Perecible { get; set; }

        public bool Estado { get; set; }

        public DateTime DueDate { get; set; }

        [Range(0, 99999.99)]
        public decimal UnitPrice { get; set; }
        public virtual Category Category { get; set; }
    }
}
