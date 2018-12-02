using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

public partial class GioHang : System.Web.UI.Page
{
    public static List<ItemHang> hangs = new List<ItemHang>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["GioHang"] != null)
            {
                hangs = (Session["GioHang"] as List<ItemHang>);
                if (hangs != null && hangs.Count > 0)
                {
                    rpGioHang.DataSource = hangs;
                    rpGioHang.DataBind();
                }

            }
        }

    }

    public static string GetTotal()
    {
        double total = 0;
        if (hangs != null && hangs.Count > 0)
        {
            total = hangs.Sum(x => x.Price);
        }

        return total.ToString("N0");
    }

    [WebMethod]
    public static void DeleteItem(string name)
    {
        if (hangs != null && hangs.Count > 0)
        {
            hangs.RemoveAll(x => x.Name.Equals(name));
            HttpContext.Current.Session["GioHang"] = hangs;
        }
    }

    [WebMethod]
    public static void ThanhToan()
    {
        hangs = null;
        HttpContext.Current.Session["GioHang"] = null;
    }
}