using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NeoCinemas
{
    public partial class UpdateMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            lblSuccessful.Visible = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count > 0)
            {
                txtID.Text = GridView1.Rows[0].Cells[0].Text;
                txtTitle.Text = GridView1.Rows[0].Cells[1].Text;
                txtDescription.Text = GridView1.Rows[0].Cells[2].Text;
                txtGenre.Text = GridView1.Rows[0].Cells[3].Text;
                txtPrice.Text = GridView1.Rows[0].Cells[4].Text;
                txtMovieImage.Text = GridView1.Rows[0].Cells[5].Text;
                txtLength.Text = GridView1.Rows[0].Cells[6].Text;
                txtYear.Text = GridView1.Rows[0].Cells[7].Text;
                txtCountry.Text = GridView1.Rows[0].Cells[8].Text;
                txtLanguage.Text = GridView1.Rows[0].Cells[9].Text;
                txtProductionCompany.Text = GridView1.Rows[0].Cells[10].Text;
                txtBudget.Text = GridView1.Rows[0].Cells[11].Text;
                txtCast.Text = GridView1.Rows[0].Cells[12].Text;
                txtAgeRestriction.Text = GridView1.Rows[0].Cells[13].Text;
                txtMusic.Text = GridView1.Rows[0].Cells[14].Text;
                txtDirector.Text = GridView1.Rows[0].Cells[15].Text;
                txtMovieCode.Text = GridView1.Rows[0].Cells[16].Text;
                txtLocation.Text = GridView1.Rows[0].Cells[17].Text;
                
        }
        }
    }
}