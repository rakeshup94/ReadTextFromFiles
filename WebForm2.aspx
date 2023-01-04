<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication3.WebForm2" %>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myutils="pda:MyUtils">
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="./CustomerOrderNo" />
  <xsl:output method="xml" indent="yes" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Emailer</title>
        <style>
          table {
          border: 1px solid #ccc;
          }

          td {
          padding: 5px;
          width: 13px;
          }

          p {
          margin-bottom: 5px;
          margin-top: 0px;
          }

          .noBorder {
          border: none !important;
          }

          .left {
          text-align: left;
          }

          .right {
          text-align: right;
          }

          .center {
          text-align: center;
          }
        </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table width="700" border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="18" height="15px" style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">PACKING LIST</h4>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="11" rowspan="4">
                    <p>
                      <strong>Exporter :</strong>
                    </p>
                    <p>
                      <companyname>
                        <xsl:value-of select="./COMPANYNAME" />
                      </companyname>
                    </p>
                    <p>
                      <compaddr1>
                        <xsl:value-of select="./COMPADDR1" />
                      </compaddr1>
                      ,
                      <compaddr2>
                        <xsl:value-of select="./COMPADDR2" />
                      </compaddr2>
                      ,
                      <compaddr3>
                        <xsl:value-of select="./COMPADDR3" />
                      </compaddr3>
                    </p>
                    <p>
                      <email>
                        <xsl:value-of select="./EMAIL" />
                      </email>
                    </p>
                  </td>
                  <td valign="top" colspan="5">
                    <p>
                      <strong>Invoice No / Date: </strong>
                    </p>
                  </td>
                  <td valign="top" colspan="2"></td>
                </tr>

                <tr>
                  <td valign="top" colspan="7">
                    <p>
                      <tinvoiceno>
                        <xsl:value-of select="./TINVOICENO" />
                      </tinvoiceno>
                      /
                      <invoicedate>
                        <xsl:value-of select="./INVOICEDATE" />
                      </invoicedate>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="7">
                    <p>
                      <strong>Buyer's Order No </strong>:
                      <totorder>
                        <xsl:value-of select="./totorder" />
                      </totorder>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="7">
                    <p>
                      <strong>Other Reference(s)	</strong>
                    </p>
                  </td>
                </tr>


          







                <tr>
                  <td valign="top" colspan="18"></td>
                </tr>










                <tr>
                  <td valign="top" colspan="18" class="noBorder"></td>
                </tr>

                <tr>
                  <td valign="top" colspan="18" class="noBorder"></td>
                </tr>

                <tr>
                  <td valign="top" colspan="18" class="noBorder"></td>
                </tr>

                <tr>
                  <td valign="top" colspan="18" class="noBorder"></td>
                </tr>

                <tr>
                  <td valign="top" colspan="18" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="13" class="noBorder">



                  </td>
                  <td valign="top" colspan="5"></td>
                </tr>
              </table>
            </invoiceitem>
          </xsl:for-each>
        </invoicelist>
        <invoicelist>
        </invoicelist>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>



