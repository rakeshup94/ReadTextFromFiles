<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="html" indent="yes" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Emailer</title>
        <style>
          td {
          padding: 5px;
          }

          p {
          margin-bottom: 5px;
          margin-top: 0px;
          }
        </style>
      </head>
      <body>
        <xsl:for-each select="/InvoiceList/InvoiceItem">
          <table width="900" border="0" align="center" cellpadding="0" cellspacing="0" style="">
            <tr>
              <td valign="top" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; float:left; font-style: normal;">
                <table width="900" border="0" cellspacing="0" cellpadding="0">
                  <tbody>
                    <tr>
                      <td colspan="2" align="center" valign="top" style="font-size: 18px; font-weight: bold">

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
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" >

                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" align="center" valign="top" style="font-size: 20px">
                        <p>
                          <strong>TO WHOM IT MAY CONCERN</strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" align="center" valign="top" style=""> </td>
                    </tr>
                    <tr>
                      <td width="447" valign="top" style="" colspan="2">
                        <p style="margin-bottom: 10px;font-size: 20px;line-height:30px">
                          This is to certify that we M/s Vikram Carpets, Katra Bajirao, Mirzapur-231001, U.P., India, declare that we are manufacturer exporter of Handknotted/ Handmade / Hand Tufted Woollen/ Leather/ Cotton Carpet and Floor covering are not registered with the central excise department at range Mirzapur, Allahabad division and are not availing the facility of cenvat under rule 57A/57Q and also not availing the benefits of central excise rule 1944.
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="">
                        INVOICE  NO. :  <tinvoiceno>
                          <xsl:value-of select="./TINVOICENO" />
                        </tinvoiceno>
                      </td>
                      <td valign="top" style="">
                        DATE :  <invoicedate>
                          <xsl:value-of select="./INVOICEDATE" />
                        </invoicedate>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="">
                        <p>
                          For   <companyname>
                            <xsl:value-of select="./COMPANYNAME" />
                          </companyname>
                        </p>

                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="">Authorized Signatory</td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
            <tr>
              <td height="5" valign="top"></td>
            </tr>
          </table>
        </xsl:for-each>
      </body>
    </html>












  </xsl:template>
</xsl:stylesheet>
