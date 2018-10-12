using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using PEUA.Models;

namespace PEUA.Controllers
{
    public class EmpleadorsController : Controller
    {
        private ModeloPEUAContainer db = new ModeloPEUAContainer();

        // GET: Empleadors
        public ActionResult Index()
        {
            var empleador = db.Empleador.Include(e => e.Persona).Include(e => e.Organizacion);
            return View(empleador.ToList());
        }

        // GET: Empleadors/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Empleador empleador = db.Empleador.Find(id);
            if (empleador == null)
            {
                return HttpNotFound();
            }
            return View(empleador);
        }

        // GET: Empleadors/Create
        public ActionResult Create()
        {
            ViewBag.Id = new SelectList(db.Persona, "Id", "Nombre");
            ViewBag.Organizacion_Id = new SelectList(db.Organizacion, "Id", "Nombre");
            return View();
        }

        // POST: Empleadors/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Cargo,Area,Id,Organizacion_Id")] Empleador empleador)
        {
            if (ModelState.IsValid)
            {
                db.Empleador.Add(empleador);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Id = new SelectList(db.Persona, "Id", "Nombre", empleador.Id);
            ViewBag.Organizacion_Id = new SelectList(db.Organizacion, "Id", "Nombre", empleador.Organizacion_Id);
            return View(empleador);
        }

        // GET: Empleadors/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Empleador empleador = db.Empleador.Find(id);
            if (empleador == null)
            {
                return HttpNotFound();
            }
            ViewBag.Id = new SelectList(db.Persona, "Id", "Nombre", empleador.Id);
            ViewBag.Organizacion_Id = new SelectList(db.Organizacion, "Id", "Nombre", empleador.Organizacion_Id);
            return View(empleador);
        }

        // POST: Empleadors/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Cargo,Area,Id,Organizacion_Id")] Empleador empleador)
        {
            if (ModelState.IsValid)
            {
                db.Entry(empleador).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Id = new SelectList(db.Persona, "Id", "Nombre", empleador.Id);
            ViewBag.Organizacion_Id = new SelectList(db.Organizacion, "Id", "Nombre", empleador.Organizacion_Id);
            return View(empleador);
        }

        // GET: Empleadors/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Empleador empleador = db.Empleador.Find(id);
            if (empleador == null)
            {
                return HttpNotFound();
            }
            return View(empleador);
        }

        // POST: Empleadors/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Empleador empleador = db.Empleador.Find(id);
            db.Empleador.Remove(empleador);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
