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
                      <td colspan="5" valign="top" style="">
                      </td>
                      <td colspan="5" align="right" valign="top" style="">
                        <br />
                      </td>

                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style="">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <tbody>
                            <tr>
                              <td width="57%" rowspan="5" valign="top">
                                <p style="margin-bottom: 5px">
                                  <span style="font-size: 22px; text-decoration:underline">
                                    <strong>

                                      <COMPANYNAME>
                                        <xsl:value-of select="./COMPANYNAME" />
                                      </COMPANYNAME>

                                    </strong>
                                  </span>
                                </p><br />

                                Manufacturer &amp; Exporter of<br />
                                Hand Woven Woolen Kelim/Durries/Soumak, Hand Knotted Woollen Carpets, Hand Tufted, Hand Knotted Jute Carpet, Hand Woven Jute Durries / Soumak etc.
                              </td>
                              <td width="16%" align="right" valign="top">
                                <strong>OFFICE</strong> :
                              </td>
                              <td width="27%" valign="top">
                                NATWA, JANGI ROAD<br />
                                MIRZAPUR–231001, UP (INDIA)<br />
                              </td>
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>FACT</strong> :
                              </td>
                              <td>
                                NATWA, JANGI ROAD<br />
                                MIRZAPUR–231001, UP (INDIA)
                              </td>
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>PHONE</strong> :
                              </td>
                              <td>
                                <p>FACT : 05442-220881</p>
                              </td>
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>E-mail </strong>:
                              </td>
                              <td>vikramrkj@gmail.com</td>
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>TIN	 </strong>:
                              </td>
                              <td>
                                <p>09914807666C</p>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </td>

                    </tr>

                    <tr>
                      <td colspan="10" valign="top" style="">
                        <p>Circular No. 37/2007-Customs</p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style="">
                        <p align="center">
                          <strong>Annexure-A</strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style="">
                        <p align="center">
                          <u>EXPORT VALUE DECLARATION</u>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" align="center" valign="top" style="">(See Rule 7 of  Customs Valuation (Determination of Value of  Export Goods) Rules, 2007)</td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style="">
                        <ol style="margin-left: 0px;padding-left: 18px">
                          <li style="margin-bottom: 5px">Shipping  Bill No. &amp; Date:-</li>
                          <li style="margin-bottom: 5px">
                            Invoice No. &amp; Date          :-  <tinvoiceno>
                              <xsl:value-of select="./TINVOICENO" />
                            </tinvoiceno>    Date.  <invoicedate>
                              <xsl:value-of select="./INVOICEDATE" />
                            </invoicedate>
                          </li>
                          <li style="margin-bottom: 5px">
                            Nature of Transaction      :-

                            
                            <xsl:value-of select="./VESSELFLIGHTNO" />
                           </li>

                        </ol>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style=""> </td>
                    </tr>
                    <tr>
                      <td valign="top" style=""> </td>
                      <td valign="top" style=""> </td>
                      <td align="right" valign="top" style="padding-top:15px">Sale</td>
                      <td align="center" valign="middle" style="" width="19">
                        <div style="width:25px; height:25px; border:solid 1px #333; text-align: center; padding-top:5px">X</div>
                      </td>
                      <td valign="top" style="padding-top:15px"> </td>
                      <td colspan="2" align="right" valign="middle" style="">Sale on Consignment Basis  </td>
                      <td align="center" valign="middle" style="" width="33">
                        <div style="width:25px; height:25px; border:solid 1px #333; text-align: center; padding-top:5px"></div>
                      </td>
                      <td align="right" valign="top" style="padding-top:15px">Gift</td>
                      <td align="center" valign="middle" style="" width="38">
                        <div style="width:25px; height:25px; border:solid 1px #333; text-align: center; padding-top:5px"></div>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td valign="top" style=""> </td>
                      <td valign="top" style=""> </td>
                      <td align="right" valign="top" style="padding-top:15px">Sample</td>
                      <td align="center" valign="middle" style="">
                        <div style="width:25px; height:25px; border:solid 1px #333; text-align: center; padding-top:5px"></div>
                      </td>
                      <td valign="top" style="padding-top:15px"> </td>
                      <td colspan="2" align="right" valign="middle" style="">Other</td>
                      <td align="center" valign="middle" style="">
                        <div style="width:25px; height:25px; border:solid 1px #333; text-align: center; padding-top:5px"></div>
                      </td>
                      <td valign="top" style="padding-top:15px"> </td>
                      <td align="center" valign="middle" style="">
                        <div style="width:25px; height:25px; border:solid 1px #333; text-align: center; padding-top:5px"></div>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td width="41" valign="top" style="">4</td>
                      <td width="273" valign="top" style="">
                        <p>Method of  Valuation</p>
                        (See Export Valuation Rules)
                      </td>
                      <td width="56" align="right" valign="top" style="padding-top:15px">Rule 3</td>
                      <td width="19" align="center" valign="middle" style="">
                        <div style="width:25px; height:25px; border:solid 1px #333; text-align: center; padding-top:5px">X</div>
                      </td>
                      <td width="72" align="right" valign="top" style="padding-top:15px">Rule 4</td>
                      <td width="19" align="center" valign="middle" style="">
                        <div style="width:25px; height:25px; border:solid 1px #333; text-align: center; padding-top:5px">X</div>
                      </td>
                      <td width="130" align="right" valign="top" style="padding-top:15px">Rule 5</td>
                      <td width="33" align="center" valign="middle" style="">
                        <div style="width:25px; height:25px; border:solid 1px #333; text-align: center; padding-top:5px">X</div>
                      </td>
                      <td width="219" align="right" valign="top" style="padding-top:15px">Rule 6</td>
                      <td width="38" align="center" valign="middle" style="">
                        <div style="width:25px; height:25px; border:solid 1px #333; text-align: center; padding-top:5px">X</div>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td valign="top" style="">5</td>
                      <td colspan="5" valign="top" style="">Whether Seller and  Buyer are related</td>
                      <td align="right" valign="top" style="padding-top:15px">Yes</td>
                      <td align="center" valign="middle" style="">
                        <div style="width:25px; height:25px; border:solid 1px #333; text-align: center; padding-top:5px"></div>
                      </td>
                      <td align="right" valign="top" style="padding-top:15px">No</td>
                      <td align="center" valign="middle" style="">
                        <div style="width:25px; height:25px; border:solid 1px #333; text-align: center; padding-top:5px"></div>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style=""> </td>
                    </tr>
                    <tr>
                      <td valign="top" style="">6</td>
                      <td colspan="5" valign="top" style="">If  Yes, whether relationship has influenced the price :N.A</td>
                      <td align="right" valign="top" style="padding-top:15px">Yes</td>
                      <td align="center" valign="middle" style="">
                        <div style="width:25px; height:25px; border:solid 1px #333; text-align: center; padding-top:5px"></div>
                      </td>
                      <td align="right" valign="top" style="padding-top:15px">No</td>
                      <td align="center" valign="middle" style="">
                        <div style="width:25px; height:25px; border:solid 1px #333; text-align: center; padding-top:5px"></div>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="">7</td>
                      <td colspan="9" valign="top" style="">
                        Terms  of payment  :   <paymentterms>
                          <xsl:value-of select="./PAYMENTTERMS" />
                        </paymentterms>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="">8</td>
                      <td colspan="9" valign="top" style="">Terms of Delivery   :    FOB</td>
                    </tr>
                    <tr>
                      <td valign="top" style="">9</td>
                      <td colspan="9" valign="top" style="">
                        <p>
                          Previous exports of identical or similar goods, if any
                          Shipping Bill No. and Date:
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="">10</td>
                      <td colspan="9" valign="top" style="">Any  other relevant information (Attach separate sheet if necessary)</td>
                    </tr>
                    <tr>
                      <td valign="top" style=""> </td>
                      <td colspan="9" valign="top" style=""> </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style="">
                        <p>
                          <u>DECLARATION</u>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style="">
                        <ol style="margin-left: 0px;padding-left: 18px">
                          <li style="margin-bottom: 5px">We  hereby declare that the information furnished above is true, complete and  correct in every </li>
                          <li style="margin-bottom: 5px">
                            We also undertake to bring to the notice of proper officer any particular which subsequently
                            come to our knowledge, which will have bearing on a valuation.
                          </li>
                        </ol>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style=""> </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="">
                        <p>Place: MIRZAPUR</p>
                        Date: - 02.08.2022
                      </td>
                      <td colspan="5" valign="top">
                        <p>
                          SIGNATURE OF THE EXPORTER   <br />
                          DESIGNATION: MANAGER<br />
                          NAME OF THE  SIGNATORY   :  S.K.SRIVASTAVA
                        </p>
                      </td>
                      <td colspan="3" align="center" valign="top" style="border:solid 1px #333">
                        


                        <xsl:if test="./signature!= ''">
                          <img width="264" height="106" alt="">
                            <xsl:attribute name="src">
                              <xsl:value-of select="./signature" />
                            </xsl:attribute>
                          </img>
                        </xsl:if>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="9" valign="top" style="font-size: 13px"></td>
                    </tr>
                    <tr>
                      <td colspan="9" valign="top" style=""></td>
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
