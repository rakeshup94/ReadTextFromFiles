

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myutils="pda:MyUtils">
  <xsl:output method="xml" indent="yes" />
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="./CustomerOrderNo" />
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
                  <td colspan="8" height="15px" style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">PACKING LIST  (Kalaty)                    </h4>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="3" rowspan="3">
                    <p>
                      <strong>Exporter </strong>
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
                  <td valign="top" colspan="3">
                    <p>
                      Invoice No
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



                  <td valign="top" colspan="2">
                    <p>
                      Exporter's Ref :
                    </p>
                  </td>


                </tr>

                <tr>

                  <td valign="top" align="left" colspan="5">
                    <p>
                      Buyer's Order No. :
                    </p>

                    <p>
                      <strong>
                        <totorder>
                          <xsl:value-of select="./totorder" />
                        </totorder>
                      </strong>
                    </p>
                  </td>
                </tr>

                <tr>

                  <td valign="top" colspan="5">
                    Other Reference
                  </td>
                </tr>



                <tr>
                  <td valign="top" colspan="3" rowspan="6">
                    <p>
                      <strong>
                        Consignee
                      </strong>
                    </p>
                    <p>
                      <tconsignee>
                        <xsl:value-of select="./TCONSIGNEE" />
                      </tconsignee>
                    </p>
                  </td>
                  <td valign="top" colspan="5" class="noBorder">
                    <p>
                      Buyer (If Other than Consignee) Notify

                    </p>
                  </td>
                </tr>



                <tr>
                  <td valign="top" colspan="5" class="noBorder"></td>
                </tr>



                <tr>
                  <td valign="top" colspan="5" class="noBorder"></td>
                </tr>



                <tr>
                  <td valign="top" colspan="5"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      Country of Orgin of Goods
                    </p>
                  </td>

                  <td valign="top" colspan="3" align="center">
                    <p>
                      Country of final Destination
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" align="center" colspan="2">
                    <p>INDIA Test  </p>
                  </td>

                  <td valign="top" colspan="3" align="center">
                    <p>
                      <customercountryname>
                        <xsl:value-of select="./FINALDESTINATION" />
                      </customercountryname>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>Pre-carriage by</strong>
                    </p>
                    <p>
                      <strong>By Truck Test</strong>
                    </p>
                  </td>
                  <td valign="top" class="auto-style1">
                    <p>
                      <strong>Place of Receipt by Pre-carrier</strong>
                    </p>
                    <p>
                      <receiptat>
                        <xsl:value-of select="./RECEIPTAT" />
                      </receiptat>
                    </p>
                  </td>
                  <td valign="top" colspan="5" rowspan="3">
                    <p>
                      <strong>
                        Terms of Delivery and Payment
                      </strong>
                    </p>

                    <p align="center">
                      <paymentterms>
                        <xsl:value-of select="./PAYMENTTERMS" />
                      </paymentterms>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>Vessel/Flight No.</strong>
                    </p>
                    <p>
                      <vesselflightno>
                        <xsl:value-of select="./VESSELFLIGHTNO" />
                      </vesselflightno>
                    </p>
                  </td>
                  <td valign="top" class="auto-style1">
                    <p>
                      <strong>Port of Loading</strong>
                    </p>
                    <p>
                      <portofloading>
                        <xsl:value-of select="./PORTOFLOADING" />
                      </portofloading>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>Port of Discharge</strong>
                    </p>
                    <p>
                      <portofdischarge>
                        <xsl:value-of select="./PORTOFDISCHARGE" />
                      </portofdischarge>
                    </p>
                  </td>
                  <td valign="top" class="auto-style1">
                    <p>
                      <strong>Final Destination</strong>
                    </p>
                    <p>
                      <finaldestination>
                        <xsl:value-of select="./FINALDESTINATION" />
                      </finaldestination>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" class="nobottom" colspan="2">
                    Marks  &amp; Nos./
                  </td>
                  <td valign="top" class="auto-style1">
                    No.&amp;Kinds of Pkgs.
                  </td>
                  <td colspan="5" valign="top" class="nobottom">
                    Description of Goods
                  </td>
                </tr>

                <tr>
                  <td valign="top" class="notop" colspan="2">

                    <p>
                      <rollmark>
                        <xsl:value-of select="./RollMark" />
                      </rollmark>
                    </p>
                  </td>
                  <td valign="top" class="auto-style1">

                    <p>
                      <strong>
                        Rolls#
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


                    <p class="topBorder">
                      <strong>
                        <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />

                        Rolls
                      </strong>

                    </p>
                  </td>
                  <td colspan="5" valign="top" align="center" class="notop">

                    <p>
                      <strong>
                        <descriptionofgoods>
                          <xsl:value-of select="./DescriptionOfGoods" />
                        </descriptionofgoods>
                      </strong>
                    </p>
                  </td>
                </tr>




                <tr>
                  <td align="center" valign="middle">
                    <strong>
                      Roll#
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Qty.
                    </strong>
                  </td>
                  <td align="center" valign="middle" class="auto-style1">
                    <strong>
                      Design
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Color/SKU#
                    </strong>
                  </td>

                  <td align="center" valign="middle">
                    <strong>
                      Size
                      <br />
                      in Ft. Inch.
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Quantity
                      <br />
                      No.of pcs
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Total
                      <br />
                      Sq.Ft.
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      No. of pcs
                      <br />
                      per Roll
                    </strong>
                  </td>
                </tr>

                <rolls>

                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', ./CustomerOrderNo)[1])]">
                    <rollitem>
                      <xsl:variable name="vGroup" select="key('groupByContainer', ./CustomerOrderNo)" />
                      <tr>
                        <td align="left" valign="middle" colspan="4">
                          <strong>
                            <customerorderno>
                              PO#<xsl:value-of select="CustomerOrderNo" />   :
                              <ITEM_NAME>
                                <xsl:value-of select="ITEM_NAME"/>
                              </ITEM_NAME>

                              <Quality>
                                <xsl:value-of select="Quality"/>
                              </Quality>

                              :

                              <Composition>
                                <xsl:value-of select="Composition"/>
                              </Composition>
                            </customerorderno>
                          </strong>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                      </tr>


                      <xsl:for-each select="$vGroup">


                        <tr>
                          <td align="center" valign="middle">
                            <strong>
                              <rollfrom>
                                <xsl:value-of select="Rollfrom" />
                              </rollfrom>
                              to
                              <rollto>
                                <xsl:value-of select="RollTo" />
                              </rollto>
                            </strong>
                          </td>
                          <td align="center" valign="middle">
                            <strong>
                              <totalpcs>
                                <xsl:value-of select="TotalPcs" />
                              </totalpcs>
                            </strong>

                          </td>
                          <td align="center" valign="middle" >

                            <design>
                              <xsl:value-of select="DESIGN" />
                            </design>
                          </td>


                          <td align="center" valign="middle">

                            <color>
                              <xsl:value-of select="COLOR" />
                            </color>
                            /
                            <skuno>
                              <xsl:value-of select="SKUNO" />
                            </skuno>
                          </td>


                          <td align="center" valign="middle">

                            <sizeft>
                              <xsl:value-of select="SizeFT" />
                            </sizeft>
                          </td>

                          <td align="center" valign="middle">

                            <pcs>
                              <xsl:value-of select="PCS" />
                            </pcs>
                          </td>

                          <td align="center" valign="middle">

                            <areaft>
                              <xsl:value-of select="AreaFT" />
                            </areaft>
                          </td>


                          <td align="center" valign="middle">

                            <rpcs>
                              <xsl:value-of select="RPcs" />
                            </rpcs>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </rollitem>
                  </xsl:for-each>
                </rolls>
                <tr>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td align="center" valign="middle" >
                    <strong>Total : </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/PCS))" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="format-number(number(sum(././Rolls/RollItem/AreaFT)),'#.##')" />
                    </strong>
                  </td>
                  <td></td>
                </tr>

                <tr>
                  <td colspan="8" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="8" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="8" class="noBorder"></td>
                </tr>


                <tr>
                  <td valign="top" colspan="8" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="5" class="noBorder"></td>
                  <td valign="top" colspan="3" rowspan="3"></td>
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
