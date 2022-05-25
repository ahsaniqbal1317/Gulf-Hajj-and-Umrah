using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gulf_Hajj_and_Ummrah.Models;

namespace Gulf_Hajj_and_Ummrah.Controllers
{
    public class TransportationController : Controller
    {
        Gulf_HUEntities db = new Gulf_HUEntities();
        // GET: Transportation
        public ActionResult TranportationList()
        {
            var data = db.transportation_details_tbl.Where(x => x.isDeleted == false);
            return View(data);
        }
    }
}