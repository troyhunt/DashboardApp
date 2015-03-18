using System.Linq;
using System.Web.Mvc;
using DashboardApp.Models;

namespace DashboardApp.Controllers
{
  public class HomeController : Controller
  {
    public ActionResult Index()
    {
      var db = new DashboardAppEntities();
      var dashboardReport = new DashboardReport
      {
        NewComments = db.Comments.Count(),
        NewTasks = db.Tasks.Count(),
        NewOrders = db.Orders.Count(),
        SupportTickets = db.SupportTickets.Count()
      };

      ViewBag.Title = "Home";
      return View(dashboardReport);
    }
  }
}
