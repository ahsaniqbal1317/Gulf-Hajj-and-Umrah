using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gulf_Hajj_and_Ummrah.Models;

namespace Gulf_Hajj_and_Ummrah.Controllers
{
    [Authorize]
    public class TransportationController : Controller
    {
        Gulf_HUEntities1 db = new Gulf_HUEntities1();
        // GET: Transportation
        public ActionResult TranportationList()
        {
            var data = db.transportation_details_tbl.Where(x => x.isDeleted == false);
            return View(data);
        }
    }
}