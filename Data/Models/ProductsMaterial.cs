namespace OurDecorSerov.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ProductsMaterial
    {
        [Key]
        public int ProductMaterialId { get; set; }

        [StringLength(255)]
        public string Product { get; set; }

        public int ProductId { get; set; }

        [StringLength(255)]
        public string MaterialName { get; set; }

        public int MaterialId { get; set; }

        public double? MinAmountMaterial { get; set; }

        public virtual Material Material { get; set; }

        public virtual Product Product1 { get; set; }
    }
}
