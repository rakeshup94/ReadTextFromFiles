<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="html" indent="yes" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Decl for Leather</title>
        <style>
          td{
          padding: 5px;
          }
          p{
          margin-bottom: 5px; margin-top:0px;
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
                      <td colspan="2" align="center" valign="top" style="font-size: 16px; font-weight: bold">


                        <companyname>
                          <xsl:value-of select="./COMPANYNAME" />
                        </companyname>
                        <br />
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

                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="">
                        <p> </p>
                      </td>
                    </tr>
                    <tr>
                      <td width="447" valign="top" style="">
                        <p style="margin-bottom: 10px">
                          <strong>To, </strong>
                        </p>
                        <p>The Asstt. Commissioner of custom</p>
                        <p>(Draw Back)</p>
                        <p>J N Port,</p>
                        <p>Nhava Sheva ,</p>
                      </td>
                      <td width="453" valign="top" style="">
                        Dt.
                        <CreatedOn>
                          <xsl:value-of select="./CreatedOn" />
                        </CreatedOn>

                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style=""> </td>
                      <td valign="top" style=""> </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="font-size: 18px">
                        <u>
                          <strong>SUB: Declaration</strong>
                        </u>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style=""> </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="font-size: 13px">
                        <p>Dear Sir ,</p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="font-size: 13px">
                        <p>
                          We  hereby   declare  that  the   Leather (Durries)  covered under our  Invoice
                          no.  <tinvoiceno>
                            <xsl:value-of select="./TINVOICENO" />
                          </tinvoiceno>   Dt .  <invoicedate>
                            <xsl:value-of select="./INVOICEDATE" />
                          </invoicedate> (   <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" /> Cartons) are not manufactured from
                          Duty free finished leather  imported under Notification No. 21/2002-CUS
                          dt. 01/03/2001, we further  declare that the leather of animals covered under
                          Appendix I &amp; II list of  WILDLIFE PROTECTION ACT 1972 has not been
                          used.
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="font-size: 18px"> </td>
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
