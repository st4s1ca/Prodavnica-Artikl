using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Prodavnica_Artikl
{
    public class Prodavnica
    {
        public string Naziv
        {
            get;set;
        }

        public string Adresa
        {
            get;set;
        }
        public Prodavnica()
        {
            
        }

        public Prodavnica(string naziv, string adresa)
        {
            Naziv = naziv;
            Adresa = adresa;
        }
    }
}