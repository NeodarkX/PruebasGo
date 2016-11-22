namespace PRUEBITASGO.Migrations
{
    using Models;
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Data.Entity.Validation;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<PRUEBITASGO.DAL.ShopContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(PRUEBITASGO.DAL.ShopContext context)
        {
            var Products = new List<Product>
            {
                new Product {ProductName="Galleta Oreo", Description="Galleta Oreo", Stock=10, Perecible=true, DueDate=DateTime.Parse("2003-09-01"), UnitPrice=0.50M,Estado=true },

                new Product {ProductName="Choco Soda", Description="Galleta Choco Soda", Stock=10, Perecible=true, DueDate=DateTime.Parse("2003-09-01"), UnitPrice=0.50M,Estado=true },

                new Product {ProductName="Margarita", Description="Galleta Margarita", Stock=10, Perecible=true, DueDate=DateTime.Parse("2003-09-01"), UnitPrice=0.50M,Estado=true },

                new Product {ProductName="Glacitas", Description="Galleta Glacitas", Stock=10, Perecible=true, DueDate=DateTime.Parse("2003-09-01"), UnitPrice=0.50M,Estado=true }
            };

            try
            {
                Products.ForEach(s => context.Products.Add(s));
                context.SaveChanges();
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }



            var Categories = new List<Category>
            {
                new Category {CategoryName="Galleta",Description="Categoria Galletas" }
            };

            Categories.ForEach(s => context.Categories.Add(s));
            context.SaveChanges();

            var User = new List<User>
            {
                new User {UserName="user",Password="PruebasGo" },
                new User {UserName="admin",Password="admin" }
            };

            User.ForEach(s => context.Users.Add(s));
            context.SaveChanges();
        }
    }
    
}
