namespace OurDecorSerov.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Material
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Material()
        {
            ProductsMaterials = new HashSet<ProductsMaterial>();
        }

        public int MaterialId { get; set; }

        [StringLength(255)]
        public string MaterialName { get; set; }

        [StringLength(255)]
        public string MaterialType { get; set; }

        public int MaterialTypeId { get; set; }

        public int? Cost { get; set; }

        public int? AmountStorage { get; set; }

        public int? MinAmount { get; set; }

        public int? AmountBox { get; set; }

        [StringLength(255)]
        public string Unit { get; set; }

        public virtual MaterialsType MaterialsType { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductsMaterial> ProductsMaterials { get; set; }
    }
}
