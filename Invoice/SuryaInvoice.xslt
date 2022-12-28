<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myUtils="pda:MyUtils">
  <xsl:output method="xml" indent="yes"/>
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="concat(./Quality,./CustomerOrderNo)" />
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
          }

          p {
          margin-bottom: 5px;
          margin-top: 0px;
          }

          .noBorder {
          border: none !important;
          }


          .notopBorder {
          border: none !important;
          }


          .notop {
          border-top: none !important;
          }
          .nobottom {
          border-bottom: none !important;
          }


        </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table width="500px" border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="9" height="15px" style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">INVOICE                      </h4>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="4" rowspan="2">
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
                  </td>
                  <td valign="top" colspan="5">
                    <p>
                      <strong>Invoice No  &amp; Date</strong>
                    </p>
                    <p>
                      <tinvoiceno>
                        <xsl:value-of select="./TINVOICENO" />
                      </tinvoiceno>
                      DATED -
                      <invoicedate>
                        <xsl:value-of select="./INVOICEDATE" />
                      </invoicedate>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="5">
                    <p>
                      <strong>Buyer's Order No </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2" rowspan="2" class="noBorder">
                    <p>
                      <email>
                        <xsl:value-of select="./EMAIL" />
                      </email>
                    </p>
                    <p>
                      <comptel>
                        <xsl:value-of select="./COMPTEL" />
                      </comptel>
                      ,
                      <compfax>
                        <xsl:value-of select="./COMPFAX" />
                      </compfax>
                    </p>
                  </td>
                  <td valign="top">
                    <p>
                      <strong>IEC #: </strong>
                    </p>
                  </td>
                  <td valign="top">
                    <p>
                      <iecode>
                        <xsl:value-of select="./IECode" />
                      </iecode>
                    </p>
                  </td>
                  <td valign="top" colspan="2">
                    <totorder>
                      <xsl:value-of select="./totorder" />
                    </totorder>
                  </td>
                  <td valign="top" colspan="3"></td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      <strong>GSTIN #:  </strong>
                    </p>
                  </td>
                  <td valign="top">
                    <p>
                      <gstno>
                        <xsl:value-of select="./GSTNO" />
                      </gstno>
                    </p>
                  </td>
                  <td valign="top" colspan="5">
                    Other Reference
                  </td>
                </tr>
                <tr>
                  <td valign="top" rowspan="3">
                    <p>
                      <strong>
                        Buyer :
                      </strong>
                    </p>
                    <p>
                      <tbuyeroconsignee>
                        <xsl:value-of select="./TBUYEROCONSIGNEE" />
                      </tbuyeroconsignee>
                    </p>
                  </td>
                  <td valign="top" colspan="3" rowspan="3">
                    <p>
                      <strong>
                        Consignee/Ship to :
                      </strong>
                    </p>
                    <p>
                      <tconsignee>
                        <xsl:value-of select="./TCONSIGNEE" />
                      </tconsignee>
                    </p>
                  </td>
                  <td valign="top" colspan="5">
                    <p>
                      <strong>
                        Buyer (If Other than Consignee)
                      </strong>
                    </p>
                    <p>
                    </p>
                    <p>
                    </p>
                    <p>
                    </p>

                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="3">
                    <p>
                      <strong>Country of Orgin of Goods</strong>
                    </p>
                    <p>INDIA </p>
                  </td>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>Country of final Destination</strong>
                    </p>
                    <p>
                      <customercountryname>
                        <xsl:value-of select="./FINALDESTINATION" />
                      </customercountryname>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="5" rowspan="4">
                    <p>
                      <strong>
                        Terms of Delivery and Payment
                      </strong>
                    </p>
                    <p>F.O.B.</p>
                    <p>
                      <paymentterms>
                        <xsl:value-of select="./PAYMENTTERMS" />
                      </paymentterms>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      <strong>Pre-carriage by</strong>
                    </p>
                  </td>
                  <td colspan="3" valign="top">
                    <p>
                      <strong>Place of Receipt by Pre-carrier</strong>
                    </p>
                    <receiptat>
                      <xsl:value-of select="./RECEIPTAT" />
                    </receiptat>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      <strong>Vessel/Flight No.</strong>
                    </p>
                    <vesselflightno>
                      <xsl:value-of select="./VESSELFLIGHTNO" />
                    </vesselflightno>
                  </td>
                  <td colspan="3" valign="top">
                    <p>
                      <strong>Port of Loading</strong>
                    </p>
                    <portofloading>
                      <xsl:value-of select="./PORTOFLOADING" />
                    </portofloading>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      <strong>Port of Discharge</strong>
                    </p>
                    <portofdischarge>
                      <xsl:value-of select="./PORTOFDISCHARGE" />
                    </portofdischarge>
                  </td>
                  <td colspan="3" valign="top">
                    <p>
                      <strong>Final Destination</strong>
                    </p>
                    <finaldestination>
                      <xsl:value-of select="./FINALDESTINATION" />
                    </finaldestination>
                  </td>
                </tr>
                <tr>
                  <td valign="middle">
                    <p>
                      <strong>
                        Marks  &amp; Nos./
                        <br />
                        Container No.
                      </strong>
                    </p>
                  </td>
                  <td colspan="2" valign="middle">
                    <strong>No.&amp;Kinds of Pkgs. </strong>
                  </td>
                  <td colspan="3" valign="top">
                    <strong>Description of goods</strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Quantity
                      <br />
                      (Area)
                    </strong>
                  </td>
                  <td valign="middle" align="center">
                    <strong>Rate</strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>Amount</strong>
                  </td>
                </tr>
                <tr>
                  <td valign="middle">
                    <p>
                      <rollmark>
                        <xsl:value-of select="./RollMark" />
                      </rollmark>
                    </p>
                  </td>
                  <td colspan="2" valign="top">
                    <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />
                    (
                    <xsl:value-of select="myUtils:NumberToWords(sum(././Rolls/RollItem/TotalRoll))" />
                    Rolls Only.)
                    <p>properly packed</p>
                  </td>
                  <td colspan="3" valign="top">
                    <descriptionofgoods>
                      <xsl:value-of select="./DescriptionOfGoods" />
                    </descriptionofgoods>
                  </td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td align="center" valign="top"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="9">
                    <strong>
                      Roll Nos.
                      <xsl:for-each select="./Rolls/RollItem">
                        <xsl:if test="position() = 1">
                          <xsl:value-of select="Rollfrom" />
                          to
                        </xsl:if>
                        <xsl:if test="position() = last()">
                          <xsl:value-of select="RollTo" />
                        </xsl:if>
                      </xsl:for-each>
                    </strong>
                  </td>
                </tr>
                <tr>
                  <td align="center" valign="middle">
                    <strong>QUALITY</strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      HSN
                      <br />
                      CODE NO.
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>STYLE</strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>SIZE</strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      AREA
                      <br />
                      SQ.MTR.
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      PIECES
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Sq.Feets
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      US$ Per
                      <br />
                      M2 FOB
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      AMOUNT
                      <br />
                      US$ FOB
                    </strong>
                  </td>
                </tr>

                <rolls>
                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', concat(./Quality,./CustomerOrderNo))[1])]">
                    <rollitem>

                      <xsl:variable name="vGroup" select="key('groupByContainer', concat(./Quality,./CustomerOrderNo))" />

                      <tr>
                        <td align="center" valign="middle"   class="notop,nobottom">

                          <p>
                            <strong>
                              <quality>
                                <xsl:value-of select="Quality" />
                              </quality>
                            </strong>
                          </p>



                        </td>
                        <td align="center" valign="middle"> </td>
                        <td align="center" valign="middle"> </td>
                        <td align="center" valign="middle"> </td>
                        <td align="center" valign="middle"> </td>
                        <td align="center" valign="middle"> </td>
                        <td align="center" valign="middle"> </td>
                        <td align="center" valign="middle"> </td>
                        <td align="center" valign="middle"> </td>
                      </tr>

                      <xsl:for-each select="$vGroup">
                        <tr >
                          <td align="center" width="100" valign="middle"  class="notop,nobottom">
                            <p>

                              PO#<customerorderno>
                                <xsl:value-of select="CustomerOrderNo" />
                              </customerorderno>

                            </p>
                          </td>
                          <td align="center" width="80" valign="middle">
                            <hsncode>
                              <xsl:value-of select="HSNCode" />
                            </hsncode>
                          </td>
                          <td align="center" width="70" valign="middle">
                            <styleno>
                              <xsl:value-of select="DESIGN" />
                            </styleno>
                          </td>
                          <td align="center" width="90" valign="middle">
                            <sizeft>
                              <xsl:value-of select="SizeFT" />
                            </sizeft>
                          </td>
                          <td align="center" width="70" valign="middle">
                            <areamtr>
                              <xsl:value-of select="AreaMtr" />
                            </areamtr>
                          </td>
                          <td align="center" width="70" valign="middle">
                            <pcs>
                              <xsl:value-of select="PCS" />
                            </pcs>
                          </td>
                          <td align="center" width="70" valign="middle">
                            <areaft>
                              <xsl:value-of select="AreaFT" />
                            </areaft>
                          </td>
                          <td align="center" width="70" valign="middle">
                            <price>
                              <xsl:value-of select="PRICE" />
                            </price>
                          </td>
                          <td align="center" width="80" valign="middle">
                            <itemprice>
                              <xsl:value-of select="TotalAmount" />
                            </itemprice>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </rollitem>
                  </xsl:for-each>
                </rolls>
                <tr>
                  <td colspan="4" align="center" valign="middle">
                    <strong>TOTAL </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/AreaMtr))" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/PCS))" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/AreaFT))" />
                    </strong>
                  </td>
                  <td align="center" valign="middle"></td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:variable name="totalAmount" select="number(sum(././Rolls/RollItem/TotalAmount))" />
                      <xsl:value-of select="$totalAmount" />
                    </strong>
                  </td>
                </tr>
                <tr>
                  <td align="left" colspan="7" valign="middle">
                    <strong>
                      Amount Payable (in word)
                      <xsl:value-of select="myUtils:NumberToWords(sum(././Rolls/RollItem/TotalAmount))" />
                      Only.
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Total
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:variable name="totalAmount" select="number(sum(././Rolls/RollItem/TotalAmount))" />
                      <xsl:value-of select="$totalAmount" />
                    </strong>
                  </td>
                </tr>
                <xsl:variable name="exchangeRate" select="77.25" />
                <xsl:variable name="totalAmount" select="number(sum(././Rolls/RollItem/TotalAmount))" />
                <xsl:variable name="totalPrice" select="number($exchangeRate*$totalAmount)" />
                <xsl:variable name="IGST" select="number(./IGST)" />
                <xsl:variable name="IGSTAmount" select="number($totalPrice*$IGST div 100)" />
                <xsl:variable name="CGST" select="number(./CGST)" />
                <xsl:variable name="CGSTAmount" select="number($totalPrice*$CGST div 100)" />
                <xsl:variable name="SGST" select="number(./SGST)" />
                <xsl:variable name="SGSTAmount" select="number($totalPrice*$SGST div 100)" />
                <xsl:variable name="GrossAmount" select="number($totalPrice+$IGSTAmount +$CGSTAmount+$SGSTAmount)" />
                <tr>
                  <td colspan="3" rowspan="3" valign="top">
                    <p>
                      <strong>WEIGHT DETAILS :</strong>
                    </p>
                    <p>
                      Gross Weight :
                      <grosswt>
                        <xsl:value-of select="./GROSSWT" />
                      </grosswt>
                      KGS
                    </p>
                    <p>
                      Nett    Weight  :
                      <netwt>
                        <xsl:value-of select="./NETWT" />
                      </netwt>
                      KGS
                    </p>
                    <p>
                      TOTAL CBM:
                      <cbm>
                        <xsl:value-of select="./CBM" />
                      </cbm>
                      CBM (Approx)
                    </p>
                  </td>
                  <td valign="top" colspan="6" class="noBorder">
                    <p>
                      <strong>Composition:</strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td colspan="6" class="noBorder">
                    <p>
                      <composition>
                        <xsl:value-of select="./Composition" />
                      </composition>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td colspan="6" class="noBorder"></td>
                </tr>
                <tr>
                  <td colspan="9" class="noBorder"></td>
                </tr>
                <tr>
                  <td colspan="9" class="noBorder"></td>
                </tr>
                <tr>
                  <td colspan="9" class="noBorder">
                    <p>
                      Declaration :
                    </p>
                  </td>
                </tr>
                <tr>
                  <td colspan="4" valign="middle" class="noBorder">
                    <p>1. We intend to claim rewards under rodtep Scheme</p>
                    <p>2. We abide by provisional of foreign exchange management Act regarding realization.</p>
                    <p>3. We declare that this invoice shows the actual price of the goods described and all particulars are true and correct</p>
                  </td>
                  <td colspan="2" class="noBorder">
                    
                  </td>
                  <td colspan="3" >

                  </td>
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
