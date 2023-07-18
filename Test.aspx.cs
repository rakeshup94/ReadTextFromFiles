using Org.BouncyCastle.Asn1.X509.Qualified;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Xsl;

namespace WebApplication3
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSave_Click(object sender, EventArgs e)
        {

            if (flpContent.HasFiles)
            {
                HttpPostedFile postFile = flpContent.PostedFiles[0] as HttpPostedFile;

                var document = new XmlDocument();
                document.Load(postFile.InputStream);


                string contents;
                using (var sr = new StreamReader(postFile.InputStream))
                {
                    contents = sr.ReadToEnd();
                }

                using (StreamReader reader = new StreamReader(flpContent.PostedFile.InputStream, Encoding.Unicode))
                {
                    contents = reader.ReadToEnd();
                }

     











                    //XmlTextReader xmlReadTransform = (XmlTextReader)sqlCommandXSL.ExecuteXmlReader();
                    //XPathDocument doc = new XPathDocument(xmlReadTransform, XmlSpace.Preserve);

                    //XPathNavigator xpn = doc.CreateNavigator();
                    //XslTransform xslTransform = new XslTransform();
                    //xslTransform.Load(xpn, null, null); < --throws exception here.
















                    if (postFile.ContentLength > 0) //if file not empty
                {
                    //create an XML object and load it in
                    XmlDocument xmlProjPlan = new XmlDocument();

                    Stream fileStream = postFile.InputStream;
                    byte[] byXML = new byte[postFile.ContentLength];
                    fileStream.Read(byXML, 0, postFile.ContentLength);
                    xmlProjPlan.Load(fileStream);
                }








                foreach (HttpPostedFile postedFile in flpContent.PostedFiles)
                {


                    Stream fileStream = postedFile.InputStream;
                    byte[] byXML = new byte[postedFile.ContentLength];
                    fileStream.Read(byXML, 0, postedFile.ContentLength);



                    //Creating StringBuilder object to hold html data and creates TextWriter object to hold data from XslCompiled.Transform method
                    StringBuilder htmlOutput = new StringBuilder();
                    TextWriter htmlWriter = new StringWriter(htmlOutput);

                    XmlReader reader = XmlReader.Create(postedFile.InputStream);
                    while (reader.Read())
                    {

                    }
                    reader.Close();





                }









                string contentType = flpContent.PostedFile.ContentType;


                using (Stream fs = flpContent.PostedFile.InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        byte[] bytes = br.ReadBytes((Int32)fs.Length);

                        //This line of code is reading the bytes .    
                        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                        using (SqlConnection con = new SqlConnection(constr))
                        {
                            string query = "insert into tblFiles values (@Name, @ContentType, @Data)";
                            using (SqlCommand cmd = new SqlCommand(query))
                            {
                                cmd.Connection = con;
                                //cmd.Parameters.AddWithValue("@Name", filename);
                                cmd.Parameters.AddWithValue("@ContentType", contentType);
                                cmd.Parameters.AddWithValue("@Data", bytes);
                                con.Open();
                                cmd.ExecuteNonQuery();
                                con.Close();
                            }
                        }
                    }
                }



            }








        }






    }
}