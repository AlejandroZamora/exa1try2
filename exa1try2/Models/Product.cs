using System;
using System.Collections.Generic;

namespace exa1try2.Models;

public partial class Product
{
    public int ProductId { get; set; }

    public string? ProductName { get; set; }

    public int? SupplierId { get; set; }

    public int? CategoryId { get; set; }

    public int? QuantityPerUnit { get; set; }

    public decimal? UnitPrice { get; set; }

    public int? UnitsInStock { get; set; }

    public int? UnitsOnOrder { get; set; }

    public int? ReorderLevel { get; set; }

    public string? Discounted { get; set; }

    public virtual Category? Category { get; set; }

    public virtual Supplier? Supplier { get; set; }
}
