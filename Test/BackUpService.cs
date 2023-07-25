using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.IO;
using static iTextSharp.text.pdf.AcroFields;

namespace WebApplication3.Test
{
    public class BackupService
    {
        private readonly string _connectionString;
        private readonly string _backupFolderFullPath;
        private readonly string[] _systemDatabaseNames = { "master", "tempdb", "model", "msdb" };

        public BackupService(string connectionString, string backupFolderFullPath)
        {
            _connectionString = connectionString;
            _backupFolderFullPath = backupFolderFullPath;
        }

        public void BackupAllUserDatabases()
        {
            foreach (string databaseName in GetAllUserDatabases())
            {
                BackupDatabase(databaseName);
            }
        }

        public void BackupDatabase(string databaseName)
        {
            string filePath = BuildBackupPathWithFilename(databaseName);

            using (var connection = new SqlConnection(_connectionString))
            {
                var query = @"BACKUP DATABASE @DatabaseName TO DISK=@BackupPath
INSERT INTO [dbo].[tblDatabaseBackup]([DatabaseName],[BackupPath],[CreatedOn],[CreatedBy])
VALUES(@DatabaseName,@BackupPath,@CreatedOn,@CreatedBy)";

                using (var command = new SqlCommand())
                {
                    SqlParameter[] param = new SqlParameter[4];
                    param[0] = new SqlParameter("@DatabaseName", SqlDbType.NVarChar);
                    param[0].Direction = ParameterDirection.Input;
                    param[0].Value = databaseName;
                    command.Parameters.Add(param[0]);
                    param[1] = new SqlParameter("@BackupPath", SqlDbType.NVarChar);
                    param[1].Direction = ParameterDirection.Input;
                    param[1].Value = filePath;
                    command.Parameters.Add(param[1]);
                    param[2] = new SqlParameter("@CreatedOn", SqlDbType.DateTime);
                    param[2].Direction = ParameterDirection.Input;
                    param[2].Value = DateTime.Now;
                    command.Parameters.Add(param[2]);
                    param[3] = new SqlParameter("@CreatedBy", SqlDbType.Int);
                    param[3].Direction = ParameterDirection.Input;
                    param[3].Value = 1;
                    command.Parameters.Add(param[3]);

                    command.Connection = connection;
                    command.CommandText = query;
                    command.CommandType = CommandType.Text;
                    command.CommandTimeout = 2000;
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        public IEnumerable<string> GetAllUserDatabases()
        {
            var databases = new List<string>();

            DataTable databasesTable;

            using (var connection = new SqlConnection(_connectionString))
            {
                connection.Open();

                databasesTable = connection.GetSchema("Databases");

                connection.Close();
            }

            foreach (DataRow row in databasesTable.Rows)
            {
                string databaseName = row["database_name"].ToString();

                if (_systemDatabaseNames.Contains(databaseName))
                    continue;

                databases.Add(databaseName);
            }

            return databases;
        }

        private string BuildBackupPathWithFilename(string databaseName)
        {
            string filename = string.Format("{0}-{1}.bak", databaseName, DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss"));

            return Path.Combine(_backupFolderFullPath, filename);
        }


















    }











}