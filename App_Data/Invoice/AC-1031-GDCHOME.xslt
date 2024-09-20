<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myUtils="pda:MyUtils">
  <xsl:output method="xml" indent="yes" />
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="concat(./Quality,./ITEM_NAME,./CustomerOrderNo,./Composition)" />
  <xsl:key name="HSNKey" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="./HSNCode" />
  <xsl:key name="DesignKey" match="/InvoiceList/InvoiceItem/Rolls/RollItem"   use="concat(./DESIGN,./COLOR)" />
  <xsl:key name="FullDesignKey" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="concat(./Quality,./ITEM_NAME,./CustomerOrderNo,./Composition,./DESIGN,./COLOR,./PRICE)" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>DixieGroup Invoice</title>
        <style>            td {            padding: 5px;            }              .center {            text-align: center;            }              .left {            text-align: left;            }              .right {            text-align: right;            }              p {            margin-bottom: 5px;            margin-top: 0px;            }              .noBorder {            border: none !important;            }              .notop {            border-top: none !important;            }              .nobottom {            border-bottom: none !important;            }              .noLeft {            border-left: none !important;            }              .noRight {            border-right: none !important;            }          </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="10" height="15px"                        style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px;                                  margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">                        INVOICE                      </h4>
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
                  <td valign="top" colspan="5">
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
                  <td valign="top" colspan="3">Exporter's Ref :</td>
                </tr>
                <tr>
                  <td valign="top" colspan="8" class="nobottom">
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
                  <td valign="top" colspan="8" class="notop"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="8" class="nobottom">
                    <p>
                      <strong>Other Reference(s) </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="8" class="notop"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>                          Consignee/Ship to :                        </strong>
                    </p>
                  </td>
                  <td valign="top" colspan="6">
                    <p>
                      <strong>                          Buyer (If Other than Consignee)                        </strong>
                    </p>
                  </td>
                  <td valign="top" colspan="2">Notify</td>
                </tr>
                <tr>
                  <td valign="top" rowspan="7" colspan="2">
                    <p>
                      <tconsignee>
                        <xsl:value-of select="./TCONSIGNEE" />
                      </tconsignee>
                    </p>
                  </td>
                  <td valign="top" colspan="6" class="noBorder">
                    <xsl:value-of select="./TBUYEROCONSIGNEE" />
                  </td>
                  <td valign="top" colspan="2" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="6" class="noBorder"></td>
                  <td valign="top" colspan="2" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="6" class="noBorder"></td>
                  <td valign="top" colspan="2" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="6" class="noBorder"></td>
                  <td valign="top" colspan="2" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="6" class="noBorder"></td>
                  <td valign="top" colspan="2" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="6" class="noBorder"></td>
                  <td valign="top" colspan="2" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="6">
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
                  <td valign="top" colspan="8" rowspan="3">
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
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />                        Bales
                    </p>
                  </td>
                  <td colspan="8" valign="top">
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
                  <td align="center" valign="middle" colspan="2">
                    <strong>                        DESCRIPTION                      </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Quantity                        <br />                        No. of Pieces
                    </strong>
                  </td>
                  <td align="center" valign="middle" colspan="4">
                    <strong>
                      Area                        <br />                        Sq.<xsl:value-of select="./UNITNAME" />.
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Price US                        <br />                        $ /sq.                        <xsl:value-of select="./UNITNAME" />.
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      AMOUNT                        <br />                        US$
                    </strong>
                  </td>
                </tr>
                <rolls>
                  <xsl:variable name="totalAmount">
                    <xsl:call-template name="sumProducts">
                      <xsl:with-param name="pList" select="./Rolls/RollItem" />
                    </xsl:call-template>
                  </xsl:variable>
                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', concat(./Quality,./ITEM_NAME,./CustomerOrderNo,./Composition))[1])]">
                    <rollitem>
                      <xsl:variable name="vGroup" select="key('groupByContainer', concat(./Quality,./ITEM_NAME,./CustomerOrderNo,./Composition))" />
                      <tr>
                        <td valign="middle" colspan="3">
                          <p>
                            <strong>
                              Order#                                <customerorderno>
                                <xsl:value-of select="CustomerOrderNo" />
                              </customerorderno>
                            </strong>
                          </p>
                          <p>
                            <span>
                              <xsl:value-of select="ITEM_NAME" />
                            </span>                              <span>
                              <xsl:value-of select="Quality" />
                            </span>:                              <composition>
                              <xsl:value-of select="./Composition" />
                            </composition>
                          </p>
                        </td>
                        <td align="center" valign="middle"></td>
                        <td align="center" valign="middle" colspan="4"></td>
                        <td align="center" valign="middle"></td>
                        <td align="center" valign="middle"></td>
                      </tr>
                      <xsl:for-each select="$vGroup[generate-id() = generate-id(key('FullDesignKey', concat(./Quality,./ITEM_NAME,./CustomerOrderNo,./Composition,./DESIGN,./COLOR,./PRICE)))]">
                        <xsl:variable name="dGroup" select="key('FullDesignKey', concat(./Quality,./ITEM_NAME,./CustomerOrderNo,./Composition,./DESIGN,./COLOR,./PRICE))" />
                        <tr>
                          <td align="center" valign="middle" width="100"></td>
                          <td align="center" valign="middle" width="160" colspan="2">
                            <design>
                              <xsl:value-of select="DESIGN" />
                            </design>                              ,                              <styleno>
                              <xsl:value-of select="DesignNameAToC" />
                            </styleno>                                                    <color>
                              <xsl:value-of select="COLOR" />
                            </color>
                          </td>
                          <td align="center" valign="middle" width="70">
                            <pcs>
                              <xsl:value-of select='format-number(sum($dGroup/TotalPcs), "###.##")' />
                            </pcs>
                          </td>
                          <td align="center" valign="middle" width="60" colspan="4">
                            <areaft>
                              <xsl:value-of select='format-number(sum($dGroup/AREA), "###.##")' />
                            </areaft>
                          </td>
                          <td align="center" valign="middle" width="70">
                            <price>
                              <xsl:value-of select="PRICE" />
                            </price>
                          </td>
                          <td align="center" valign="middle" width="80">
                            <itemprice>
                              <xsl:variable name="AREA" select="sum($dGroup/AREA)" />
                              <xsl:variable name="cost" select="$AREA*PRICE" />
                              <xsl:value-of select="format-number($cost,'###.00')" />
                            </itemprice>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </rollitem>
                  </xsl:for-each>
                  <tr>
                    <td colspan="2" align="center" valign="middle"></td>
                    <td align="center" valign="middle">
                      <strong>TOTAL: </strong>
                    </td>
                    <td align="center" valign="middle">
                      <strong>
                        <xsl:value-of select="number(sum(././Rolls/RollItem/TotalPcs))" />
                      </strong>
                    </td>
                    <td align="center" valign="middle" colspan="4">
                      <strong>
                        <xsl:value-of select="format-number(sum(././Rolls/RollItem/AREA),'###.##')" />
                      </strong>
                    </td>
                    <td align="center" valign="middle">                        FOB                      </td>
                    <td align="center" valign="middle">
                      <strong>
                        $                          <xsl:value-of select="format-number($totalAmount,'###.##')" />
                      </strong>
                    </td>
                  </tr>
                  <xsl:variable name="insurance" select="./INSURANCE" />
                  <xsl:variable name="NetAmount" select="number($totalAmount+$insurance)" />
                  <tr>
                    <td colspan="9" align="right" class="noBorder" valign="middle">
                      <strong>                          Add : Insurance Charges                        </strong>
                    </td>
                    <td align="center" valign="middle" class="noBorder">
                      <strong>
                        <xsl:value-of select="$insurance" />
                      </strong>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="10" class="noBorder">Amount Chargeable</td>
                  </tr>
                  <tr>
                    <td align="left" colspan="8" valign="middle" class="noBorder">
                      <p>
                        <strong>
                          Amount in  US $:                                <xsl:value-of select="myUtils:NumberToWords($NetAmount)" />                              Only
                        </strong>
                      </p>
                    </td>
                    <td class="noBorder" align="right">
                      <strong>                          TOTAL:                        </strong>
                    </td>
                    <td class="noBorder" align="center">
                      <strong>
                        <p>
                          <xsl:value-of select="format-number($NetAmount,'###.##')" />
                        </p>
                      </strong>
                    </td>
                  </tr>
                  <tr>
                    <td valign="top" colspan="10" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td valign="top" colspan="10" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td colspan="10" class="noBorder">
                      <strong>Contents :   </strong>
                    </td>
                  </tr>
                  <tr>
                    <td valign="top" colspan="10" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td valign="top" colspan="10" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td valign="top" colspan="10" class="noBorder">
                      <p>
                        <strong>We Declare that No child Labour used in the above products</strong>
                      </p>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="10" align="left" valign="top" class="noBorder">
                      <strong>
                        <p>
                          Gross Wt. :                            <grosswt>
                            <xsl:value-of select="./GROSSWT" />
                          </grosswt>                            KGS                              Net. Wt.   :                            <netwt>
                     
                            <xsl:value-of select="./NETWT" />
                          </netwt>                            KGS
                        </p>
                        <p>
                          CBM  :

                          <xsl:value-of select="./CBM" />
                          
                        </p>
                      </strong>
                    </td>
                  </tr>
                  <tr>
                    <td valign="top" colspan="6" class="noBorder">
                      <p>Declaration : </p>
                      <p>                          1. We intend to claim rewards under RODTEP Scheme.                        </p>
                      <p>                          2. We abide by provisional of foreign exchange management Act regarding realization.                        </p>
                      <p>                          3. We declare that this invoice shows the actual price of the goods described and all particulars are true and correct.                        </p>
                    </td>
                    <td valign="top" colspan="4"></td>
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
  <xsl:template name="sumProducts">
    <xsl:param name="pList"/>
    <xsl:param name="pAccum" select="0"/>
    <xsl:choose>
      <xsl:when test="$pList">
        <xsl:variable name="vHead" select="$pList[1]"/>
        <xsl:call-template name="sumProducts">
          <xsl:with-param name="pList" select="$pList[position() > 1]"/>
          <xsl:with-param name="pAccum" select="$pAccum + $vHead//AREA * $vHead//PRICE"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$pAccum"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
