using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeoCinemas
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //declare variables
            string Username;
            string password;

            //retrieve values from textboxes & save into variables
            Username = txtUserName.Text;
            password = txtPassword.Text;

            //loop through Gridview & check if username and password is legitimate
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                if ((Username == GridView1.Rows[i].Cells[1].Text) && (password == GridView1.Rows[i].Cells[2].Text))
                {
                    Session["user"] = Username;
                    Session["name"] = GridView1.Rows[i].Cells[3].Text;
                    Response.Redirect("AdminHome.aspx");
                }
            }
        }
    }
}