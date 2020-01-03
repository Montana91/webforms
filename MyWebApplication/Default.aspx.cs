using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyWebApplication
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string message = string.Format("Name:{0}  Last Name:{1}  Age: {2}  Anual Income: {3}",
             txtName.Text, txtLastname.Text, txtage.Text, txtincome.Text);
            ltmessage.Text = message;


        }
    }
}