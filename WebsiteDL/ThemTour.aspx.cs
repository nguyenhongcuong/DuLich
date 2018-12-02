using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ThemTour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        FileUpload f = (FileUpload)FormView1.FindControl("FileUpload1");
        String path = Server.MapPath("~/Img/");
        f.PostedFile.SaveAs(path + f.FileName);
        SqlDataSource1.InsertParameters["image"].DefaultValue = f.FileName;
    }
}