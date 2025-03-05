﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace fightxweb.Models
{
    public class CategoryDetail
    {
        public int categoryID { get; set; }
        [Required(ErrorMessage ="Category Name Required")]
        [StringLength(100, ErrorMessage ="Minimum 3 and minimum 5 and maximum 100 character are allowed", MinimumLength =3)]
        public string categoryName { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<bool> IsDelete { get; set; }
    }

    public class ProductDetail
    {
        public int productID { get; set; }
        [Required(ErrorMessage ="Product Name is Required")]
        [StringLength(100, ErrorMessage = "Minimum 3 and minimum 5 and maximum 100 character are allowed", MinimumLength =3)]
        public string productName { get; set; }
        [Required]
        [Range(1,50)]
        public Nullable<int> CategoryID { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<bool> IsDelete { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        [Required(ErrorMessage ="Description is Required")]
        public string Description { get; set; }
        public string productImage { get; set; }
        public Nullable<bool> isFeatured { get; set; }
        [Required]
        [Range(typeof(int),"1", "500", ErrorMessage ="Invalid Quantity")]
        public Nullable<int> Quantity { get; set; }
        [Required]
        [Range(typeof(decimal),"1", "200000", ErrorMessage ="Invalid Price")]
        public Nullable<decimal> Price { get; set; }
        public SelectList Categories { get; set; }
    }
}