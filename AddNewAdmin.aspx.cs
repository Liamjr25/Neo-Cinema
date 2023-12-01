using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeoCinemas
{
    public partial class AddNewAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int lastID = 0;
            int newID = 0;

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                lastID = Convert.ToInt16(GridView1.Rows[i].Cells[0].Text);
            }

            newID = lastID + 1;
            txtID.Text = Convert.ToString(newID);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }
    }
}