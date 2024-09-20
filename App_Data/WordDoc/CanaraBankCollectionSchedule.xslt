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
          <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
            <tr>
              <td valign="top" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;
                            float: left; font-style: normal;">
                <table width="700" border="0" cellspacing="0" cellpadding="0">
                  <tbody>
                    <tr>
                      <td colspan="5" align="center" valign="top" style="">
                        <img src="canara-bank.jpg" width="292" height="58" alt="" />
                        
                        
                        
                      </td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style="">
                        <p>
                          <strong>BAJIRAO KATRA</strong>
                        </p>
                        <p>MIRZAPUR-231 001</p>
                        <p>UTTAR PRADESH</p>
                        <p>INDIA</p>
                        <p></p>
                      </td>
                      <td colspan="2" align="right" valign="top" style="">
                        <p>
                          <strong>SWIFT : CNRBINBBMIR</strong>
                        </p>
                        <p>
                          <strong>PH : 05442-221582</strong>
                        </p>
                        <p>
                          <strong>email : cb1457@canarabank.com</strong>
                        </p>
                        <p>
                          <strong>visit us at : www.canarabank.com</strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td width="200" valign="top" style=""></td>
                      <td width="149" valign="top" style=""></td>
                      <td width="183" valign="top" style=""></td>
                      <td width="155" valign="top" style=""></td>
                      <td width="213" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style="">MAIL TO :</td>
                      <td colspan="2" valign="top" style="">
                        DATE
                        <xsl:value-of select="./CreatedOn" />
                      </td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style="border: solid 1px #333;">
                        City National Bank<br />
                        International Trade Services<br />
                        Two	 California Plaza<br />
                        350 South Grand Ave, 4th Floor, Mail Code 944-01
                        <br />
                        Los Angeles, CA 90071, USA<br />
                        Tel: (213) 673-8631,    SWIFT : CINAUS6L
                      </td>
                      <td valign="top" style=""></td>
                      <td valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td valign="top" style=""></td>
                      <td valign="top" style=""></td>
                      <td valign="top" style=""></td>
                      <td valign="top" style=""></td>
                      <td valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="5" valign="top" style="">OUR REFERENCE NO : </td>
                    </tr>
                    <tr>
                      <td colspan="5" valign="top" style="border: solid 1px #333;">1457C2022</td>
                    </tr>
                    <tr>
                      <td valign="top" style=""></td>
                      <td valign="top" style=""></td>
                      <td valign="top" style=""></td>
                      <td valign="top" style=""></td>
                      <td valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="5" valign="top" style="">WE ENCLOSE THE FOLLOWING BILL :</td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                            border-top: solid 1px #ccc;">BILL AMOUNT</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                            border-top: solid 1px #ccc;">
                        OUR
                        CHARGES
                      </td>
                      <td valign="top" style="border-bottom: solid 1px #ccc; border-top: solid 1px #ccc;">
                        DRAWER &amp; ADDRESS
                      </td>
                      <td valign="top" style="border-bottom: solid 1px #ccc; border-top: solid 1px #ccc;">
                        TENOR
                      </td>
                      <td valign="top" style="border-bottom: solid 1px #ccc; border-top: solid 1px #ccc;">
                        DRAWEE &amp; ADDRESS
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        USD


                        <xsl:value-of  select="number(sum(././Rolls/RollItem/TotalAmount))" />

                      </td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                      </td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        M/S
                        <companyname>
                          <xsl:value-of select="./COMPANYNAME" />
                        </companyname>
                        <br />
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

                        TEL:
                        <comptel>
                          <xsl:value-of select="./COMPTEL" />
                        </comptel>

                      </td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>


                          DA <xsl:value-of select="./PAYMENTMODE" /><br />
                          FROM B/L
                          <br />
                          DATE
                        </p>
                      </td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <tbuyeroconsignee>
                            <xsl:value-of select="./TBUYEROCONSIGNEE" />
                          </tbuyeroconsignee>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style=""></td>
                      <td valign="top" style=""></td>
                      <td valign="top" style=""></td>
                      <td valign="top" style=""></td>
                      <td valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="5" valign="top">
                        <p>DOCUMENTS ATTACHED</p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="5" valign="top" style="">
                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                          <tbody>
                            <tr>
                              <td width="10%" style="border: solid 1px #ccc;"></td>
                              <td width="14%" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                                            border-top: solid 1px #ccc;">DRAFT</td>
                              <td width="11%" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                                            border-top: solid 1px #ccc;">INV</td>
                              <td width="12%" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                                            border-top: solid 1px #ccc;">B.L/CAN</td>
                              <td width="16%" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                                            border-top: solid 1px #ccc;">INS.POL</td>
                              <td width="11%" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                                            border-top: solid 1px #ccc;">
                                <p>CER.</p>
                                ORIGIN
                              </td>
                              <td width="8%" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                                            border-top: solid 1px #ccc;">
                                <p>PACK </p>
                                LIST
                              </td>
                              <td width="8%" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                                            border-top: solid 1px #ccc;">
                                <p>WEIGH</p>
                                LIST
                              </td>
                              <td width="6%" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                                            border-top: solid 1px #ccc;"></td>
                              <td width="4%" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                                            border-top: solid 1px #ccc;"></td>
                            </tr>
                            <tr>
                              <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                                            border-left: solid 1px #ccc;">ORIG.</td>
                              <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                                2
                              </td>
                              <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                                2
                              </td>
                              <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                                <p>3</p>
                              </td>
                              <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                                ---------
                              </td>
                              <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                                ---------
                              </td>
                              <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                                2
                              </td>
                              <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                                ---------
                              </td>
                              <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                              </td>
                              <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top"></td>
                      <td valign="top"></td>
                      <td valign="top"></td>
                      <td valign="top"></td>
                      <td valign="top"></td>
                    </tr>
                    <tr>
                      <td colspan="5" valign="top" style="">
                        <p style="margin-bottom: 5px">OTHER REMARKS :</p>
                        <br />
                        01.	Please deliver the documents against ACCEPTANCE on tenor “DA 90 DAYS FROM
                        B/L DATE”
                        <br />
                        02.	Please collect all your charges from drawee’s account
                        <br />
                        03.	Please advice us payment / non-payment through our SWIFT. CODE:CNRBINBBMIR
                        <br />
                        04 .Please credit the proceeds to our NOSTRO A/C NO :……2000  1930   07934

                        with  Wells Fargo Bank NA, New York, USA

                        <br />
                        05.Our said collection document is adhered to URC 522
                        <br />
                        <br />
                      </td>
                    </tr>
                    <tr>
                      <td colspan="5" valign="top" style="">
                        <p>Thanking You .</p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="5" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="5" valign="top" style="">
                        <p>Yours faithfully</p>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top">MANAGER</td>
                      <td valign="top"></td>
                      <td valign="top">OFFICER</td>
                      <td valign="top"></td>
                      <td valign="top"></td>
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
