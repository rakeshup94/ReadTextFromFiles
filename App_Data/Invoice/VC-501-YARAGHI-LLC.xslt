<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myUtils="pda:MyUtils">
  <xsl:output method="xml" indent="yes" />
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="concat(./Quality,./ITEM_NAME,./Composition)" />
  <xsl:key name="FullDesignKey" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="concat(./Quality,./ITEM_NAME,./CustomerOrderNo,./Composition,./DESIGN)" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>            YARAGHI LLC            Packing List          </title>
        <style>            td {            padding: 5px;            }              .center {            text-align: center;            }              .left {            text-align: left;            }              .right {            text-align: right;            }              p {            margin-bottom: 5px;            margin-top: 0px;            }              .noBorder {            border: none !important;            }              .notop {            border-top: none !important;            }              .nobottom {            border-bottom: none !important;            }              .noLeft {            border-left: none !important;            }              .noRight {            border-right: none !important;            }          </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td  colspan="8" height="15px"                        style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px;                                  margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">                        Packing List                      </h4>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2" rowspan="5">
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
                      </compaddr1>                        ,                        <compaddr2>
                        <xsl:value-of select="./COMPADDR2" />
                      </compaddr2>                        ,                        <compaddr3>
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
                      <strong>Invoice No . </strong>
                      <tinvoiceno>
                        <xsl:value-of select="./TINVOICENO" />
                      </tinvoiceno>
                    </p>
                    <p>
                      Date :                        <invoicedate>
                        <xsl:value-of select="./INVOICEDATE" />
                      </invoicedate>
                    </p>
                  </td>
                  <td valign="top" colspan="2">Exporter's Ref :</td>
                </tr>
                <tr>
                  <td valign="top"  colspan="6" class="nobottom">
                    <p>
                      <strong>Buyer's Order No </strong>:                        <totorder>
                        <xsl:for-each select="./BuyerOrderNo/Buyer">
                          <xsl:value-of select="@OrderNo" />,
                        </xsl:for-each>

                      </totorder>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top"  colspan="6" class="notop"></td>
                </tr>
                <tr>
                  <td valign="top"  colspan="6" class="nobottom">
                    <p>
                      <strong>Other Reference(s) </strong>
                    </p>
                    <p class="right">
                      <strong>
                        Shipment# : IN<xsl:value-of select="./SHIPINGID" />
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top"  colspan="6" class="notop"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>                          Consignee/Ship to :                        </strong>
                    </p>
                  </td>
                  <td valign="top"  colspan="6">
                    <p>
                      <strong>                          Buyer (If Other than Consignee)  Notify                        </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" rowspan="7" colspan="2">
                    <p>
                      <tconsignee>
                        <xsl:value-of select="./TCONSIGNEE" />
                      </tconsignee>
                     
                    </p>
                  </td>
                  <td valign="top"  colspan="6" class="nobottom">
                    <p>
                      <tbuyeroconsignee>
                        <xsl:value-of select="./TBUYEROCONSIGNEE" />
                      </tbuyeroconsignee>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top"  colspan="6" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top"  colspan="6" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top"  colspan="6" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top"  colspan="6" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top"  colspan="6" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="3">
                    <p>
                      <strong>Country of Orgin of Goods</strong>
                    </p>
                    <p>INDIA  </p>
                  </td>
                  <td valign="top" colspan="3">
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
                    <p>
                      <xsl:value-of select="./CARRIAGENAME" />
                    </p>
                  </td>
                  <td valign="top">
                    <p>
                      <strong>Place of Receipt by Pre-carrier</strong>
                    </p>
                    <p>
                      <receiptat>
                        <xsl:value-of select="./RECEIPTAT" />
                      </receiptat>
                    </p>
                  </td>
                  <td valign="top"  colspan="6" rowspan="3">
                    <p>
                      <strong>                          Terms of Delivery and Payment                        </strong>
                    </p>
                    <p class="center">
                      <xsl:value-of select="./PAYMENTTERMS" />
                    </p>
                    <p class="center">
                      <xsl:value-of select="./PAYMENTMODE" />
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      <strong>Vessel/Flight No.</strong>
                    </p>
                    <p>
                      <xsl:value-of select="./VESSELFLIGHTNO" />
                    </p>
                  </td>
                  <td valign="top">
                    <p>
                      <strong>Port of Loading</strong>
                    </p>
                    <p>
                      <xsl:value-of select="./PORTOFLOADING" />
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      <strong>Port of Discharge</strong>
                    </p>
                    <p>
                      <xsl:value-of select="./PORTOFDISCHARGE" />
                    </p>
                  </td>
                  <td valign="top">
                    <p>
                      <strong>Final Destination</strong>
                    </p>
                    <p>
                      <xsl:value-of select="./FINALDESTINATION" />
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="middle">
                    <p>
                      <strong>
                        Marks  &amp; Nos./                          <br />                          Container No.
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
                            <xsl:value-of select="Rollfrom" />                              to
                          </xsl:if>
                          <xsl:if test="position() = last()">
                            <xsl:value-of select="RollTo" />
                          </xsl:if>
                        </xsl:for-each>
                      </strong>
                    </p>
                    <p>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />                        Rolls
                    </p>
                  </td>
                  <td  colspan="6" valign="top">
                    <p>
                      <strong>Description of goods</strong>
                    </p>
                    <p class="center">
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
                    <strong>PO#</strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>                        DESCRIPTION                      </strong>
                  </td>
                  <td align="center" valign="middle" colspan="2">
                    <strong>
                      Size in<br/>                        Ft. Inch
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Pcs. /a<br/>                        Roll
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Quantity<br />                        No. of pcs
                    </strong>
                  </td>
                  <td align="center" valign="middle" >
                    <strong>
                      Total                        <br />                        Ft.2
                    </strong>
                  </td>
                </tr>
                <rolls>
                  <xsl:variable name="totalAmount" select="format-number(sum(././Rolls/RollItem/TotalAmount),'###.00')" ></xsl:variable>
                  <xsl:variable name="discount" select="format-number(./DiscountAmt,'###.00')" ></xsl:variable>
                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', concat(./Quality,./ITEM_NAME,./Composition))[1])]">
                    <rollitem>
                      <xsl:variable name="vGroup" select="key('groupByContainer', concat(./Quality,./ITEM_NAME,./Composition))" />
                      <tr>
                        <td></td>
                        <td valign="middle" colspan="6">
                          <p>
                            <strong>
                              <span>
                                <xsl:value-of select="ITEM_NAME" />
                              </span>                                <span>
                                <xsl:value-of select="Quality" />
                              </span>:                                <composition>
                                <xsl:value-of select="./Composition" />
                              </composition>
                            </strong>
                          </p>
                        </td>
                        <td align="center" valign="middle"></td>
                      </tr>
                      <xsl:for-each select="$vGroup[generate-id() = generate-id(key('FullDesignKey', concat(./Quality,./ITEM_NAME,./CustomerOrderNo,./Composition,./DESIGN)))]">
                        <xsl:variable name="dGroup" select="key('FullDesignKey', concat(./Quality,./ITEM_NAME,./CustomerOrderNo,./Composition,./DESIGN))" />
                        <tr>
                          <td align="left" valign="middle" width="100">
                            <strong class="left">
                              <xsl:value-of select="Rollfrom" /> to                                <xsl:value-of select="RollTo" />
                            </strong>(
                            <span class="right">
                              <xsl:value-of select="TotalRoll" />
                            </span>)
                          </td>
                          <td align="center" valign="middle" width="100">
                            <strong>
                              <xsl:value-of select="CustomerOrderNo" />
                            </strong>
                          </td>
                          <td align="center" valign="middle" width="179">
                            <design>
                              <xsl:value-of select="DESIGN" />
                            </design>
                          </td>
                          <td align="center" valign="middle" width="40" colspan="2">
                            <xsl:value-of select="WIDTH" />X <xsl:value-of select="LENGTH" />
                          </td>
                          <td align="center" valign="middle" width="60" >
                            <xsl:value-of select="RPcs" />
                          </td>
                          <td align="center" valign="middle" width="60" >
                            <!--<xsl:value-of select='format-number(sum($dGroup/), "###.##")' />-->

                            <xsl:value-of select='format-number(TotalPcs, "###.##")' />
                          </td>
                          <td align="center" valign="middle" width="80">
                            <xsl:value-of select="format-number(AREA,'###.00')" />
                          </td>
                        </tr>
                      </xsl:for-each>
                    </rollitem>
                  </xsl:for-each>
                  <tr>
                    <td  align="center" valign="middle"></td>
                    <td align="center" valign="middle">                                          </td>
                    <td align="center" valign="middle"  colspan="2">                                              </td>
                    <td align="center" valign="middle" >                                                                                            </td>
                    <td align="center" valign="middle" >
                      <strong>TOTAL: </strong>
                    </td>
                    <td align="center" valign="middle">
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalPcs))" />
                    </td>
                    <td align="center" valign="middle">
                      <strong>
                        <xsl:value-of select="format-number(sum(././Rolls/RollItem/AREA),'###.00')" />
                      </strong>
                    </td>
                  </tr>
                  <tr>
                    <td valign="top"  colspan="8" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td valign="top"  colspan="8" class="noBorder"></td>
                  </tr>
                </rolls>
              </table>
            </invoiceitem>
          </xsl:for-each>
        </invoicelist>
        <invoicelist>          </invoicelist>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
