using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace Prodavnica_Artikl
{
    public partial class Contact : Page
    {
        private void ucitaj()
        {
            DropDownList1.Items.Clear();
            SqlCommand cmd = Connection.GetCommand("dtProdavnice");
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(dt);

            DropDownList1.DataTextField = "Naziv";
            DropDownList1.DataValueField = "ID";
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ucitaj();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = string.Empty;
            SqlCommand cmd = Connection.GetCommand("prikaz");
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", DropDownList1.SelectedValue);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Label2.Text += reader["Naziv"].ToString();
                Label2.Text += " ";
            }
        }
    }
}