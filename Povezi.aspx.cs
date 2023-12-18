using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prodavnica_Artikl
{
    public partial class About : Page
    {
        private void ucitaj()
        {
            DropDownList1.Items.Clear();
            DropDownList2.Items.Clear();
            SqlCommand cmd = Connection.GetCommand("dtProdavnice");
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);

            DropDownList1.DataTextField = "Naziv";
            DropDownList1.DataValueField = "ID";
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();

            cmd.Connection.Close();

            SqlCommand cmd2 = Connection.GetCommand("dtArtikli");
            DataTable dt2 = new DataTable();
            SqlDataAdapter adapter2 = new SqlDataAdapter(cmd2);
            adapter2.Fill(dt2);

            DropDownList2.DataTextField = "Naziv";
            DropDownList2.DataValueField = "ID";
            DropDownList2.DataSource = dt2;
            DropDownList2.DataBind();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ucitaj();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = Connection.GetCommand("povezi");
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id_prodavnica", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@id_artikla", DropDownList2.SelectedValue);
            
            cmd.ExecuteNonQuery();
            Label1.Text = "Promenjeno!";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = "menjanje u toku...";
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = "menjanje u toku...";
        }
    }
}