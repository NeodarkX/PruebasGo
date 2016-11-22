using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PRUEBITASGO.Models
{
    public class Category
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CategoryID { get; set; }

        [StringLength(50, MinimumLength = 5)]
        [Display(Name = "Nombre de la categoría")]
        [Required(ErrorMessage = "Nombre de la categoría es requerido")]
        public string CategoryName { get; set; }

        [StringLength(250)]
        [Display(Name = "Descripción de la categoría")]
        public string Description { get; set; }

        public ICollection<Product> Products { get; set; }
    }
}
