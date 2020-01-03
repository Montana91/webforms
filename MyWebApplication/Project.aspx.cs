using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectFees;


namespace MyWebApplication
{
    public partial class Project : System.Web.UI.Page
    {
        public decimal BasePrice = 100.00m;
        protected void Page_Load(object sender, EventArgs e)
        {
            ItBasePrice.Text = BasePrice.ToString("C");
        }

        protected void ddlcounty_SelectedIndexChanged(object sender, EventArgs e)
        {
            Area areas = new Area();
            decimal fee = areas.GetFeeForArea(ddlcounty.SelectedValue);
            decimal finalPrice = BasePrice + fee;
            ItcustomPrice.Text = finalPrice.ToString("C");
        }
    }
}