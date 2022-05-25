using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;
using Gulf_Hajj_and_Ummrah.Models;
using System.IO;
using System.Data.Entity;

//NewMasterBranch

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
            ViewBag.roomTypeList = new SelectList(roomtypelist, "id", "type_of_room");
            List<airline_tbl> airlinelist = db.airline_tbl.ToList();
            ViewBag.AirlineList = new SelectList(airlinelist, "id", "airlineName");

            ClientViewModel model = new ClientViewModel();

            if (id > 0)
            {
                //edit logic
                var data = db.client_details_tbl.Include("hotel_details_tbl").Include("package_details_tbl").Include("flight_details_tbl").Where(x => x.id == id).FirstOrDefault();

                //ViewBag.departure_from = new SelectList(citylist, "id", "cityname", data.flight_details_tbl.FirstOrDefault().departure_from);
                //ViewBag.arrival_at = new SelectList(citylist, "id", "cityname", data.flight_details_tbl.FirstOrDefault().arrirved_at);

                model.clientid = data.id;
                model.name = data.name;
                model.dispatched_to = data.dispatched_to;
                model.passportNumber = data.passportNumber;
                model.hotelVoucherNo = data.hotelVoucherNo;
                model.phone_number = data.phone_number;
                model.address = data.address;
                model.reference_by = data.reference_by;
                model.reference_contact_number = data.reference_contact_number;
                model.shirka = data.shirka;
                model.passport_doc = data.passport_doc;
                model.picture = data.picture;

                model.h_id = data.hotel_details_tbl.FirstOrDefault().id;
                model.hotel_name = data.hotel_details_tbl.FirstOrDefault().hotel_name;
                model.checkin_time = data.hotel_details_tbl.FirstOrDefault().checkin_time;
                model.checkout_time = data.hotel_details_tbl.FirstOrDefault().checkout_time;

                model.packageid = data.package_details_tbl.FirstOrDefault().id;
                model.package_name = data.package_details_tbl.FirstOrDefault().package_name;
                model.no_of_days = data.package_details_tbl.FirstOrDefault().no_of_days;
                model.date_of_departure = data.package_details_tbl.FirstOrDefault().date_of_departure;
                model.date_of_arrival = data.package_details_tbl.FirstOrDefault().date_of_arrival;
                model.pnr = data.package_details_tbl.FirstOrDefault().pnr;
                model.other_details = data.package_details_tbl.FirstOrDefault().other_details;

                model.Fid = data.flight_details_tbl.FirstOrDefault().id;
                model.departure_from = data.flight_details_tbl.FirstOrDefault().departure_from;
                model.arrirved_at = data.flight_details_tbl.FirstOrDefault().arrirved_at;
                model.departure_time = data.flight_details_tbl.FirstOrDefault().departure_time;
                model.arrival_time = data.flight_details_tbl.FirstOrDefault().arrival_time;
                model.date = data.flight_details_tbl.FirstOrDefault().date;

                model.transportationid = data.transportation_details_tbl.FirstOrDefault().id;
                model.vechile_type = data.transportation_details_tbl.FirstOrDefault().vechile_type;
                model.tranportationdate = data.transportation_details_tbl.FirstOrDefault().date;
                model.route = data.transportation_details_tbl.FirstOrDefault().route;
            }

            return PartialView("AddOrEdit_PartialView_Client", model);
        }
        [HttpPost]
        public ActionResult AddOrEdit(ClientViewModel model, HttpPostedFileBase scanneddocPassport, HttpPostedFileBase scanneddocPicture)
        {
            try
            {
                //dropdown list for roomtype, cities and airlinename
                List<cities_tbl> citylist = db.cities_tbl.ToList();
                ViewBag.CityList = new SelectList(citylist, "id", "cityname");

                List<roomtype_tbl> roomtypelist = db.roomtype_tbl.ToList();
                ViewBag.roomTypeList = new SelectList(roomtypelist, "id", "type_of_room");

                List<airline_tbl> airlinelist = db.airline_tbl.ToList();
                ViewBag.AirlineList = new SelectList(airlinelist, "id", "airlineName");
                //client table detail save here
                client_details_tbl client = new client_details_tbl();
                client.id = model.clientid;
                client.name = model.name;
                client.dispatched_to = model.dispatched_to;
                client.passportNumber = model.passportNumber;
                client.hotelVoucherNo = model.hotelVoucherNo;
                client.phone_number = model.phone_number;
                client.address = model.address;
                client.isDeleted = false;
                client.date = DateTime.Now;
                client.reference_by = model.reference_by;
                client.reference_contact_number= model.reference_contact_number;
                client.shirka = model.shirka;

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


                if (model.clientid != 0)
                {
                    db.Entry(client).State = EntityState.Modified;
                }
                else
                {
                    db.client_details_tbl.Add(client);
                }
                db.SaveChanges();

                
                //hotel table details save here
                hotel_details_tbl hotel = new hotel_details_tbl();
                hotel.id = model.h_id;
                hotel.hotel_name = model.hotel_name;
                hotel.checkin_time = model.checkin_time;
                hotel.checkout_time = model.checkout_time;
                hotel.isDeleted = false;
                hotel.client_id = client.id;

                if (model.clientid != 0)
                {
                    db.Entry(hotel).State = EntityState.Modified;
                }
                else
                {
                    db.hotel_details_tbl.Add(hotel);
                }
                db.SaveChanges();

                //package table details save here
                package_details_tbl package = new package_details_tbl();
                package.id = model.packageid;
                package.package_name = model.package_name;
                package.no_of_days = model.no_of_days;
                package.date_of_departure = model.date_of_departure;
                package.date_of_arrival = model.date_of_arrival;
                package.pnr = model.pnr;
                package.other_details = model.other_details;
                package.isDeleted = false;
                package.client_id = client.id;

                if (model.clientid != 0)
                {
                    db.Entry(package).State = EntityState.Modified;
                }
                else
                {
                    db.package_details_tbl.Add(package);
                }

                db.SaveChanges();

                //flight table details save here
                flight_details_tbl flight = new flight_details_tbl();
                flight.id = model.Fid;

                flight.departure_from = model.departure_from;
                flight.arrirved_at = model.arrirved_at;
                flight.departure_time = model.departure_time;
                flight.arrival_time = model.arrival_time;
                flight.date = model.dateOfFlight;
                flight.isDeleted = false;
                flight.client_id = client.id;

                if (model.clientid != 0)
                {
                    db.Entry(flight).State = EntityState.Modified;
                }
                else
                {
                    db.flight_details_tbl.Add(flight);
                }
                db.SaveChanges();

                //transportation table details save here
                transportation_details_tbl transport = new transportation_details_tbl();
                transport.id = model.transportationid;
                transport.vechile_type = model.vechile_type;
                transport.date = model.tranportationdate;
                transport.isDeleted = false;
                transport.route = model.route;
                if (model.clientid != 0)
                {
                    db.Entry(flight).State = EntityState.Modified;
                }
                else
                {
                    db.transportation_details_tbl.Add(transport);
                }
                db.SaveChanges();
            }
            catch(Exception ex)
            {
                throw ex;
            }
            return RedirectToAction("ClientDetails","Client");
        }


        [HttpGet]
        public ActionResult ClientDetailForm(int id)
        {
            //add logic
            var data = db.client_details_tbl.Where(x => x.id == id).FirstOrDefault();

            int departure = data.flight_details_tbl.FirstOrDefault().departure_from.GetValueOrDefault();
            int arrival = data.flight_details_tbl.FirstOrDefault().arrirved_at.GetValueOrDefault();

            ViewBag.DepartureFrom = db.cities_tbl.Where(x => x.id == departure).FirstOrDefault().cityname;
            ViewBag.ArrivalAt = db.cities_tbl.Where(x => x.id == arrival).FirstOrDefault().cityname;
            return View(data);
        }      
    }
}