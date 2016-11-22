using NUnit.Framework;
using PRUEBITASGO.Controllers;
using PRUEBITASGO.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Tests
{
    [TestFixture]
    public class ProductControllerTestClass
    {
        //-------------------------Index-----------------------------------
        [Test]
        public void ProductIndex()
        {
            var obj = new ProductsController();
            var actResult = obj.Index() as ViewResult;
            Assert.That(actResult.ViewName, Is.EqualTo(""));
        }

        //------------------------Details----------------------------------
        [Test]
        public void DetailsNull()
        {
            var obj = new ProductsController();
            var actResult = obj.Details(null) as HttpStatusCodeResult;
            Assert.AreEqual(400, actResult.StatusCode);
        }

        [Test]
        public void DetailsNotFound()
        {
            var obj = new ProductsController();
            var actResult = obj.Details(500) as HttpStatusCodeResult;
            Assert.AreEqual(404, actResult.StatusCode);
        }

        //-----------------------Create-----------------------------------
        [Test]
        public void CreateGood()
        {
            var obj = new ProductsController();
            Product aux = new Product();
            aux.ProductName = "Test CreateController";
            aux.Stock = 5;
            aux.UnitPrice = 10.0M;
            aux.Estado = true;
            aux.Perecible = true;
            aux.DueDate = DateTime.Parse("2003-09-01");
            aux.Description = "Test Description";

            var actResult = obj.Create(aux) as RedirectToRouteResult;
            Assert.AreEqual("Index", actResult.RouteValues["action"]);
        }
        //-----------------------Product Data Annotation----------------
        [Test]
        public void ProductDAfail()
        {
            var obj = new ProductsController();
            Product aux = new Product();
            aux.ProductName = "Te";
            aux.Stock = 5;
            aux.UnitPrice = 10.0M;
            aux.Estado = true;
            aux.Perecible = true;
            aux.DueDate = DateTime.Parse("2003-09-01");
            aux.Description = "Test Description";

            Assert.IsTrue(ValidateModel(aux).Count > 0);
        }

        [Test]
        public void ProductDACorrect()
        {
            var obj = new ProductsController();
            Product aux = new Product();
            aux.ProductName = "Test Correct";
            aux.Stock = 5;
            aux.UnitPrice = 10.0M;
            aux.Estado = true;
            aux.Perecible = true;
            aux.DueDate = DateTime.Parse("2003-09-01");
            aux.Description = "Test Description";

            Assert.IsTrue(ValidateModel(aux).Count <= 0);
        }
        //------------------------Edit----------------------------------
        [Test]
        public void EditNull()
        {
            var obj = new ProductsController();
            int? value = null;
            var actResult = obj.Edit(value) as HttpStatusCodeResult;
            Assert.AreEqual(400, actResult.StatusCode);
        }

        [Test]
        public void EditGood()
        {
            var obj = new ProductsController();
            Product aux = new Product();
            aux.ProductID = 5;
            aux.ProductName = "Test CreateController";
            aux.Stock = 5;
            aux.UnitPrice = 10.0M;
            aux.Estado = true;
            aux.Perecible = true;
            aux.DueDate = DateTime.Parse("2003-09-01");
            aux.Description = "Test Description";

            var actResult = obj.Edit(aux) as RedirectToRouteResult;
            Assert.AreEqual("Index", actResult.RouteValues["action"]);
        }
        //------------------------Delete----------------------------------
        [Test]
        public void DeleteNull()
        {
            var obj = new ProductsController();
            var actResult = obj.Delete(null) as HttpStatusCodeResult;
            Assert.AreEqual(400, actResult.StatusCode);
        }

        [Test]
        public void DeleteNotFound()
        {
            var obj = new ProductsController();
            var actResult = obj.Delete(500) as HttpStatusCodeResult;
            Assert.AreEqual(404, actResult.StatusCode);
        }

        //------------------------Delete----------------------------------
        [Test]
        public void DeleteConfirmedNull()
        {
            var obj = new ProductsController();
            var actResult = obj.DeleteConfirmed(700) as RedirectToRouteResult;
            Assert.AreEqual("Index", actResult.RouteValues["action"]);
        }
        
        //----------------Data annotation Utils --------------------------


        private IList<ValidationResult> ValidateModel(object model)
        {
            var validationResults = new List<ValidationResult>();
            var ctx = new ValidationContext(model, null, null);
            Validator.TryValidateObject(model, ctx, validationResults, true);
            return validationResults;
        }


    }
}