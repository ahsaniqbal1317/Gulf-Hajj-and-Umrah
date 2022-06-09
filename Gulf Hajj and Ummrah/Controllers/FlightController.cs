using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gulf_Hajj_and_Ummrah.Models;

namespace Gulf_Hajj_and_Ummrah.Controllers
{
    public class FlightController : Controller
    {
        Gulf_HUEntities1 db = new Gulf_HUEntities1();
        // GET: Flight
        public ActionResult FlightDetails()
        {
            var data = db.flight_details_tbl.Where(x => x.isDeleted == false).ToList();
            return View(data);
        }
    }
}