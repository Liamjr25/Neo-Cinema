using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeoCinemas
{
    public partial class BookingMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int lastId = 0;
            int newId = 0;

            //get last id
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                lastId = Convert.ToInt16(GridView1.Rows[i].Cells[0].Text);
            }
            newId = lastId + 1;
            txtId.Text = Convert.ToString(newId);
          
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            double price = 14;
            double Slushy = 0;
            double Popcorn = 0;
            double ColdDrink = 0;
            double Chocolate = 0;
            double Biltong = 0;
            double SugarSweets = 0;
            double total = 0;
            int Ticket;

            Ticket = Convert.ToInt16(ddlTicketsList.SelectedValue);

            if (ddlExtras.SelectedIndex == 15)
            {
                Slushy = 15;
            }

            if (ddlExtras.SelectedIndex == 15)
            {
                Popcorn = 20;
            }

            if (ddlExtras.SelectedIndex == 15)
            {
                Chocolate = 15;
            }

            if (ddlExtras.SelectedIndex == 15)
            {
                ColdDrink = 200;
            }

            if (ddlExtras.SelectedIndex == 15)
            {
                SugarSweets = 200;
            }

            if (ddlExtras.SelectedIndex == 15)
            {
                Biltong = 200;
            }

            total = ((price * Ticket) + (Biltong + Slushy + ColdDrink + SugarSweets + Popcorn + Chocolate));

            txtTotal.Text = Convert.ToString(total);

            SqlDataSource1.Insert();
            Response.Redirect("BookingMovie.aspx");
    }
        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
        

        }
    }
}