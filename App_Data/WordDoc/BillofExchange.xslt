<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="html" indent="yes" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>BILL OF EXCHANGE</title>
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
          <table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td valign="top" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; float:left; font-style: normal;">
                <table width="700" border="0" cellspacing="0" cellpadding="0">
                  <tbody>
                    <tr>
                      <td valign="top">
                      </td>
                      <td align="left" valign="top">
                        <p>
                          <strong>NO. 04</strong>
                        </p>
                        <p style="font-size: 18px; margin-top: 16px">
                          Exchange  US$

                          <Ex1Rate>
                            <xsl:value-of select="./Ex1Rate" />
                          </Ex1Rate>


                        </p>
                      </td>
                      <td align="right" valign="top">
                        <p>
                          <strong>PH: (O) 05442-220881 </strong>
                        </p>


                        <p>
                          <strong>(O) 05442-356589</strong>
                        </p>
                        <p>
                          <strong>15/22-23   DATED - 16.06.2022</strong>
                        </p>
                        <p>
                          <strong>Natwa, Jangi Road, Mirzapur-231001(INDIA)</strong>
                        </p>
                        <p>
                          <strong>DT.24.05.2022</strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td width="161" rowspan="5" valign="top">
                        <span style="-webkit-transform: rotate(-90deg);
-moz-transform: rotate(-90deg); position: fixed;font-size: 16px;border: solid 1px #000;padding: 10px;">
                          <companyname>
                            <xsl:value-of select="./COMPANYNAME" />
                          </companyname>
                        </span>
                      </td>
                      <td width="252" valign="top"> </td>
                      <td width="487" valign="top"> </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top">
                        <strong>At</strong> DA 90 days from B/L date                                                   pays  this  <strong>First</strong> of <strong>Exchange [    Second </strong>  of   the  same  date  and  tenor  being  unpaid ] <strong>to     the      order of </strong>
                        CANARA BANK

                        <BankName>
                          <xsl:value-of select="./BankName" />
                        </BankName>

                        ,


                        <BankAddress>
                          <xsl:value-of select="./BankAddress" />
                        </BankAddress>


                        <strong>the  sum  of</strong> ( US$ Twenty Nine Thousand Five Hundred Seventeen Only)<strong> value    received and  place the same to Account  of   the  shipment  under  Invoice  No.04/22-23 Dt.28.04.2022 Shipped per CMA CGM IVANHOE 2119 under B/L No.BANQDEL2510026 4730-0402-205.024 Dtd. 20.05.2022 </strong>from Mumbai to New York, NY
                      </td>
                    </tr>
                    <tr>
                      <td valign="top"> </td>
                      <td valign="top"> </td>
                    </tr>
                    <tr>
                      <td valign="bottom">
                        To.
                        <TCONSIGNEE>
                          <xsl:value-of select="./TCONSIGNEE" />
                        </TCONSIGNEE>




                      </td>
                      <td align="right" valign="top" style="font-size: 16px; padding-top:50px">
                        <strong>
                          For-    <companyname>
                            <xsl:value-of select="./COMPANYNAME" />
                          </companyname>
                        </strong>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top">
                        A/c  City National Bank<br />
                        International Trade Services<br />
                        Two	 California Plaza<br />
                        350 South Grand Ave, 4th Floor, Mail Code 944-01 <br />
                        Los Angeles, CA 90071<br />
                        Tel: (213) 673-8631,    SWIFT : CINAUS6L
                      </td>
                      <td align="right" valign="top" style="padding-top: 50px">
                        <strong>  Auth.Sign.</strong>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
            </tr>
            <tr>
              <td valign="top" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; float:left; font-style: normal;padding:0px"> </td>
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
