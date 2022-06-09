using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Gulf_Hajj_and_Ummrah.Models;

namespace Gulf_Hajj_and_Ummrah.Controllers
{
    public class HomeController : Controller
    {
        Gulf_HUEntities1 db = new Gulf_HUEntities1();
        // GET: Home
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(string username, string password)
        {
            var userexist = db.user_tbl.Where(x => x.username == username && x.password == password && x.isDeleted == false).FirstOrDefault();
            if (userexist != null)
            {
                FormsAuthentication.SetAuthCookie(Convert.ToString(userexist.id), false);

                //userexist.IsActive = true;
                //userexist.LastLogin = DateTime.Now;
                db.SaveChanges();

                //if (returnUrl == "")
                //{
                // var role = db.tbl_AppFunctions.Where(x => x.tbl_RoleFunction.Where(a => a.RoleId == userexist.Role).FirstOrDefault().RoleId == userexist.Role).FirstOrDefault();

                return RedirectToAction("ClientDetails", "Client");
                //}
                //else
                //{
                //    return Redirect(Url.Content(returnUrl));
                //}
            }
            else
            {
                ViewBag.msg = "Username or Password is InCorrect...Retry with correct Credential";
            }
            return View();
        }
    }
}