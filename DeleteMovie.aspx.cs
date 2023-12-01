using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeoCinemas
{
    public partial class DeleteMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessageOne.Visible = false;
            lblMessage2.Visible = false;
            btnDelete.Visible = true;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            lblMessageOne.Visible = true;
            btnYes.Visible = true;
            btnDelete.Visible = false;
        }

        protected void btnYes_Click(object sender, EventArgs e)
        {
            lblMessage2.Visible = true;
            SqlDataSource1.Delete();
            lblMessageOne.Visible = false;
            btnDelete.Visible = true;
            txtMovieName.Text = "";
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteMovie.aspx");
        
        
        


        }
    }
}