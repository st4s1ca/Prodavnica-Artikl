using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Prodavnica_Artikl
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(Konekcija.konstr))
            {
                try
                {
                    conn.Open();
                    string cmdstring = "Insert into Artikl (naziv,kolicina,cena) values (@Naziv,@Kolicina,@Cena)";
                    SqlCommand cmd = new SqlCommand(cmdstring, conn);
                    cmd.Parameters.AddWithValue("@Naziv", txtNazArt);
                    cmd.Parameters.AddWithValue("@Kolicina", tbKolArt);
                    cmd.Parameters.AddWithValue("@Cena", tbCenaArt);

                    int ubaceno = cmd.ExecuteNonQuery();
                    if(ubaceno == 1)
                    {
                        Label8.Text = "Dodali ste artikl u bazu";
                    }
                }
                catch(Exception ex){
                    Console.WriteLine(ex.Message);
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(Konekcija.konstr))
            {
                try
                {
                    conn.Open();
                    string cmdstring = "Insert into Prodavnica (naziv,adresa) values (@Naziv,@Adresa)";
                    SqlCommand cmd = new SqlCommand(cmdstring, conn);
                    cmd.Parameters.AddWithValue("@Naziv", tbNazivProd.Text);
                    cmd.Parameters.AddWithValue("@Adresa", tbAdresa.Text);

                    int ubaceno = cmd.ExecuteNonQuery();
                    if (ubaceno == 1)
                    {
                        Label8.Text = "Dodali ste prodavnicu u bazu";
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
        }
    }
}