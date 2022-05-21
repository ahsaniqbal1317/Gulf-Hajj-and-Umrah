using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gulf_Hajj_and_Ummrah.Models;

namespace Gulf_Hajj_and_Ummrah.Controllers
{
    public class HotelController : Controller
    {
        Gulf_HUEntities db = new Gulf_HUEntities();
        // GET: Hotel
        public ActionResult HotelList()
        {
            var data = db.hotel_details_tbl.Where(x => x.isDeleted == false).ToList();
            return View(data);
            
        }
    }
}