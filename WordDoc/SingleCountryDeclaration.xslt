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
              <td valign="top" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;
                            float: left; font-style: normal;">
                <table width="900" border="0" cellspacing="0" cellpadding="0">
                  <tbody>
                    <tr>
                      <td colspan="4" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="4" valign="top" style="">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <tbody>
                            <tr>
                              <td width="13%" rowspan="5" valign="top">
                                <img src="vikram-logo.png" width="109" height="68" alt="" />
                              </td>
                              <td width="48%" rowspan="5" valign="top">
                                <p style="margin-bottom: 5px">
                                  <span style="font-size: 22px; text-decoration: underline">
                                    <strong>
                                      <companyname>
                                        <xsl:value-of select="./COMPANYNAME" />
                                      </companyname>
                                    </strong>
                                  </span>
                                </p>
                                <br/>
                                  Manufacturer &amp; Exporter of<br/>
                                                            Hand Knotted Woollen Carpets, Soumak, Tufted
Carpets and Woollen Cotton, Jute Durries

                                                        </td>
                              <td width="14%" align="right" valign="top">
                                <strong>OFFICE</strong> :
                              </td>
                              <td width="25%" valign="top">
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
                              <td align="right" valign="top">
                                <strong>FACT</strong> :
                              </td>
                              <td>
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
                              <td align="right" valign="top">
                                <strong>PHONE</strong> :
                              </td>
                              <td>
                                <p>
                                  FACT :   <comptel>
                                    <xsl:value-of select="./COMPTEL" />
                                  </comptel>
                                </p>
                                OFF   :   <comptel>
                                  <xsl:value-of select="./COMPTEL" />
                                </comptel>
                              </td>
                            </tr>

                            <tr>
                              <td align="right" valign="top">
                                <strong>Fax </strong>:
                              </td>
                              <td>



                                <COMPFAX>
                                  <xsl:value-of select="./COMPFAX" />
                                </COMPFAX>

                              </td>
                            </tr>

                            <tr>
                              <td align="right" valign="top">
                                <strong>E-mail </strong>:
                              </td>
                              <td>
                                <email>
                                  <xsl:value-of select="./EMAIL" />
                                </email>
                              </td>
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>TIN	 </strong>:
                              </td>
                              <td>
                                <p>
                                  <tinno>
                                    <xsl:value-of select="./TinNo" />
                                  </tinno>
                                </p>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </td>

                    </tr>

                    <tr>
                      <td colspan="4" align="center" valign="top" style="">
                        <p>
                          <strong>
                            <u>SINGLE    COUNTRY DECLARATIONS</u>
                          </strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="4" valign="top" style="">
                        <p>
                          <strong>
                            I R.K.JAIN DECLARE THAT ARTICLES LISTED BELOW AND  COVERED BY THE INVOICE
                            OR ENTRY TO WHICH THIS DECLARATION RATES OR WHOLLY THE  GROWTH PRODUCT OR MANUFACTURE
                            OF A  SINGLE FOREIGN TERRITORY OF COUNTRY OR INSULAR POSSESSION OF THE U.S. OR WERE
                            ASSEMBLED IN THE SINGLE FOREIGN TERRITORY OR COUNTRY OR INSULAR POSSESSION OF  THE
                            U.S. FABRICATED COMPONENT WHICH ARE IN WHOLE THE PRODUCT OF THE U.S. AND /  OR THE
                            SINGLE FOREIGN TERRITORY OR COUNTRY OR INSULAR POSSESSION OF THE U.S. AS  INDENTIFIED
                            BELOW . I DECLARE THAT THE INFORMATION SET FORTH  IN THE DECLARATION IS CORRECT
                            AND TRUE TO THE BEST OF MY INFORMATION KNOWLEDGE  AND BELIEF.
                          </strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="4" valign="top" style="">
                        <p>
                          <strong>A  ---------------------------------- INDIA ----------------------  (COUNTRY)</strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="4" valign="top" style="">    </td>
                    </tr>
                    <tr>
                      <td width="243" valign="top" style="border: solid 1px #ccc;">
                        <strong>
                          MARKS OF IDENTIFICATION
                          NUMBERS
                        </strong>
                      </td>
                      <td width="237" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                            border-top: solid 1px #ccc;">
                        <strong>DESCRIPTION OF ARTICLE AND QUANTITY</strong>
                      </td>
                      <td width="221" align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                            border-top: solid 1px #ccc;">
                        <strong>COUNTRY OF ORIGIN</strong>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                            border-top: solid 1px #ccc;" width="199">
                        <strong>DATE OF SHIPMENT</strong>
                      </td>
                    </tr>

                    <tr>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                            border-left: solid 1px #ccc;">
                        <p>
                          <strong>
                            <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />  Bales
                          </strong>
                        </p>
                        <strong>
                          Bale  No. :   


                          <xsl:for-each select="./Rolls/RollItem">
                            <xsl:if test="position() = 1">
                              <xsl:value-of select="Rollfrom" />
                              -
                            </xsl:if>
                            <xsl:if test="position() = last()">
                              <xsl:value-of select="RollTo" />
                            </xsl:if>
                          </xsl:for-each>


                        </strong>
                      </td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <strong>

                            <descriptionofgoods>
                              <xsl:value-of select="./DescriptionOfGoods" />
                            </descriptionofgoods>


                          </strong>
                        </p>
                        <p>
                          Total Bales  :  <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />
                        </p>
                        <p>
                          <strong>
                            INV  NO:
                            <tinvoiceno>
                              <xsl:value-of select="./TINVOICENO" />
                            </tinvoiceno>
                          </strong>
                        </p>
                        <strong>
                          DT.   <invoicedate>
                            <xsl:value-of select="./INVOICEDATE" />
                          </invoicedate>
                        </strong>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        INDIA


                      </td>
                      <td align="center" valign="middle" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                      </td>
                    </tr>
                    <tr>
                      <td colspan="4" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="4" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="4" valign="top" style="">    </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="">
                        <p>
                          <strong>
                            DATE       :     <xsl:value-of select="./CreatedOn" />                                                   
                          </strong>
                        </p>
                      </td>
                      <td colspan="2" valign="top">
                        <p>
                          <strong>
                            COMPANY  :    <xsl:value-of select="./COMPANYNAME" />    
                          </strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="4" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="">
                        <p>
                          <strong>PLACE   :    MIRZAPUR</strong>
                          <br />
                          <strong>ADD:  KATRA BAZI RAO, </strong>
                          <br />
                          <strong>MIRZAPUR-231001,  UP, INDIA</strong>
                        </p>
                      </td>
                      <td colspan="2" valign="top">
                        <strong>NAME          :   RISHABH KUMAR JAIN</strong>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="4" valign="top" style="font-size: 13px"></td>
                    </tr>
                    <tr>
                      <td colspan="4" valign="top" style=""></td>
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
