using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace StoreServerBL.Models
{
    public partial class StoreDBContext : DbContext
    {
        public StoreDBContext()
        {
        }

        public StoreDBContext(DbContextOptions<StoreDBContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Buyer> Buyers { get; set; }
        public virtual DbSet<Color> Colors { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<PaintMaterial> PaintMaterials { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<ProductInOrder> ProductInOrders { get; set; }
        public virtual DbSet<Seller> Sellers { get; set; }
        public virtual DbSet<Style> Styles { get; set; }
        public virtual DbSet<SurfaceMaterial> SurfaceMaterials { get; set; }
        public virtual DbSet<User> Users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=localhost\\sqlexpress;Database=StoreDB;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "Hebrew_CI_AS");

            modelBuilder.Entity<Buyer>(entity =>
            {
                entity.ToTable("buyer");

                entity.HasIndex(e => e.Username, "buyer_username_unique")
                    .IsUnique();

                entity.Property(e => e.BuyerId).HasColumnName("buyerId");

                entity.Property(e => e.Username)
                    .IsRequired()
                    .HasMaxLength(255)
                    .HasColumnName("username");

                entity.HasOne(d => d.UsernameNavigation)
                    .WithOne(p => p.Buyer)
                    .HasForeignKey<Buyer>(d => d.Username)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("buyer_username_foreign");
            });

            modelBuilder.Entity<Color>(entity =>
            {
                entity.ToTable("colors");

                entity.Property(e => e.ColorId).HasColumnName("colorID");

                entity.Property(e => e.Color1)
                    .IsRequired()
                    .HasMaxLength(255)
                    .HasColumnName("color");
            });

            modelBuilder.Entity<Order>(entity =>
            {
                entity.ToTable("order");

                entity.Property(e => e.OrderId).HasColumnName("orderID");

                entity.Property(e => e.BuyerId).HasColumnName("buyerId");

                entity.Property(e => e.Date)
                    .HasColumnType("date")
                    .HasColumnName("date");

                entity.Property(e => e.TotalPrice).HasColumnName("totalPrice");

                entity.HasOne(d => d.Buyer)
                    .WithMany(p => p.Orders)
                    .HasForeignKey(d => d.BuyerId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("order_buyerid_foreign");
            });

            modelBuilder.Entity<PaintMaterial>(entity =>
            {
                entity.HasKey(e => e.PMaterialId)
                    .HasName("paintMaterials_pMaterialid_primary");

                entity.ToTable("paintMaterials");

                entity.Property(e => e.PMaterialId).HasColumnName("pMaterialID");

                entity.Property(e => e.PMaterial)
                    .IsRequired()
                    .HasMaxLength(255)
                    .HasColumnName("pMaterial");
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.ToTable("product");

                entity.Property(e => e.ProductId).HasColumnName("productID");

                entity.Property(e => e.AdvertisingDate)
                    .HasColumnType("date")
                    .HasColumnName("advertisingDate");

                entity.Property(e => e.ColorId).HasColumnName("colorID");

                entity.Property(e => e.Details)
                    .IsRequired()
                    .HasMaxLength(255)
                    .HasColumnName("details");

                entity.Property(e => e.Height).HasColumnName("height");

                entity.Property(e => e.IsActive).HasColumnName("isActive");

                entity.Property(e => e.PMaterialId).HasColumnName("pMaterialID");

                entity.Property(e => e.Picture)
                    .IsRequired()
                    .HasMaxLength(255)
                    .HasColumnName("picture");

                entity.Property(e => e.Price).HasColumnName("price");

                entity.Property(e => e.ProductName)
                    .IsRequired()
                    .HasMaxLength(255)
                    .HasColumnName("productName");

                entity.Property(e => e.SMaterialId).HasColumnName("sMaterialID");

                entity.Property(e => e.SellerId).HasColumnName("sellerId");

                entity.Property(e => e.StyleId).HasColumnName("styleID");

                entity.Property(e => e.Width).HasColumnName("width");

                entity.HasOne(d => d.Color)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.ColorId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("product_colorid_foreign");

                entity.HasOne(d => d.PMaterial)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.PMaterialId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("product_pMaterialid_foreign");

                entity.HasOne(d => d.SMaterial)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.SMaterialId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("product_sMaterialid_foreign");

                entity.HasOne(d => d.Seller)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.SellerId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("product_sellerid_foreign");

                entity.HasOne(d => d.Style)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.StyleId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("product_styleid_foreign");
            });

            modelBuilder.Entity<ProductInOrder>(entity =>
            {
                entity.ToTable("productInOrder");

                entity.Property(e => e.Id).HasColumnName("ID");

                entity.Property(e => e.OrderId).HasColumnName("orderID");

                entity.Property(e => e.ProductId).HasColumnName("productID");

                entity.HasOne(d => d.Order)
                    .WithMany(p => p.ProductInOrders)
                    .HasForeignKey(d => d.OrderId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("productinorder_orderid_foreign");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.ProductInOrders)
                    .HasForeignKey(d => d.ProductId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("productinorder_productid_foreign");
            });

            modelBuilder.Entity<Seller>(entity =>
            {
                entity.ToTable("seller");

                entity.HasIndex(e => e.Username, "seller_username_unique")
                    .IsUnique();

                entity.Property(e => e.SellerId).HasColumnName("sellerId");

                entity.Property(e => e.Info)
                    .IsRequired()
                    .HasMaxLength(255)
                    .HasColumnName("info");

                entity.Property(e => e.IsActive).HasColumnName("isActive");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(255)
                    .HasColumnName("name");

                entity.Property(e => e.Picture)
                    .HasMaxLength(255)
                    .HasColumnName("picture");

                entity.Property(e => e.Username)
                    .IsRequired()
                    .HasMaxLength(255)
                    .HasColumnName("username");

                entity.HasOne(d => d.UsernameNavigation)
                    .WithOne(p => p.Seller)
                    .HasForeignKey<Seller>(d => d.Username)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("seller_username_foreign");
            });

            modelBuilder.Entity<Style>(entity =>
            {
                entity.ToTable("styles");

                entity.Property(e => e.StyleId).HasColumnName("styleID");

                entity.Property(e => e.Style1)
                    .IsRequired()
                    .HasMaxLength(255)
                    .HasColumnName("style");
            });

            modelBuilder.Entity<SurfaceMaterial>(entity =>
            {
                entity.HasKey(e => e.SMaterialId)
                    .HasName("surfaceMaterials_sMaterialid_primary");

                entity.ToTable("surfaceMaterials");

                entity.Property(e => e.SMaterialId).HasColumnName("sMaterialID");

                entity.Property(e => e.SMaterial)
                    .IsRequired()
                    .HasMaxLength(255)
                    .HasColumnName("sMaterial");
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.HasKey(e => e.Username)
                    .HasName("user_username_primary");

                entity.ToTable("user");

                entity.HasIndex(e => e.Email, "user_email_unique")
                    .IsUnique();

                entity.Property(e => e.Username)
                    .HasMaxLength(255)
                    .HasColumnName("username");

                entity.Property(e => e.Email)
                    .IsRequired()
                    .HasMaxLength(255)
                    .HasColumnName("email");

                entity.Property(e => e.IsBuyer).HasColumnName("isBuyer");

                entity.Property(e => e.IsSeller).HasColumnName("isSeller");

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasMaxLength(255)
                    .HasColumnName("password");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
