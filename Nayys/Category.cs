//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

namespace Nayys
{
    public partial class Category
    {
        public Category()
        {
            this.Galery = new HashSet<Galery>();
        }
    
        public int CategoryID { get; set; }
        public string CategoryName { get; set; }
        public Nullable<int> CategoryTypeID { get; set; }
    
        public virtual ICollection<Galery> Galery { get; set; }
        public virtual CategoryType CATEGORYTYPE { get; set; }
    }
    
}
