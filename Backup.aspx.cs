using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication3.Test;

namespace WebApplication3
{
    public partial class Backup : System.Web.UI.Page
    {

        WebApplication3.Test.BackupService bckpSrv;  
            
            
            
            
            
  

        public Backup()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["PMCSoftContext"].ConnectionString;
            var backupFolder = ConfigurationManager.AppSettings["BackupFolder"];
            this.bckpSrv = new WebApplication3.Test.BackupService(connectionString, backupFolder);
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlDatabase.DataSource = this.bckpSrv.GetAllUserDatabases().Select((x, index) => new { Value = index++, Name = x });
                ddlDatabase.DataTextField = "Name";
                ddlDatabase.DataValueField = "Value";
                ddlDatabase.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if(ddlDatabase.SelectedValue!="")
            {
                bckpSrv.BackupDatabase(ddlDatabase.SelectedItem.Text);
            }

           
        }
    }
}