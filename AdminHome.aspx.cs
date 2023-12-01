using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeoCinemas
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //to display session variables in label control on child form
            lblUser.Text = Session["user"].ToString();
       


            //to display session variable in label control on masterpage
            Label lblFirstName = (Label)Master.FindControl("lblFirstName");
            lblFirstName.Text = "Hi " + Session["name"];
        }
    }
}