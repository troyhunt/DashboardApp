using System.ComponentModel.DataAnnotations;

namespace DashboardApp.Models
{
  public class DashboardReport
  {
    [DisplayFormat(DataFormatString = "{0:d}")]
    public int NewComments { get; set; }

    [DisplayFormat(DataFormatString = "{0:d}")]
    public int NewTasks { get; set; }

    [DisplayFormat(DataFormatString = "{0:d}")]
    public int NewOrders { get; set; }

    [DisplayFormat(DataFormatString = "{0:d}")]
    public int SupportTickets { get; set; }
  }
}