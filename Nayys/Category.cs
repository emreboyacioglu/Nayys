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
    public partial class CATEGORY
    {
        public CATEGORY()
        {
            this.GALERY = new HashSet<GALERY>();
        }
    
        public int CATEGORYID { get; set; }
        public string CATEGORYNAME { get; set; }
        public Nullable<int> CATEGORYTYPEID { get; set; }
    
        public virtual CATEGORYTYPE CATEGORYTYPE { get; set; }
        public virtual ICollection<GALERY> GALERY { get; set; }
    }
    
}
