namespace OurDecorSerov.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            ProductsMaterials = new HashSet<ProductsMaterial>();
        }

        public int ProductId { get; set; }

        [StringLength(255)]
        public string ProductType { get; set; }

        public int ProdcutTypeId { get; set; }

        [StringLength(255)]
        public string ProductName { get; set; }

        public double? Arcticle { get; set; }

        public double? MinCostForPartner { get; set; }

        public double? WidtRulon { get; set; }

        public virtual ProductsType ProductsType { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductsMaterial> ProductsMaterials { get; set; }
    }
}
