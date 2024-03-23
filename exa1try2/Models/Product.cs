using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace exa1try2.Models;

public partial class Product
{
    public int ProductId { get; set; }

    [Display(Name = "Product")]
    public string? ProductName { get; set; }
    [Display(Name = "Proveedor")]
    public int? SupplierId { get; set; }
    [Display(Name = "Categoria")]
    public int? CategoryId { get; set; }
    [Display(Name = "Cantidad por unidad")]
    public int? QuantityPerUnit { get; set; }
    [Display(Name = "Precio unitario")]
    public decimal? UnitPrice { get; set; }
    [Display(Name = "Unidad en stock")]
    public int? UnitsInStock { get; set; }
    [Display(Name = "Unidades en orden")]
    public int? UnitsOnOrder { get; set; }
    [Display(Name = "Nivel de reorden")]
    public int? ReorderLevel { get; set; }
    [Display(Name = "Descuento")]
    public string? Discounted { get; set; }
    [Display(Name = "Categoria")]
    public virtual Category? Category { get; set; }

    public virtual Supplier? Supplier { get; set; }
}
