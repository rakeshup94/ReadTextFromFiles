<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="html" indent="yes" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Emailer</title>
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
                      <td colspan="2" valign="top" style="">
                        <p> </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" align="center" valign="top" style="font-size: 20px">
                        <p>
                          <strong>DECLARATION</strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" align="center" valign="top" style=""> </td>
                    </tr>
                    <tr>
                      <td width="447" valign="top" style="">
                        <p style="margin-bottom: 10px">1. DESCRIPTION OF GOODS</p>
                      </td>
                      <td width="453" valign="top" style="">
                        <p>
                          Indian Hand Woven Leather Durries &amp; Hand Woven <br />
                          Seagrass Rug
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="">2. INVOICE  NO. &amp; DATE                                   </td>
                      <td valign="top" style="">
                        : 

                      
                          <tinvoiceno>
                            <xsl:value-of select="./TINVOICENO" />
                          </tinvoiceno>
                          ,
                          <invoicedate>
                            <xsl:value-of select="./INVOICEDATE" />
                          </invoicedate>
                    

                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="">
                        3. NAME  AND ADDRESS OF EXPORTERS <br/>
                        ALONGWITH  THE NAME OF THE
                        <br/>
                        JURISDICTIONAL CENTRAL EXCISE
                        <br/>
                        COMMISSIONERATE / DIVISION/RANGE

                      </td>
                      <td valign="top" >


                     
                          <companyname>
                            <xsl:value-of select="./COMPANYNAME" />
                          </companyname>,
                        <br/>
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
                      <td valign="top" style="">
                        <p>
                          4. NAME OF THE SUPPORTING MANUFACTURER'S:                     <br />
                          ALONGWITH THE NAME OF  JURISDICTIONAL<br />
                          CENTRAL EXCISE  COMMISSIONERATE/DIVISION<br />
                          RANGE : (FOR MERCHANT  EXPORTERS)
                        </p>
                      </td>
                      <td valign="top" style="">N / A</td>
                    </tr>
                    <tr>
                      <td valign="top" style="">5.  ADDRESS OF THE MANUFACTURING UNIT</td>
                      <td valign="top" style="">
                        <p>
                          VIKRAM CARPETS,         <br />
                          JANGI ROAD<br />
                          MIRZAPUR-231001 (U.P.)
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="font-size: 13px"></td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="font-size: 13px">
                        <p>WE , M/S VIKRAM CARPETS THE EXPORTERS OF THE ABOVE MENTIONED GOODS  HEREBY DECLARE  THAT :</p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="">
                        <p>
                          <strong>(A)</strong>  (i)    WE  ARE MANUFACTURER  EXPORTERS  AND ARE NOT REGISTERED WITH
                          CENTRAL  EXCISE AND HAVE NOT PAID A CENTRAL EXCISE  DUTY ON THESE  GOODS.
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="">
                        <strong>(B)</strong> (i)     WE FURTHER DECLARE  THAT WE ARE MANUFACTURER HAVE NOT
                        AVAILED OF  CENVAT FACILITY IN RESPECT OF THESE EXPORT GOODS.
                      </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="font-size: 18px"> </td>
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
