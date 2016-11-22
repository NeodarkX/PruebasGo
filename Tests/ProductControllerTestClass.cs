using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;
using PRUEBITASGO.Controllers;
using System.Web.Mvc;
namespace Tests
{
    [TestFixture]
    public class ProductControllerTestClass
    {
        [Test]
        public void ProductIndex()
        {
            var obj = new ProductsController();
            var actResult = obj.Index() as ViewResult;
            Assert.That(actResult.ViewName, Is.Eq)
        }
    }
}
