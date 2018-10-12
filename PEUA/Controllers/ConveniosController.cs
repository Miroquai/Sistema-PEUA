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
    public class ConveniosController : Controller
    {
        private ModeloPEUAContainer db = new ModeloPEUAContainer();

        // GET: Convenios
        public ActionResult Index()
        {
            var convenio = db.Convenio.Include(c => c.Carrera).Include(c => c.Contacto).Include(c => c.Organizacion);
            return View(convenio.ToList());
        }

        // GET: Convenios/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Convenio convenio = db.Convenio.Find(id);
            if (convenio == null)
            {
                return HttpNotFound();
            }
            return View(convenio);
        }

        // GET: Convenios/Create
        public ActionResult Create()
        {
            ViewBag.Carrera_Id = new SelectList(db.Carrera, "Id", "Nombre");
            ViewBag.Contacto_Id = new SelectList(db.Contacto, "Id", "Id");
            ViewBag.Organizacion_Id = new SelectList(db.Organizacion, "Id", "Nombre");
            return View();
        }

        // POST: Convenios/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Nombre,Fecha,Documento,Numero_Decreto,Descripcion,Fecha_expiracion,Periocidad,Contacto_Id,Organizacion_Id,Carrera_Id")] Convenio convenio)
        {
            if (ModelState.IsValid)
            {
                db.Convenio.Add(convenio);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Carrera_Id = new SelectList(db.Carrera, "Id", "Nombre", convenio.Carrera_Id);
            ViewBag.Contacto_Id = new SelectList(db.Contacto, "Id", "Id", convenio.Contacto_Id);
            ViewBag.Organizacion_Id = new SelectList(db.Organizacion, "Id", "Nombre", convenio.Organizacion_Id);
            return View(convenio);
        }

        // GET: Convenios/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Convenio convenio = db.Convenio.Find(id);
            if (convenio == null)
            {
                return HttpNotFound();
            }
            ViewBag.Carrera_Id = new SelectList(db.Carrera, "Id", "Nombre", convenio.Carrera_Id);
            ViewBag.Contacto_Id = new SelectList(db.Contacto, "Id", "Id", convenio.Contacto_Id);
            ViewBag.Organizacion_Id = new SelectList(db.Organizacion, "Id", "Nombre", convenio.Organizacion_Id);
            return View(convenio);
        }

        // POST: Convenios/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Nombre,Fecha,Documento,Numero_Decreto,Descripcion,Fecha_expiracion,Periocidad,Contacto_Id,Organizacion_Id,Carrera_Id")] Convenio convenio)
        {
            if (ModelState.IsValid)
            {
                db.Entry(convenio).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Carrera_Id = new SelectList(db.Carrera, "Id", "Nombre", convenio.Carrera_Id);
            ViewBag.Contacto_Id = new SelectList(db.Contacto, "Id", "Id", convenio.Contacto_Id);
            ViewBag.Organizacion_Id = new SelectList(db.Organizacion, "Id", "Nombre", convenio.Organizacion_Id);
            return View(convenio);
        }

        // GET: Convenios/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Convenio convenio = db.Convenio.Find(id);
            if (convenio == null)
            {
                return HttpNotFound();
            }
            return View(convenio);
        }

        // POST: Convenios/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Convenio convenio = db.Convenio.Find(id);
            db.Convenio.Remove(convenio);
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
