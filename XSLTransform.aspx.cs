using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Xsl;

namespace WebApplication3
{
    public partial class XSLTransform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //var urlBuilder = new UriBuilder(HttpContext.Current.Request.Url.AbsoluteUri) { Path = HttpContext.Current.Request.ApplicationPath, Query = null, Fragment = null };

            //string host = urlBuilder.Uri.ToString();

            //string relative_path = "/Images/signature/client-42.png";
            //string absolute_path = host + relative_path;


            ////var buildDir = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
            ////var filePath = buildDir + @"\Images\signature\client-42.png";

            //var resultName = Environment.UserDomainName;



            //var urlBuilderss = new UriBuilder(Request.Url.AbsoluteUri);


            //string HostName = Dns.GetHostName();

            ////string itemPath = @"D:\Rakesh\DharamJi\Testing\XSLTranformation\Images\signature\client-42.png";
            ////string baseDirectory = @"C:\RootFolder\SubFolder\";
            ////var urlBuilder = new UriBuilder(Request.Url.AbsoluteUri) { Path = Request.ApplicationPath, Query = null, Fragment = null };

            ////string result = System.IO.Path.GetPathRoot(itemPath);
            ////Console.WriteLine(result);


            ////string relative_path = "/Images/signature/client-42.png";
            ////string absolute_path = Server.MapPath(relative_path);


            //string folderName = AppDomain.CurrentDomain.BaseDirectory;//D:\Rakesh\DharamJi\Testing\XSLTranformation\
            //var parentFolder = Directory.GetParent(folderName);
            //folderName = Directory.GetParent(folderName).FullName;


            //string path = System.AppDomain.CurrentDomain.BaseDirectory;
            //Console.WriteLine(path);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Xml1.Visible = true;
            ltlTutorial.Visible = false;
            // this is being read from the same folder as this page is in.(only for demo purpose)
            // In real applications this xml might be coming from some external source or database.
            string xmlString = File.ReadAllText(Server.MapPath("InvoiceData.xml"));
            // Define the contents of the XML control
            Xml1.DocumentContent = xmlString;
            XsltArgumentList arguments = new XsltArgumentList();
            arguments.AddExtensionObject("pda:MyUtils", new MathHelper());
            Xml1.TransformArgumentList = arguments;
            // Specify the XSL file to be used for transformation.
            Xml1.TransformSource = Server.MapPath("~/Invoice/DixieGroupPackingList.xslt");

            //Xml1.TransformSource = Server.MapPath("~/PackingList/BenutapackingList.xslt");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Xml1.Visible = false;
            ltlTutorial.Visible = true;

            //Getting file path
            string strXSLTFile = Server.MapPath("~/Invoice/DixieGroupPackingList.xslt");
            string strXMLFile = Server.MapPath("InvoiceData.xml");

            //Creating XSLCompiled object
            XslCompiledTransform objXSLTransform = new XslCompiledTransform();
            objXSLTransform.Load(strXSLTFile);

            //Creating StringBuilder object to hold html data and creates TextWriter object to hold data from XslCompiled.Transform method
            StringBuilder htmlOutput = new StringBuilder();
            TextWriter htmlWriter = new StringWriter(htmlOutput);

            //Creating XmlReader object to read XML content
            XmlReader reader = XmlReader.Create(strXMLFile);

            //Call Transform() method to create html string and write in TextWriter object.

            XsltArgumentList arguments = new XsltArgumentList();
            arguments.AddExtensionObject("pda:MyUtils", new MathHelper());

            objXSLTransform.Transform(reader, arguments, htmlWriter);
            ltlTutorial.Text = htmlOutput.ToString();
            // Closing xmlreader object
            reader.Close();


            HttpContext.Current.Response.Clear();
            HttpContext.Current.Response.Buffer = true;
            HttpContext.Current.Response.Charset = "UTF-8";
            //HttpContext.Current.Response.AddHeader("content-disposition", string.Format("attachment; filename={0}.doc", HttpUtility.UrlEncode("Invoice-" + DateTime.Now.ToShortDateString(), System.Text.Encoding.UTF8)));
            HttpContext.Current.Response.AddHeader("content-disposition", string.Format("attachment; filename={0}.xls", HttpUtility.UrlEncode("Invoice-" + DateTime.Now.ToShortDateString(), System.Text.Encoding.UTF8)));
            HttpContext.Current.Response.ContentEncoding = System.Text.Encoding.UTF8;
            HttpContext.Current.Response.ContentType = "application/ms-excel";

            //  HttpContext.Current.Response.ContentType = "application/vnd.ms-word";


            HttpContext.Current.Response.Write(htmlOutput.ToString());
            HttpContext.Current.Response.End();
            HttpContext.Current.Response.Close();
        }
    }
}