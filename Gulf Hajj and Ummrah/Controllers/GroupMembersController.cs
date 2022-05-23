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
            var members = db.group_of_people_details_tbl.Where(x => x.client_id == id).ToList();

            GroupMembersViewModel groupMembers = new GroupMembersViewModel
            {
                addmember = null,
                members = members,
                client_Details_Tbl = client
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
            try
            {
                // TODO: Add insert logic here
                obj.addmember.client_id = obj.client_Details_Tbl.id;
                db.group_of_people_details_tbl.Add(obj.addmember);
                db.SaveChanges();
                return RedirectToAction("Index", new { id = obj.client_Details_Tbl.id });
            }
            catch
            {
                return View();
            }
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

        // GET: GroupMembers/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: GroupMembers/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
