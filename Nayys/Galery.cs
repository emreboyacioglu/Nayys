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
    public partial class GALERY
    {
        public GALERY()
        {
            this.ADVERTISEMENT = new HashSet<ADVERTISEMENT>();
            this.GALERYHASHTAGS = new HashSet<GALERYHASHTAGS>();
            this.PICTURE = new HashSet<PICTURE>();
        }
    
        public int GALERYID { get; set; }
        public Nullable<int> CATEGORYID { get; set; }
        public string GALERYNAME { get; set; }
        public Nullable<int> PEOPLELIKECOUNT { get; set; }
        public string THUMBNAIL { get; set; }
        public Nullable<System.DateTime> CREATEDATE { get; set; }
    
        public virtual ICollection<ADVERTISEMENT> ADVERTISEMENT { get; set; }
        public virtual CATEGORY CATEGORY { get; set; }
        public virtual ICollection<GALERYHASHTAGS> GALERYHASHTAGS { get; set; }
        public virtual ICollection<PICTURE> PICTURE { get; set; }
    }
    
}
