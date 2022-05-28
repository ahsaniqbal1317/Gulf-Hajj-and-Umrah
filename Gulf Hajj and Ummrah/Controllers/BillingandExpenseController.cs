using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gulf_Hajj_and_Ummrah.Models;

namespace Gulf_Hajj_and_Ummrah.Controllers
{
    public class BillingandExpenseController : Controller
    {
        Gulf_HUEntities db = new Gulf_HUEntities();
        // GET: BillingandExpense
        public ActionResult BillingList()
        {
            var data = db.billing_details_tbl.Where(x => x.isDeleted != true).ToList();
            return View(data);
        }
        [HttpGet]
        public ActionResult EditBillingDetails(int id)
        {
            billing_details_tbl data = db.billing_details_tbl.Where(x => x.id == id).FirstOrDefault();
            return PartialView("Edit_PartialView_Billing", data);

        }
        [HttpPost]
        public ActionResult EditBillingDetails(billing_details_tbl emp)
        {
            db.Entry(emp).State = EntityState.Modified;
            emp.datePayment = DateTime.Now;
            db.SaveChanges();
            return RedirectToAction("/BillingList");
        }
    }
}