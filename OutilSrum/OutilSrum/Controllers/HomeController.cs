﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OutilSrum.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            return RedirectToAction("Accueil");
        }

        public ActionResult Accueil()
        {
            return View();
        }

        public ActionResult Logout()
        {
            return RedirectToAction("Index");
        }

        public string Later()
        {
            return "To do later !";
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Inscription([Bind(Include = "FirstName,LastName,Mail")]Models.User u)
        {
            if (ModelState.IsValid)
            {
                // to do later !
                return RedirectToAction("Accueil");
            }
            return RedirectToAction("Index", u);
        }

    }
}