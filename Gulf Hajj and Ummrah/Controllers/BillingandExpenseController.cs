using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gulf_Hajj_and_Ummrah.Models;

namespace Gulf_Hajj_and_Ummrah.Controllers
{
    [Authorize]
    public class BillingandExpenseController : Controller
    {
        Gulf_HUEntities1 db = new Gulf_HUEntities1();
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
            data.amount_recieved = data.amount_pending;
            return PartialView("Edit_PartialView_Billing", data);

        }
        [HttpPost]
        public ActionResult EditBillingDetails(billing_details_tbl emp)
        {
            var data = db.billing_details_tbl.Where(x => x.id == emp.id).FirstOrDefault();
            emp.id = data.id;
            emp.total_amount = data.total_amount;
            emp.amount_recieved = emp.amount_recieved + data.amount_recieved;
            emp.amount_pending = emp.total_amount - emp.amount_recieved;
            emp.client_id = data.client_id;
            emp.clientPaymentForOne = data.clientPaymentForOne;
            emp.dateRegistered = data.dateRegistered;
            
            if(emp.amount_pending <= 1)
            {
                emp.datePayment = DateTime.Now;
            }
            emp.profit_loss = emp.amount_recieved - emp.expense;
            Gulf_HUEntities1 db2 = new Gulf_HUEntities1();
            db2.Entry(emp).State = EntityState.Modified;
            
            db2.SaveChanges();
            return RedirectToAction("/BillingList");
        }
    }
}