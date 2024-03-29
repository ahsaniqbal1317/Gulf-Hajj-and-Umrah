﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Gulf_Hajj_and_Ummrah.Models;

namespace Gulf_Hajj_and_Ummrah.Controllers
{
    public class AdministrationController : Controller
    {
        Gulf_HUEntities db = new Gulf_HUEntities();
        // GET: Administration

        // Cities list
        public ActionResult CitiesList()
        {
            var data = db.cities_tbl.Where(x => x.isDeleted == false).ToList();
            return View(data);
        }
        [HttpGet]
        public ActionResult AddOrEditCities(int id)
        {
            cities_tbl obj = new cities_tbl();
            if (id > 0)
            {
                obj = db.cities_tbl.Find(id);
            }
            return PartialView("AddOrEditCities_PartialView", obj);
        }
        [HttpPost]
        public ActionResult AddOrEditCities(cities_tbl emp)
        {
            if (emp.id == 0)
            {
                emp.isDeleted = false;
                db.cities_tbl.Add(emp);
                db.SaveChanges();
                return RedirectToAction("/CitiesList");
            }
            else
            {
                emp.isDeleted = false;
                db.Entry(emp).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("/CitiesList");
            }
        }
        [HttpPost]
        public ActionResult Delete(int id)
        {
            cities_tbl obj = db.cities_tbl.Where(x => x.id == id).FirstOrDefault<cities_tbl>();
            obj.isDeleted = true;
            db.Entry(obj).State = EntityState.Modified;
            db.SaveChanges();
            return Json(new { success = true, message = "Deleted Successfully" }, JsonRequestBehavior.AllowGet);
        }







        //Roomtype list

        public ActionResult RoomtypeList()
        {
            var data = db.roomtype_tbl.Where(x => x.isDeleted == false).ToList();
            return View(data);
        }
        [HttpGet]
        public ActionResult AddOrEditRoomtype(int id)
        {
            roomtype_tbl obj = new roomtype_tbl();
            if (id > 0)
            {
                obj = db.roomtype_tbl.Find(id);
            }
            return PartialView("AddOrEditRoomtype_PartialView", obj);
        }
        [HttpPost]
        public ActionResult AddOrEditRoomtype(roomtype_tbl emp)
        {
            if (emp.id == 0)
            {
                emp.isDeleted = false;
                db.roomtype_tbl.Add(emp);
                db.SaveChanges();
                return RedirectToAction("/RoomtypeList");
            }
            else
            {
                emp.isDeleted = false;
                db.Entry(emp).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("/RoomtypeList");
            }

        }

        [HttpPost]
        public ActionResult DeleteRoomType(int id)
        {
            roomtype_tbl obj = db.roomtype_tbl.Where(x => x.id == id).FirstOrDefault<roomtype_tbl>();
            obj.isDeleted = true;
            db.Entry(obj).State = EntityState.Modified;
            db.SaveChanges();
            return Json(new { success = true, message = "Deleted Successfully" }, JsonRequestBehavior.AllowGet);
        }

        //Airline
        public ActionResult AirlineList()
        {
            var data = db.airline_tbl.Where(x => x.isDeleted == false).ToList();
            return View(data);
        }
        [HttpGet]
        public ActionResult AddOrEditAirline(int id)
        {
            airline_tbl obj = new airline_tbl();
            if (id > 0)
            {
                obj = db.airline_tbl.Find(id);
            }
            return PartialView("AddOrEditAirline_PartialView", obj);
        }
        [HttpPost]
        public ActionResult AddOrEditAirline(airline_tbl emp)
        {
            if (emp.id == 0)
            {
                emp.isDeleted = false;
                db.airline_tbl.Add(emp);
                db.SaveChanges();
                return RedirectToAction("/AirlineList");
            }
            else
            {
                emp.isDeleted = false;
                db.Entry(emp).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("/AirlineList");
            }

        }

        [HttpPost]
        public ActionResult DeleteAirline(int id)
        {
            airline_tbl obj = db.airline_tbl.Where(x => x.id == id).FirstOrDefault<airline_tbl>();
            obj.isDeleted = true;
            db.Entry(obj).State = EntityState.Modified;
            db.SaveChanges();
            return Json(new { success = true, message = "Deleted Successfully" }, JsonRequestBehavior.AllowGet);
        }
    }
}





