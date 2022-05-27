using System;
using System.Collections.Generic;
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
    }
}