using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gulf_Hajj_and_Ummrah.Models;

namespace Gulf_Hajj_and_Ummrah.Controllers
{
    [Authorize]
    public class PackageController : Controller
    {
        Gulf_HUEntities1 db = new Gulf_HUEntities1();
        // GET: Package
        public ActionResult PackageDetails()
        {
            var data = db.package_details_tbl.Where(x=>x.isDeleted==false).ToList();
            return View(data);
        }
    }
}