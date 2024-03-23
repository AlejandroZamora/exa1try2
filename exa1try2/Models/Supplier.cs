using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace exa1try2.Models;

public partial class Supplier
{
    [Display(Name = "ID")]
    public int SupplierId { get; set; }
    [Display(Name = "NOMBRE")]
    public string? CompanyName { get; set; }
    [Display(Name = "CONTACTO")]
    public string? ContactName { get; set; }
    [Display(Name = "CONTACTO")]
    public string? ContactTitle { get; set; }
    [Display(Name = "DIRECCION")]
    public string? Address { get; set; }
    [Display(Name = "CIUDAD")]
    public string? City { get; set; }
    [Display(Name = "REGION")]
    public string? Region { get; set; }
    [Display(Name = "CODIGO POSTAL")]
    public string? PostalCode { get; set; }
    [Display(Name = "PAIS")]
    public string? Country { get; set; }
    [Display(Name = "TELEFONO")]
    public string? Phone { get; set; }
    [Display(Name = "FAX")]
    public string? Fax { get; set; }
    [Display(Name = "PAGINA WEB")]
    public string? HomePage { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
