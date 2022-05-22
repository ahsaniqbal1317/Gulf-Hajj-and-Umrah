using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gulf_Hajj_and_Ummrah.Models;

namespace Gulf_Hajj_and_Ummrah.Controllers
{
    public class PackageController : Controller
    {
        Gulf_HUEntities db = new Gulf_HUEntities();
        // GET: Package
        public ActionResult PackageDetails()
        {
            var data = db.package_details_tbl.ToList();
            return View(data);
        }
    }
}