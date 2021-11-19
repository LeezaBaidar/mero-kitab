using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MeroKitab
{
    public partial class ViewBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void btnUploadImage_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var currentStock = (Label)e.Row.FindControl("Label11");
                var lblCurrentStock = (Label)e.Row.FindControl("Label13");
                if (currentStock != null)
                {
                    if (Convert.ToInt32(currentStock.Text) <= 0)
                    {
                        currentStock.ForeColor = System.Drawing.Color.Red;
                        lblCurrentStock.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Image img = (Image)e.Row.FindControl("Image1");
                var currentStock = (Label)e.Row.FindControl("Label11");
                if (Convert.ToDecimal(currentStock.Text) <= 0)
                {
                    img.ImageUrl = "images/out-of-stock.png";
                    img.Visible = true;
                }
            }
        }
    }
}