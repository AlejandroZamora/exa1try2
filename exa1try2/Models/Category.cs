using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace exa1try2.Models;

public partial class Category
{
    [Display(Name = "Id")]
    public int CategoryId { get; set; }
    [Display(Name = "Nombre")]
    public string? CategoryName { get; set; }
    [Display(Name = "Descripcion")]
    public string? Description { get; set; }
    [Display(Name = "Fotografia")]
    public string? Picture { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
