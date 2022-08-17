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
        //public static string role = "";

        Gulf_HUEntities1 db = new Gulf_HUEntities1();

        public static int? role { get; set; }

        // GET: Home
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(user_tbl emp)
        {
            using (var context = new Gulf_HUEntities1())
            {

                bool isValid = context.user_tbl.Any(x => x.username == emp.username && x.password == emp.password);
                if (isValid)
                {
                    FormsAuthentication.SetAuthCookie(emp.username, false);

                    //var data = from user in context.User_tbl where user.Email == emp.Email select user;

                    var personnelIds = db.user_tbl.Where(x => x.username == emp.username && x.password == emp.password).FirstOrDefault();



                    role = personnelIds.roles;

                    return RedirectToAction("ClientDetails", "Client");
                }
                ViewBag.ErrorMessage = "Invalid Username and Password";
                return View();
            }
        }

       
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login");
        }
    }
}