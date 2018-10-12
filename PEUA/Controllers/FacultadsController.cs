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
    public class FacultadsController : Controller
    {
        private ModeloPEUAContainer db = new ModeloPEUAContainer();

        // GET: Facultads
        public ActionResult Index()
        {
            var facultad = db.Facultad.Include(f => f.Convenio);
            return View(facultad.ToList());
        }

        // GET: Facultads/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Facultad facultad = db.Facultad.Find(id);
            if (facultad == null)
            {
                return HttpNotFound();
            }
            return View(facultad);
        }

        // GET: Facultads/Create
        public ActionResult Create()
        {
            ViewBag.Convenio_Id = new SelectList(db.Convenio, "Id", "Nombre");
            return View();
        }

        // POST: Facultads/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Nombre,Convenio_Id")] Facultad facultad)
        {
            if (ModelState.IsValid)
            {
                db.Facultad.Add(facultad);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Convenio_Id = new SelectList(db.Convenio, "Id", "Nombre", facultad.Convenio_Id);
            return View(facultad);
        }

        // GET: Facultads/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Facultad facultad = db.Facultad.Find(id);
            if (facultad == null)
            {
                return HttpNotFound();
            }
            ViewBag.Convenio_Id = new SelectList(db.Convenio, "Id", "Nombre", facultad.Convenio_Id);
            return View(facultad);
        }

        // POST: Facultads/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Nombre,Convenio_Id")] Facultad facultad)
        {
            if (ModelState.IsValid)
            {
                db.Entry(facultad).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Convenio_Id = new SelectList(db.Convenio, "Id", "Nombre", facultad.Convenio_Id);
            return View(facultad);
        }

        // GET: Facultads/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Facultad facultad = db.Facultad.Find(id);
            if (facultad == null)
            {
                return HttpNotFound();
            }
            return View(facultad);
        }

        // POST: Facultads/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Facultad facultad = db.Facultad.Find(id);
            db.Facultad.Remove(facultad);
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
