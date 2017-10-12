using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using TravelBlogTwo.Models;

namespace TravelBlogTwo.Controllers
{
    public class LocationController : Controller
    {
        public TravelBlogDbContext db = new TravelBlogDbContext();

        public IActionResult Index()
        {
            return View(db.Locations.ToList());
        }

        public IActionResult Entries(int id)
        {
            var thisEntry = db.Experiences.FirstOrDefault(experiences => experiences.LocationId == id);
            return View(thisEntry);
        }
    }
}
