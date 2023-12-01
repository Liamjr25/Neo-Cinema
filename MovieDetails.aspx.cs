using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeoCinemas
{
    public partial class MovieDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["MovieCodeSession"].ToString();
        }

        protected void btnBookNow_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookingMovie.aspx");
        }
    }
}