<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myUtils="pda:MyUtils">
  <xsl:output method="xml" indent="yes" />
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="concat(./Quality,./CustomerOrderNo)" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>DixieGroup Invoice</title>
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
        </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table width="800" border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="8" height="15px" style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">INVOICE                      </h4>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2" rowspan="3">
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
                  <td valign="top" colspan="3">
                    <p>
                      <strong>Invoice No . </strong>
                      <tinvoiceno>
                        <xsl:value-of select="./TINVOICENO" />
                      </tinvoiceno>
                    </p>
                    <p>
                      Date :
                      <invoicedate>
                        <xsl:value-of select="./INVOICEDATE" />
                      </invoicedate>
                    </p>




                  </td>
                  <td valign="top" colspan="3">Exporter's Ref :</td>
                </tr>



                <tr>
                  <td valign="top" colspan="6">
                    <p>
                      <strong>Buyer's Order No </strong>:
                      <totorder>
                        <xsl:value-of select="./totorder" />
                      </totorder>
                    </p>


                  </td>
                </tr>



                <tr>
                  <td valign="top" colspan="6">
                    <p>
                      <strong>Other Reference(s)	</strong>
                    </p>


                  </td>
                </tr>



                <tr>

                  <td valign="top" colspan="2">
                    <p>
                      <strong>
                        Consignee/Ship to :
                      </strong>
                    </p>
                  </td>
                  <td valign="top" colspan="6">
                    <p>
                      <strong>
                        Buyer (If Other than Consignee)  Notify
                      </strong>
                    </p>

                  </td>
                </tr>
                <tr>
                  <td valign="top" rowspan="2" style="height:150px;" colspan="2">
                    <p>
                      <tbuyeroconsignee>
                        <xsl:value-of select="./TBUYEROCONSIGNEE" />
                      </tbuyeroconsignee>
                    </p>
                  </td>
                  <td valign="top" style="height:150px;" colspan="6">
                    <p>
                      <tconsignee>
                        <xsl:value-of select="./TCONSIGNEE" />
                      </tconsignee>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="4">
                    <p>
                      <strong>Country of Orgin of Goods</strong>
                    </p>
                    <p>INDIA  </p>
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
                  <td valign="top" style="width:200px;">
                    <p>
                      <strong>Pre-carriage by</strong>
                    </p>
                  </td>
                  <td valign="top" style="width:200px;">
                    <p>
                      <strong>Place of Receipt by Pre-carrier</strong>
                    </p>
                    <receiptat>
                      <xsl:value-of select="./RECEIPTAT" />
                    </receiptat>
                  </td>




                  <td valign="top" colspan="6" rowspan="3" style="width:400px;">
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
                    <p>
                      <rollmark>
                        <xsl:value-of select="./RollMark" />
                      </rollmark>
                    </p>
                  </td>
                  <td valign="middle">
                    <strong>No.&amp;Kinds of Pkgs. </strong>



                    <p>

                      <strong>
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


                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />

                      Rolls


                    </p>

                  </td>
                  <td colspan="6" valign="top">

                    <p>
                      <strong>Description of goods</strong>

                    </p>
                    <p>
                      <descriptionofgoods>
                        <xsl:value-of select="./DescriptionOfGoods" />
                      </descriptionofgoods>

                    </p>
                  </td>

                </tr>




                <tr>
                  <td align="center" valign="middle">
                    <strong>Roll#</strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Design
                    </strong>
                  </td>

                  <td align="center" valign="middle">
                    <strong>
                      Item/Color
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Quantity
                      <br />
                      No. of Pieces
                    </strong>
                  </td>
                  <td align="center" valign="middle" colspan="2">
                    <strong>
                      Area
                      <br />
                      Sq.Ft
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Rate
                      <br />
                      US$ /M2
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      AMOUNT
                      <br />
                      US$(FOB)
                    </strong>
                  </td>

                </tr>

                <rolls>




                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', concat(./Quality,./CustomerOrderNo))[1])]">
                    <rollitem>

                      <xsl:variable name="vGroup" select="key('groupByContainer', concat(./Quality,./CustomerOrderNo))" />


                      <tr>
                        <td  valign="middle" colspan="2">

                          <p>



                            <strong>
                              Order#
                              <customerorderno>
                                <xsl:value-of select="CustomerOrderNo" />
                              </customerorderno>


                            </strong>

                          </p>
                          <p>



                            <strong>
                              <quality>
                                <xsl:value-of select="Quality" />
                              </quality>
                              :


                              <composition>
                                <xsl:value-of select="./Composition" />
                              </composition>


                            </strong>

                          </p>
                        </td>


                        <td align="center" valign="middle"></td>
                        <td align="center" valign="middle"></td>


                        <td align="center" valign="middle" colspan="2"></td>
                        <td align="center" valign="middle"></td>
                        <td align="center" valign="middle"></td>
                      </tr>
                      <xsl:for-each select="$vGroup">

                        <tr>
                          <td align="center" valign="middle" width="60">
                            <!--<xsl:value-of select="concat(Rollfrom,' to ',RollTo)" />-->
                     
                          </td>
                          <td align="center" valign="middle" width="140">





                            <design>
                              <xsl:value-of select="DESIGN" />
                            </design>
                            ,

                            <description>
                              <xsl:value-of select="Description" />
                            </description>

                          </td>

                          <td align="center" valign="middle" width="100">
                            <COLOR>
                              <xsl:value-of select="COLOR" />
                            </COLOR>
                          </td>
                          <td align="center" valign="middle" width="100">
                            <pcs>
                              <xsl:value-of select="PCS" />
                            </pcs>
                          </td>


                          <td align="center" valign="middle" width="100" colspan="2">
                            <areaft>
                              <xsl:value-of select="AreaFT" />
                            </areaft>
                          </td>
                          <td align="center" valign="middle" width="100">
                            <price>
                              <xsl:value-of select="PRICE" />
                            </price>
                          </td>
                          <td align="center" valign="middle" width="100">
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
                  <td colspan="2" align="center" valign="middle">
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


                  <td align="center" valign="middle" colspan="2">
                    <strong>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/AreaFT))" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    FOB
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
                  <td colspan="2" align="center" valign="middle" rowspan="3">

                    <p>
                      <strong>
                        Amount in US$ :

                        <xsl:value-of select="myUtils:NumberToWords(sum(././Rolls/RollItem/TotalAmount))" />
                        Only.
                      </strong>
                    </p>

                  </td>
                  <td colspan="4" align="center" valign="middle">
                    <p>
                      <strong>
                        CONVERSION RATE Rs.

                      </strong>
                    </p>


                  </td>
                  <td align="center" valign="middle">
                    <p>
                      <xsl:value-of select="$exchangeRate" />
                    </p>
                  </td>
                  <td align="center" valign="middle">
                    <p>
                      <xsl:value-of select="$totalPrice" />
                    </p>
                  </td>
                </tr>


                <tr>
                  <td colspan="5" align="center" valign="middle">

                    <p>
                      <strong>
                        I.G.S.T. @

                        %
                      </strong>
                    </p>
                  </td>
                  <td align="center" valign="middle">
                    <igst>
                      <xsl:value-of select="$IGST" />
                    </igst>
                  </td>
                </tr>

                <tr>
                  <td colspan="5" align="center" valign="middle">
                    <p>
                      <strong>TOTAL TAX INVOICE VALLUE INR</strong>
                    </p>
                  </td>
                  <td align="center" valign="middle">
                    <p>
                      <xsl:value-of select="$IGSTAmount" />
                    </p>
                  </td>
                </tr>

                <tr>
                  <td colspan="2" align="center" valign="middle">
                    HS CODE : 57031010
                  </td>
                  <td colspan="5" align="center" valign="middle">
                    <p>
                      <strong>ROUND OFF TAX INVOICE VALUE</strong>
                    </p>
                  </td>
                  <td align="center" valign="middle">
                    <p>
                      <xsl:value-of select="format-number($GrossAmount,'#.##')" />
                    </p>
                  </td>
                </tr>








                <tr>
                  <td align="left" colspan="8" valign="middle"></td>

                </tr>
                <tr>
                  <td colspan="8" class="noBorder">

                    <Composition>
                      <xsl:value-of select="./Composition" />
                    </Composition>

                  </td>
                </tr>


                <tr>
                  <td colspan="8" class="noBorder"></td>
                </tr>


                <tr>
                  <td colspan="8" align="left" valign="top" class="noBorder">

                    <p>
                      Gross Wt. :
                      <grosswt>
                        <xsl:value-of select="./GROSSWT" />
                      </grosswt>
                      KGS

                      Net. Wt.   :
                      <netwt>
                        <xsl:value-of select="./NETWT" />
                      </netwt>
                      KGS

                    </p>

                  </td>


                </tr>

                <tr>
                  <td valign="top" colspan="8" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="8" class="noBorder">


                    <p>
                      <strong>We Declare that No child Labour used in the above products</strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="4" class="noBorder">
                    <p>Declaration : </p>
                    <p>1. We intend to claim rewards under Merchandise Exports From India Scheme (MEIS).	</p>
                    <p>2. We abide by provisional of foreign exchange management Act regarding realization.	</p>
                    <p>3. We declare that this invoice shows the actual price of the goods described and all particulars are true and correct.</p>
                  </td>
                  <td valign="top" colspan="4"></td>
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
