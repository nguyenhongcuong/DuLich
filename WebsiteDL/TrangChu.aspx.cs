using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangChu : Page
{
    public List<ItemHang> Hangs = new List<ItemHang>();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void List_Diadiem_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (Session["GioHang"] != null)
        {
            Hangs = Session["GioHang"] as List<ItemHang>;
        }
        else
        {
            Hangs = new List<ItemHang>();
        }
        List_Diadiem.SelectedIndex = e.Item.ItemIndex;
        var controls = e.Item.Controls;
        var name = (controls[3] as Label)?.Text;
        var price = (controls[5] as Label)?.Text.Replace(".", "");
        var image = (controls[1] as Image)?.ImageUrl.Replace("~/", "");


        ItemHang itemHang = new ItemHang
        {
            Name = name,
            ImageUrl = image,
            Price = price != null ? double.Parse(price) : 0
        };
        if (Hangs != null && Hangs.Count == 0)
        {
            Hangs.Add(itemHang);
            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "alertMessage", "alert('" + "Đặt hàng thành công" + "')", true);
        }
        else
        {
            if (Hangs != null && !Hangs.Exists(x => x.Name.Equals(itemHang.Name)))
            {
                Hangs.Add(itemHang);
                ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "alertMessage", "alert('" + "Đặt hàng thành công" + "')", true);
            }
        }

        Session["GioHang"] = Hangs;
    }

    protected void List_Diadiem_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        //var dataItemContainer = (sender as DataList)?.DataItemContainer;
        //if (dataItemContainer != null)
        //{
        //    var a = dataItemContainer?.Controls;
        //}
        //if (List_Diadiem.SelectedItem != null)
        //{
        //    var name = (List_Diadiem.SelectedItem.FindControl("nameLabel") as Label)?.Text;
        //    var price = (List_Diadiem.SelectedItem.FindControl("priceLabel") as Label)?.Text.Replace(".", "");
        //    var image = (List_Diadiem.SelectedItem.FindControl("img") as Image)?.ImageUrl;
        //    ItemHang itemHang = new ItemHang
        //    {
        //        Name = name,
        //        ImageUrl = image,
        //        Price = price != null ? double.Parse(price) : 0
        //    };
        //    if (hangs.Count == 0)
        //    {
        //        hangs.Add(itemHang);
        //    }
        //    else
        //    {
        //        if (!hangs.Exists(x => x.Name.Equals(itemHang.Name)))
        //        {
        //            hangs.Add(itemHang);
        //            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "alertMessage", "alert('" + "Đặt hàng thành công" + "')", true);
        //        }
        //    }

        //    Session["GioHang"] = hangs;

        //}
    }
}