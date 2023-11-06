using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Prodavnica_Artikl
{
    public class Artikl
    {
        public string Naziv
        {
            get;
            set;
        }
        public string Kolicina
        {
            get;
            set;
        }
        public string Cena
        {
            get;
            set;
        }
        public Artikl()
        {

        }
        public Artikl(string naziv, string kolicina, string cena)
        {
            Naziv = naziv;
            Kolicina = kolicina;
            Cena = cena;
        }
    }
}