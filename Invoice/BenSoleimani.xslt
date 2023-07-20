<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myUtils="pda:MyUtils">
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
                  <td colspan="10" height="15px" style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">INVOICE                      </h4>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2" rowspan="4">
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
                  <td valign="top" colspan="4">
                    <p>
                      <strong>Invoice No / Date: </strong>
                    </p>
                  </td>
                  <td valign="top" colspan="4"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="8">
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
                  <td valign="top" colspan="8">
                    <p>
                      <strong>Buyer's Order No </strong>:
                      <totorder>
                        <xsl:value-of select="./totorder" />
                      </totorder>
                    </p>



                  </td>
                </tr>



                <tr>
                  <td valign="top" colspan="8">
                    <p>
                      <strong>Other Reference(s)	</strong>
                    </p>
                  </td>
                </tr>



                <tr>

                  <td valign="top" colspan="2">
                    <p>
                      <strong>
                        Consignee
                      </strong>
                    </p>
                    <p>
                      <xsl:value-of select="./TCONSIGNEE" />

                    </p>
                  </td>
                  <td valign="top" colspan="8">
                    <p>
                      <strong>
                        Buyer (If Other than Consignee)
                      </strong>
                    </p>
                    <p>
                      <xsl:value-of select="./TBUYEROCONSIGNEE" />


                    </p>
                  </td>
                </tr>

                <tr>
                  <td valign="top">
                    <p>
                      <strong>Pre-carriage by</strong>
                    </p>
                    <p>

                      <xsl:value-of select="./CARRIAGENAME" />
                    </p>
                  </td>
                  <td valign="top">
                    <p>
                      <strong>Place of Receipt by Pre-carrier</strong>
                    </p>
                    <receiptat>
                      <xsl:value-of select="./RECEIPTAT" />
                    </receiptat>
                  </td>




                  <td valign="top" colspan="8">


                    <p>
                      <strong class="left">Country of Orgin of Goods :</strong>
                      <span class="right">INDIA</span>
                    </p>

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
                  <td valign="top">
                    <p>
                      <strong>Port of Loading</strong>
                    </p>
                    <portofloading>
                      <xsl:value-of select="./PORTOFLOADING" />
                    </portofloading>
                  </td>




                  <td valign="top" colspan="8">
                    <p>
                      <strong class="left">Country of final Destination</strong> :

                      <span class="right">
                        <customercountryname>
                          <xsl:value-of select="./FINALDESTINATION" />
                        </customercountryname>
                      </span>

                    </p>
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
                  <td valign="top">
                    <p>
                      <strong>Final Destination</strong>
                    </p>
                    <finaldestination>
                      <xsl:value-of select="./FINALDESTINATION" />
                    </finaldestination>
                  </td>




                  <td valign="top" colspan="8">
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
                  <td valign="middle" colspan="3"  >
                    <p>
                      <strong>
                        Marks  &amp; Nos.

                      </strong>
                    </p>
                  </td>
                  <td valign="middle" colspan="3" >
                    <p>
                      <strong>Description of goods</strong>

                    </p>
                  </td>
                  <td valign="middle" rowspan="3">
                    No. of
                    <br />
                    Pieces

                  </td>

                  <td valign="middle" rowspan="3">
                    Quantity
                    <br />
                    Sq.Ft.

                  </td>

                  <td valign="middle" rowspan="3">
                    Rate  US$
                    <br />
                    FOB
                    <br />
                    Per Sq.Ft.

                  </td>
                  <td valign="middle" rowspan="3">
                    AMOUNT
                    <br />
                    Total
                    <br />
                    In US$

                  </td>

                </tr>




                <tr>
                  <td valign="middle" colspan="6" class="noBorder">
                    <p class="left">
                      <xsl:value-of select="./Mark" />
                    </p>

                    <p class="left">
                      <rollmark>
                        <xsl:value-of select="./RollMark" />
                      </rollmark>
                    </p>



                    <p class="center">
                      <strong >
                        <descriptionofgoods>
                          <xsl:value-of select="./DescriptionOfGoods" />
                        </descriptionofgoods>
                      </strong>
                    </p>






                  </td>

                </tr>




                <tr>
                  <td colspan="4" align="left" valign="middle">
                    <strong>CONSTRUCTION</strong>
                  </td>
                  <td colspan="2" align="left" valign="middle">
                    <strong>
                      STYLE DESCRIPTION
                    </strong>
                  </td>


                </tr>

                <rolls>
                  <xsl:for-each select="./Rolls/RollItem">
                    <rollitem>

                      <tr>
                        <td align="center" valign="middle" colspan="4">
                          <strong>
                            <composition>
                              <xsl:value-of select="Composition" />
                            </composition>
                          </strong>
                        </td>
                        <td align="center" valign="middle" colspan="2">
                          <p>
                            <styleno>
                              <xsl:value-of select="StyleNo" />
                            </styleno>

                          </p>
                          <p>

                            <description>
                              <xsl:value-of select="Description" />
                            </description>

                          </p>
                        </td>


                        <td align="center" valign="middle">

                          <totalpcs>
                            <xsl:value-of select="TotalPcs" />
                          </totalpcs>
                        </td>


                        <td align="center" valign="middle">

                          <areaft>
                            <xsl:value-of select="AREA" />
                          </areaft>
                        </td>

                        <td align="center" valign="middle">

                          <price>
                            <xsl:value-of select="PRICE" />
                          </price>
                        </td>

                        <td align="center" valign="middle">

                          <totalamount>
                            <xsl:value-of select="TotalAmount" />
                          </totalamount>
                        </td>

                      </tr>
                    </rollitem>
                  </xsl:for-each>


                </rolls>


                <tr>
                  <td colspan="4" align="center" valign="middle" rowspan="2">




                    <p>
                      <strong>
                        ROLL NO.
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

                    </p>





                    <p>
                      <strong>
                        TOTAL CBM:
                        <cbm>
                          <xsl:value-of select="./CBM" />
                        </cbm>
                        CBM (Approx)
                      </strong>
                    </p>

                    <p>
                      <strong>
                        Gross Weight :
                        <grosswt>
                          <xsl:value-of select="./GROSSWT" />
                        </grosswt>
                        KGS
                      </strong>
                    </p>

                    <p>
                      <strong>
                        Nett    Weight  :
                        <netwt>
                          <xsl:value-of select="./NETWT" />
                        </netwt>
                        KGS
                      </strong>
                    </p>





                  </td>
                  <td colspan="2" align="center" valign="top">
                    <p>
                      <strong>
                        Total  Rolls :
                        <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />


                      </strong>

                    </p>


                  </td>

                  <td align="center" valign="middle"></td>
                  <td align="center" valign="middle"></td>
                  <td align="center" valign="middle"></td>
                  <td align="center" valign="middle"></td>
                </tr>


                <tr>

                  <td align="center" valign="middle" colspan="2"></td>

                  <td align="center" valign="middle"></td>
                  <td align="center" valign="middle"></td>
                  <td align="center" valign="middle"></td>
                  <td align="center" valign="middle"></td>



                </tr>


                <tr>
                  <td colspan="4" align="center" valign="middle">
                    <strong>TOTAL </strong>
                  </td>

                  <td align="center" valign="middle" colspan="2"></td>

                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalPcs))" />
                      Pcs.
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
                  <td align="left" colspan="10" valign="middle">

                    <p>
                      Amount Chargeable
                      <strong>
                        in word :
                        <xsl:value-of select="myUtils:NumberToWords(sum(././Rolls/RollItem/TotalAmount))" />
                        Only.
                      </strong>
                    </p>

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
                  <td colspan="10" align="left" valign="top" class="noBorder">

                    <p class="center">
                      The undersigned forwarding / supplying of the goods mentioned in this invoice / documents herewith declare that
                      the goods are of Indian origin within the meaning of the rules in America.
                      NO CHILD LABOUR USED.
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="10" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="5" class="noBorder">


                    <p>Declaration : </p>

                    <p>
                      We declare that this invoice shows the actual price of the goods described and all particulars are true and correct


                    </p>
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


