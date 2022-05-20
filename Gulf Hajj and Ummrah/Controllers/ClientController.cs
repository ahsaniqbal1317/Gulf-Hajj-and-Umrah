using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;
using Gulf_Hajj_and_Ummrah.Models;
using System.IO;

namespace Gulf_Hajj_and_Ummrah.Controllers
{
    public class ClientController : Controller
    {
        Gulf_HUEntities db = new Gulf_HUEntities();
        // GET: Client
        public ActionResult ClientDetails()
        {
            var data = db.client_details_tbl.Where(x => x.isDeleted == false).ToList();
            return View(data);
            //asdasdasdasd
        }

        [HttpGet]
        public ActionResult AddOrEdit(int id)
        {
            //add logic
            List<cities_tbl> citylist = db.cities_tbl.ToList();
            ViewBag.CityList = new SelectList(citylist, "id", "cityname");
            List<roomtype_tbl> roomtypelist = db.roomtype_tbl.ToList();
            ViewBag.CityList = new SelectList(roomtypelist, "id", "type_of_room");
            if (id > 0)
            {
                //edit logic
            }
            return PartialView("AddOrEdit_PartialView_Client");
        }
        [HttpPost]
        public ActionResult AddOrEdit(ClientViewModel model, HttpPostedFileBase scanneddocPassport, HttpPostedFileBase scanneddocPicture)
        {
            try
            {
                //dropdown list for roomtype and cities
                List<cities_tbl> citylist = db.cities_tbl.ToList();
                ViewBag.CityList = new SelectList(citylist, "id", "cityname");
                List<roomtype_tbl> roomtypelist = db.roomtype_tbl.ToList();
                ViewBag.CityList = new SelectList(roomtypelist, "id", "type_of_room");
                //client table detail save here
                client_details_tbl client = new client_details_tbl();
                client.id = model.clientid;
                client.name = model.name;
                client.dispatched_to = model.dispatched_to;
                client.phone_number = model.phone_number;
                client.address = model.address;
                client.isDeleted = false;
                client.date = DateTime.Now;
                client.reference_by = model.reference_by;
                client.reference_contact_number= model.reference_contact_number;

                //client table passport doc and picture save here

                if (scanneddocPassport != null)
                {
                    string comFileName = Path.GetFileNameWithoutExtension(scanneddocPassport.FileName) + DateTime.Now.ToString("yymmssfff") + Path.GetExtension(scanneddocPicture.FileName);
                    string path = Path.Combine(Server.MapPath("~/UploadedDocs"), comFileName);
                    scanneddocPassport.SaveAs(path);
                    client.passport_doc = comFileName;

                }
                if (scanneddocPicture != null)
                {
                    string comFileName = Path.GetFileNameWithoutExtension(scanneddocPicture.FileName) + DateTime.Now.ToString("yymmssfff") + Path.GetExtension(scanneddocPicture.FileName);
                    string path = Path.Combine(Server.MapPath("~/UploadedDocs"), comFileName);
                    scanneddocPicture.SaveAs(path);
                    client.picture = comFileName;

                }


                db.client_details_tbl.Add(client);
                db.SaveChanges();

                ////hotel table details save here
                //hotel_details_tbl hotel = new hotel_details_tbl();
                //hotel.id = model.h_id;
                //hotel.hotel_name = model.hotel_name;
                //hotel.checkin_time = model.checkin_time;
                //hotel.checkout_time = model.checkout_time;

                //db.hotel_details_tbl.Add(hotel);
                //db.SaveChanges();

                ////package table details save here
                //package_details_tbl package = new package_details_tbl();
                //package.id = model.packageid;
                //package.package_name = model.package_name;
                //package.no_of_days = model.no_of_days;
                //package.date_of_departure = model.date_of_departure;
                //package.date_of_arrival = model.date_of_arrival;
                //package.pnr = model.pnr;
                //package.other_details = model.other_details;

                //db.package_details_tbl.Add(package);
                //db.SaveChanges();

                ////flight table details save here
                //flight_details_tbl flight = new flight_details_tbl();
                //flight.id = model.id;
                //flight.airline_name = model.airline_name;
                //flight.departure_from = model.departure_from;
                //flight.arrirved_at = model.arrirved_at;
                //flight.departure_time = model.departure_time;
                //flight.arrival_time = model.arrival_time;
                //flight.date = model.dateOfFlight;


                //db.flight_details_tbl.Add(flight);
                //db.SaveChanges();

            }
            catch(Exception ex)
            {
                throw ex;
            }
            return RedirectToAction("ClientDetails","Client");
        }

    }
}