using System;
using System.Collections.Generic;

namespace exa1try2.Models;

public partial class Category
{
    public int CategoryId { get; set; }

    public string? CategoryName { get; set; }

    public string? Description { get; set; }

    public string? Picture { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
