using Gulf_Hajj_and_Ummrah.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Gulf_Hajj_and_Ummrah.Controllers
{
    public class GroupMembersController : Controller
    {

        Gulf_HUEntities db = new Gulf_HUEntities();
        // GET: GroupMembers
        public ActionResult Index(int id)
        {
            ViewBag.clientName = db.client_details_tbl.Where(x => x.id == id).FirstOrDefault().name;
            ViewBag.clientID = db.client_details_tbl.Where(x => x.id == id).FirstOrDefault().id;
            var client = db.client_details_tbl.Where(x => x.id == id).FirstOrDefault();
            var members = db.group_of_people_details_tbl.Where(x => x.client_id == id && x.isDeleted != true).ToList();
            double? totalAmount = client.billing_details_tbl.LastOrDefault().total_amount;
            GroupMembersViewModel groupMembers = new GroupMembersViewModel
            {
                addmember = null,
                members = members,
                client_Details_Tbl = client,
                totalAmount = totalAmount
            };

            return View(groupMembers);
        }


        //[HttpPost]
        //public ActionResult Index(group_of_people_details_tbl obj)
        //{
        //    try
        //    {
        //        // TODO: Add insert logic here
        //        Create(obj);
        //        return RedirectToAction("Index");
        //    }
        //    catch
        //    {
        //        return View();
        //    }
        //}

        // GET: GroupMembers/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: GroupMembers/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: GroupMembers/Create
        [HttpPost]
        public ActionResult Create(GroupMembersViewModel obj)
        {
            
            // TODO: Add insert logic here
            obj.addmember.client_id = obj.client_Details_Tbl.id;
            
            
            db.group_of_people_details_tbl.Add(obj.addmember);
            db.SaveChanges();

            var client = db.client_details_tbl.Where(x => x.id == obj.client_Details_Tbl.id).FirstOrDefault();
            double? totalAmount = client.billing_details_tbl.LastOrDefault().clientPaymentForOne * (client.group_of_people_details_tbl.Count() + 1);
            
            ;

            billing_details_tbl billing = new billing_details_tbl();


            billing.id = client.billing_details_tbl.FirstOrDefault().id;
            billing.clientPaymentForOne = client.billing_details_tbl.FirstOrDefault().clientPaymentForOne;
            billing.total_amount = totalAmount;
            billing.amount_recieved = 0;
           
            billing.amount_pending = billing.total_amount - billing.amount_recieved;
            billing.client_id = client.billing_details_tbl.FirstOrDefault().client_id;
            billing.dateRegistered = client.billing_details_tbl.FirstOrDefault().dateRegistered;

            Gulf_HUEntities db2 = new Gulf_HUEntities();
            db2.Entry(billing).State = EntityState.Modified;

            db2.SaveChanges();
            return RedirectToAction("Index", new { id = obj.client_Details_Tbl.id });
            

            
        }

        // GET: GroupMembers/Edit/5
        public ActionResult Edit(int id)
        {
            var data = db.group_of_people_details_tbl.Where(x => x.id == id).FirstOrDefault();

            return PartialView("EditPartialView",data);
        }

        // POST: GroupMembers/Edit/5
        [HttpPost]
        public ActionResult Edit(group_of_people_details_tbl obj)
        {
            try
            {
                // TODO: Add update logic here
                db.Entry(obj).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index", new { id = obj.client_id });
            }
            catch
            {
                return View();
            }
        }

       

        // POST: GroupMembers/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, GroupMembersViewModel obj)
        {
            try
            {
                //var client = db.group_of_people_details_tbl.Where(x => x.id == obj.client_Details_Tbl.id).FirstOrDefault();
                //double? totalAmount = client..LastOrDefault().clientPaymentForOne / (client.group_of_people_details_tbl.Count() - 1);
                var emp = db.group_of_people_details_tbl.Find(id);
                emp.isDeleted = true;
                db.Entry(emp).State = EntityState.Modified;
                db.SaveChanges();
                return Json(new { success = true, message = "Deleted Successfully" }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return View();
            }
        }
    }
}
