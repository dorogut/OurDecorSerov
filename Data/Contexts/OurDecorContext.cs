using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace OurDecorSerov.Data
{
    public partial class OurDecorContext : DbContext
    {
        private static OurDecorContext _context;
        public OurDecorContext()
            : base("name=OurDecorContext")
        {
        }
        public static OurDecorContext GetContext()
        {
            if (_context == null)
                _context = new OurDecorContext();
            return _context;
        }
        public virtual DbSet<Material> Materials { get; set; }
        public virtual DbSet<MaterialsType> MaterialsTypes { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<ProductsMaterial> ProductsMaterials { get; set; }
        public virtual DbSet<ProductsType> ProductsTypes { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ProductsType>()
                .HasMany(e => e.Products)
                .WithRequired(e => e.ProductsType)
                .HasForeignKey(e => e.ProdcutTypeId);
        }
    }
}
