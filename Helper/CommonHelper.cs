using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace Testing
{
    public class CommonHelper
    {
        public string FormatName(string firstName, string name)
        {
            return name + ", " + firstName;
        }



        public static string GetURI()
        {
            var urlBuilder = new UriBuilder(HttpContext.Current.Request.Url.AbsoluteUri) { Path = HttpContext.Current.Request.ApplicationPath, Query = null, Fragment = null };
            return urlBuilder.Uri.ToString();
        }
    }






  

}