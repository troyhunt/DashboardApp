using System.Web.Mvc;

namespace DashboardApp.Controllers
{
  public class HomeController : Controller
  {
    public ActionResult Index()
    {
      ViewBag.Title = "Home";
      return View();
    }
  }
}
