

  <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myUtils="pda:MyUtils">
    <xsl:output method="xml" indent="yes" />
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
          </style>
        </head>
        <body>
          <invoicelist>
            <xsl:for-each select="/InvoiceList/InvoiceItem">
              <invoiceitem>
                <table width="700" border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                  <tr>
                    <td colspan="9" height="15px" style="padding-left: 5px; text-align: center; color: #000!important;">
                      <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">INVOICE                      </h4>
                    </td>
                  </tr>
                  <tr>
                    <td valign="top" colspan="3" rowspan="3">
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
                    <td valign="top" colspan="3">
                      Exporter's Ref :
                    </td>
                  </tr>

                  <tr>
                    <td valign="top" colspan="6">
                      <p>
                        Buyer's Order No. Date :
                        <totorder>
                          <xsl:value-of select="./totorder" />
                        </totorder>
                      </p>
                    </td>
                  </tr>





                  <tr>
                    <td valign="top" colspan="6">
                      <p>Other Reference(s)	</p>
                    </td>
                  </tr>





                  <tr>

                    <td valign="top" colspan="3">
                      <p>
                        <strong>
                          Consignee/Ship to :
                        </strong>
                      </p>
                    </td>
                    <td valign="top" colspan="6" rowspan="2">
                      <p>
                        <strong>FOR INSPECTION	</strong>
                      </p>
                      <p>
                        <tconsignee>
                          <xsl:value-of select="./TCONSIGNEE" />
                        </tconsignee>
                      </p>
                    </td>
                  </tr>
                  <tr>
                    <td valign="top" rowspan="2" colspan="3">
                      <p>
                        <tbuyeroconsignee>
                          <xsl:value-of select="./TBUYEROCONSIGNEE" />
                        </tbuyeroconsignee>
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
                    <td valign="top">
                      <p>
                        <strong>Pre-carriage by</strong>
                      </p>
                    </td>
                    <td valign="top" colspan="2">
                      <p>
                        <strong>Place of Receipt by Pre-carrier</strong>
                      </p>
                      <receiptat>
                        <xsl:value-of select="./RECEIPTAT" />
                      </receiptat>
                    </td>




                    <td valign="top" colspan="6" rowspan="3">
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
                    <td valign="top" colspan="2">
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
                    <td valign="top" colspan="2">
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
                    <td valign="middle" colspan="2">
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

                        Bales


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
                      <strong>Sr.#</strong>
                    </td>
                    <td align="center" valign="middle" colspan="2">
                      <strong>
                        Description
                      </strong>
                    </td>

                    <td align="center" valign="middle">
                      <strong>
                        Size
                        <br />
                        (in CM.)
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
                        Sqm
                      </strong>
                    </td>
                    <td align="center" valign="middle">
                      <strong>
                        Price FOB
                        <br />
                        US$ /M2
                      </strong>
                    </td>
                    <td align="center" valign="middle">
                      <strong>
                        Amount
                        <br />
                        US$
                      </strong>
                    </td>

                  </tr>

                  <rolls>




                    <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', concat(./Quality,./CustomerOrderNo))[1])]">
                      <rollitem>

                        <xsl:variable name="vGroup" select="key('groupByContainer', concat(./Quality,./CustomerOrderNo))" />

                        <tr>
                          <td valign="top" colspan="9">


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
                        </tr>

                        <xsl:for-each select="$vGroup">
                          <tr>
                            <td align="center" valign="middle" width="150">
                              <xsl:value-of select="position()" />

                            </td>
                            <td align="center" valign="middle" colspan="2" width="170">





                              <item_name>
                                <xsl:value-of select="ITEM_NAME" />
                              </item_name>


                              <description>
                                <xsl:value-of select="Description" />
                              </description>

                            </td>

                            <td align="center" valign="middle" width="90">
                              <sizeft>
                                <xsl:value-of select="SizeFT" />
                              </sizeft>
                            </td>
                            <td align="center" valign="middle" width="70">
                              <pcs>
                                <xsl:value-of select="PCS" />
                              </pcs>
                            </td>


                            <td align="center" valign="middle" colspan="2" width="70">
                              <areaft>
                                <xsl:value-of select="AreaFT" />
                              </areaft>
                            </td>
                            <td align="center" valign="middle" width="70">
                              <price>
                                <xsl:value-of select="PRICE" />
                              </price>
                            </td>
                            <td align="center" valign="middle" width="80">
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
                    <td colspan="3" align="center" valign="middle"></td>
                    <td align="center" valign="middle">
                      <strong>TOTAL </strong>
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
                      F.O.B

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
                    <td colspan="3" align="center" valign="middle"></td>
                    <td colspan="5" align="right" valign="top" >
                      <p>
                        <strong>
                          CONVERSION RATE Rs.
                          <xsl:value-of select="$exchangeRate" />
                        </strong>
                      </p>
                    </td>


                    <td valign="top" >
                      <p>
                        <xsl:value-of select="$totalPrice" />
                      </p>
                    </td>
                  </tr>
                  <tr>

                    <td colspan="3" align="center" valign="middle">


                      <p>
                        HS CODE : 57031010
                      </p>
                      <p>
                        Amount Chargeable : US$


                        <strong>

                          <xsl:value-of select="myUtils:NumberToWords(sum(././Rolls/RollItem/TotalAmount))" />
                          Only.
                        </strong>

                      </p>
                    </td>
                    <td colspan="5" align="right" valign="top" >
                      <p>
                        <strong>
                          I.G.S.T. @
                          <igst>
                            <xsl:value-of select="$IGST" />
                          </igst>
                          %
                        </strong>
                      </p>
                      <p>
                        <strong>TOTAL TAX INVOICE VALLUE INR</strong>
                      </p>
                      <p>
                        <strong>ROUND OFF TAX INVOICE VALUE</strong>
                      </p>
                    </td>


                    <td valign="top" >
                      <p>
                        <xsl:value-of select="$IGSTAmount" />
                      </p>
                      <p>
                        <xsl:value-of select="format-number($GrossAmount,'#.##')" />
                      </p>
                      <p>
                        <strong>
                          <xsl:value-of select="format-number($GrossAmount,'#')" />
                        </strong>
                      </p>
                    </td>
                  </tr>

                  <tr>
                    <td valign="top" colspan="9" class="noBorder"></td>
                  </tr>

                  <tr>
                    <td valign="top" colspan="9" class="noBorder">



                      <p>
                        <strong>
                          Contents : - Hand Tufted Woolen Carpets : 80% Wool + 20% Cotton
                        </strong>
                      </p>
                    </td>
                  </tr>

                  <tr>
                    <td valign="top" colspan="9" class="noBorder">





                      <p>
                        <strong>
                          Gross Wt. :
                          <grosswt>
                            <xsl:value-of select="./GROSSWT" />
                          </grosswt>
                          KGS
                        </strong>
                      </p>
                      <p>
                        <strong>
                          Net. Wt.   :
                          <netwt>
                            <xsl:value-of select="./NETWT" />
                          </netwt>
                          KGS
                        </strong>
                      </p>
                    </td>
                  </tr>

                  <tr>
                    <td valign="top" colspan="9" class="noBorder"></td>
                  </tr>

                  <tr>
                    <td valign="top" colspan="9" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td valign="top" colspan="9" class="noBorder">


                      <p>
                        <strong>We Declare that No child Labour used in the above products</strong>
                      </p>
                    </td>
                  </tr>
                  <tr>
                    <td valign="top" colspan="5" class="noBorder">
                      <p>Declaration : </p>
                      <p>1. We intend to claim rewards under RODTEP Scheme	</p>
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
