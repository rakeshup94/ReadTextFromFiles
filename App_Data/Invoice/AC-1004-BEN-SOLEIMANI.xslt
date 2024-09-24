<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myUtils="pda:MyUtils">
  <xsl:output method="xml" indent="yes" />
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="concat(./Quality,./StyleNo, ./ITEM_NAME,./PRICE,./Composition)" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Emailer</title>
        <style>              td {            padding: 5px;              }            .center {            text-align: center;            }              .left {            text-align: left;            }              .right {            text-align: right;              }              p {            margin-bottom: 5px;            margin-top: 0px;            }              .noBorder {            border: none !important;            }              .notop {            border-top: none !important;            }            .nobottom {            border-bottom: none !important;            }              .noLeft {            border-left: none !important;            }            .noRight {            border-right: none !important;            }          </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333;">
                <tr>
                  <td colspan="8"                        style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px;                                  margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">                        INVOICE                      </h4>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="3" rowspan="6">
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
                  <td valign="top" colspan="2">
                    <p>
                      <strong>Invoice No / Date: </strong>
                    </p>
                  </td>
                  <td valign="top" colspan="3"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="5">
                    <p>
                      <tinvoiceno>
                        <xsl:value-of select="./TINVOICENO" />
                      </tinvoiceno>                        /                        <invoicedate>
                        <xsl:value-of select="./INVOICEDATE" />
                      </invoicedate>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="5">
                    <p>
                      <strong>Buyer's Order No </strong>:
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="5">
                    <p class="left">
                      <strong>
                        <xsl:for-each select="./BuyerOrderNo/Buyer">
                          <xsl:value-of select="@OrderNo" />,
                        </xsl:for-each>
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="5"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="5">
                    <p>
                      <strong>Other Reference(s) </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="3">
                    <p>
                      <strong>                          Consignee                        </strong>
                    </p>
                    <p>
                      <xsl:call-template name="splitStringToItems">
                        <xsl:with-param name="delimiter" select="','" />
                        <xsl:with-param name="list" select="./TCONSIGNEE" />
                      </xsl:call-template>
                    </p>
                  </td>
                  <td valign="top" colspan="5">
                    <p>
                      <strong>                          Buyer (If Other than Consignee)                        </strong>
                    </p>
                    <p>
                      <xsl:call-template name="splitStringToItems">
                        <xsl:with-param name="delimiter" select="','" />
                        <xsl:with-param name="list" select="./TBUYEROCONSIGNEE" />
                      </xsl:call-template>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" rowspan="2">
                    <p>
                      <strong>Pre-carriage by</strong>
                    </p>
                    <p>
                      <xsl:value-of select="./CARRIAGENAME" />
                    </p>
                  </td>
                  <td valign="top" colspan="2" rowspan="2">
                    <p>
                      <strong>Place of Receipt by Pre-carrier</strong>
                    </p>
                    <p>
                      <receiptat>
                        <xsl:value-of select="./RECEIPTAT" />
                      </receiptat>
                    </p>
                  </td>
                  <td valign="top" colspan="5">
                    <p>
                      <span class="left">                          Country of Orgin of Goods :                          </span>
                      <span class="right">
                        <strong>                            INDIA </strong>
                      </span>
                    </p>
                  </td>
                </tr>
                <tr class="botomBorder">
                  <td valign="bottom" colspan="5" rowspan="2" >
                    Country of final Destination                      :   <strong class="left">
                      <customercountryname>
                        <xsl:value-of select="./FINALDESTINATION" />
                      </customercountryname>
                    </strong>
                  </td>
                </tr>
                <tr>
                  <td valign="top" rowspan="2">
                    <p>
                      <strong>Vessel/Flight No.</strong>
                    </p>
                    <vesselflightno>
                      <xsl:value-of select="./VESSELFLIGHTNO" />
                    </vesselflightno>
                  </td>
                  <td valign="top" colspan="2" rowspan="2">
                    <p>
                      <strong>Port of Loading</strong>
                    </p>
                    <portofloading>
                      <xsl:value-of select="./PORTOFLOADING" />
                    </portofloading>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="5"  rowspan="2">
                    <p>
                      <strong>                          Terms of Delivery and Payment:                        </strong>
                    </p>
                    <p class="center">
                      <xsl:value-of select="./PAYMENTTERMS" />
                    </p>
                    <p class="center">
                      <xsl:value-of select="./PAYMENTMODE" />
                    </p>
                    <p></p>
                    <p></p>
                    <p></p>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>                        Port of Discharge                      </p>
                    <strong>
                      <portofdischarge>
                        <xsl:value-of select="./PORTOFDISCHARGE" />
                      </portofdischarge>
                    </strong>
                  </td>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>Final Destination</strong>
                    </p>
                    <strong>
                      <finaldestination>
                        <xsl:value-of select="./FINALDESTINATION" />
                      </finaldestination>
                    </strong>
                  </td>
                </tr>
                <tr>
                  <td valign="middle" class="noBorder">
                    <p>
                      <strong>                          Marks  &amp; Nos.                          </strong>
                    </p>
                  </td>
                  <td valign="middle" colspan="3" class="noBorder">
                    <p>
                      <strong>Description of goods</strong>
                    </p>
                  </td>
                  <td valign="middle" rowspan="3">
                    No. of                      <br />                      Pieces
                  </td>
                  <td valign="middle" rowspan="3">
                    Quantity                      <br />                      Sq.<xsl:value-of select="./UNITNAME" />.
                  </td>
                  <td valign="middle" rowspan="3">
                    Rate  US$                      <br />                      FOB                      <br />                      Per Sq.<xsl:value-of select="./UNITNAME" />.
                  </td>
                  <td valign="middle" rowspan="3">
                    AMOUNT                      <br />                      Total                      <br />                      In US$
                  </td>
                </tr>
                <tr>
                  <td valign="middle" colspan="5" class="noBorder">
                    <p class="left">
                      <xsl:value-of select="./Mark" />                        ,                        <rollmark>
                        <xsl:value-of select="./RollMark" />
                      </rollmark>
                    </p>
                    <p class="center">
                      <strong>
                        <descriptionofgoods>
                          <xsl:value-of select="./DescriptionOfGoods" />
                        </descriptionofgoods>
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td colspan="2" align="left" valign="middle">
                    <strong>CONSTRUCTION</strong>
                  </td>
                  <td colspan="2" align="left" valign="middle">
                    <strong>                        STYLE DESCRIPTION                      </strong>
                  </td>
                </tr>
                <rolls>
                  <xsl:variable name="totalAmount" select="format-number(sum(././Rolls/RollItem/TotalAmount),'###.00')" > </xsl:variable>
                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', concat(./Quality,./StyleNo, ./ITEM_NAME,./PRICE,./Composition))[1])]">
                    <xsl:variable name="vGroup" select="key('groupByContainer', concat(./Quality,./StyleNo, ./ITEM_NAME,./PRICE,./Composition))" />
                    <rollitem>
                      <tr>
                        <td width="175" align="left" valign="middle" colspan="2">
                          <strong>
                            <composition>
                              <xsl:value-of select="Composition" />
                            </composition>
                          </strong>
                        </td>
                        <td width="180" align="left" valign="middle" colspan="2">
                          <p>
                            <styleno>
                              <xsl:value-of select="StyleNo" />
                            </styleno>
                          </p>
                          <p>
                            <span>
                              <xsl:value-of select="ITEM_NAME" />
                            </span>
                            <span>
                              <xsl:value-of select="Quality" />
                            </span>
                          </p>
                        </td>
                        <td width="75" align="center" valign="middle">
                          <totalpcs>
                            <xsl:value-of select='format-number(sum($vGroup/TotalPcs), "###.##")' />
                          </totalpcs>
                        </td>
                        <td width="65" align="center" valign="middle">
                          <areaft>
                            <xsl:value-of select='format-number(sum($vGroup/AREA), "###.##")' />
                          </areaft>
                        </td>
                        <td width="61" align="center" valign="middle">
                          <price>
                            <xsl:value-of select="PRICE" />
                          </price>
                        </td>
                        <td width="70" align="center" valign="middle">
                          <totalamount>
                            <xsl:value-of select="format-number(sum($vGroup/TotalAmount),'###.##')" />
                          </totalamount>
                        </td>
                      </tr>
                    </rollitem>
                  </xsl:for-each>
                  <tr>
                    <td colspan="2" valign="middle" rowspan="3">
                      <p>
                        <strong>
                          ROLL NO.                          <xsl:for-each select="./Rolls/RollItem">
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
                        <strong>
                          TOTAL CBM:                          <cbm>
                            <xsl:value-of select="format-number(./CBM,'###.##')" />
                          </cbm>                          CBM (Approx)
                        </strong>
                      </p>
                      <p>
                        <strong>
                          GROSS WT :                          <grosswt>
                            <xsl:value-of select="format-number(./GROSSWT,'###.##')" />
                          </grosswt>                          KGS
                        </strong>
                      </p>
                      <p>
                        <strong>
                          NETT    WT  :                          <netwt>
                            <xsl:value-of select="format-number(./NETWT,'###.##')" />
                          </netwt>                          KGS
                        </strong>
                      </p>
                    </td>
                    <td colspan="2" align="right" valign="top">
                      <p>
                        <strong>
                          Total  Rolls :                          <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />
                        </strong>
                      </p>
                    </td>
                    <td align="center" valign="middle"></td>
                    <td align="center" valign="middle"></td>
                    <td align="center" valign="middle"></td>
                    <td align="center" valign="middle"></td>
                  </tr>
                  <tr>
                    <td valign="middle" class="noBorder" rowspan="2"></td>
                    <td valign="top" rowspan="2">
                      <strong>Total: </strong>
                    </td>
                    <td align="center" valign="middle" rowspan="2">
                      <p>
                        <strong>
                          <xsl:value-of select="number(sum(././Rolls/RollItem/TotalPcs))" />
                        </strong>
                      </p>
                      <p>
                        <strong>Pcs. </strong>
                      </p>
                    </td>
                    <td align="center" valign="middle" rowspan="2">
                      <p>
                        <strong>
                          <xsl:value-of select=" format-number(sum(././Rolls/RollItem/AREA),'###.##')" />
                        </strong>
                      </p>
                      <p>
                        <strong>
                          Sq.<xsl:value-of select="./UNITNAME" />.
                        </strong>
                      </p>
                    </td>
                    <td align="center" valign="middle" rowspan="2"></td>
                    <td align="center" valign="middle">
                      <strong>
                        <xsl:value-of select="format-number($totalAmount,'$#,##0.00')"/>
                      </strong>
                    </td>
                  </tr>
                  <tr>
                    <td align="center" valign="middle">
                      <strong>US$ </strong>
                    </td>
                  </tr>
                  <tr>
                    <td align="left" colspan="8" valign="middle"></td>
                  </tr>
                  <tr>
                    <td align="left" colspan="8" valign="middle" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td align="left" colspan="8" valign="middle" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td align="left" colspan="8" valign="middle">
                      <p>
                        <strong>
                          Amount Chargeable                           <xsl:value-of select="myUtils:NumberToWords(number($totalAmount))" />                          Only.
                        </strong>
                      </p>
                      <p>
                        <strong>(in word) </strong>
                      </p>
                      <p></p>
                    </td>
                  </tr>
                  <xsl:variable name="exchangeRate" select="77.25" />
                  <xsl:variable name="totalPrice" select="number($exchangeRate*$totalAmount)" />
                  <xsl:variable name="IGST" select="number(./IGST)" />
                  <xsl:variable name="IGSTAmount" select="number($totalPrice*$IGST div 100)" />
                  <xsl:variable name="CGST" select="number(./CGST)" />
                  <xsl:variable name="CGSTAmount" select="number($totalPrice*$CGST div 100)" />
                  <xsl:variable name="SGST" select="number(./SGST)" />
                  <xsl:variable name="SGSTAmount" select="number($totalPrice*$SGST div 100)" />
                  <xsl:variable name="GrossAmount" select="number($totalPrice+$IGSTAmount +$CGSTAmount+$SGSTAmount)" />
                  <tr>
                    <td valign="top" class="noBorder"></td>
                    <td colspan="7" align="left" valign="top" class="noBorder">
                      <p>                        The undersigned forwarding / supplying of the goods mentioned in this invoice /                        documents herewith declare that                          </p>
                      <p>the goods are of Indian origin within the meaning of the rules in America.</p>
                    </td>
                  </tr>
                  <tr>
                    <td valign="top" colspan="2" class="noBorder"></td>
                    <td valign="top" colspan="6" class="noBorder">
                      <strong>NO CHILD LABOUR USED.</strong>
                    </td>
                  </tr>
                  <tr>
                    <td valign="top" class="noBorder">
                      <p>Declaration : </p>
                    </td>
                    <td valign="top" colspan="7" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td valign="top" class="noBorder" rowspan="5"></td>
                    <td valign="top" colspan="3" class="noBorder" rowspan="5">
                      <p>                        We declare that this invoice shows the actual price of the goods described and all                        particulars are true and correct                          </p>
                    </td>
                    <td valign="top" colspan="4" rowspan="5"></td>
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
  <xsl:template name="splitStringToItems">
    <xsl:param name="list" />
    <xsl:param name="delimiter" select="','"  />
    <xsl:variable name="_delimiter">
      <xsl:choose>
        <xsl:when test="string-length($delimiter)=0">,</xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$delimiter"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="newlist">
      <xsl:choose>
        <xsl:when test="contains($list, $_delimiter)">
          <xsl:value-of select="normalize-space($list)" />
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="concat(normalize-space($list), $_delimiter)"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="first" select="substring-before($newlist, $_delimiter)" />
    <xsl:variable name="remaining" select="substring-after($newlist, $_delimiter)" />
    <p>
      <xsl:value-of select="$first" />
    </p>
    <xsl:if test="$remaining">
      <xsl:call-template name="splitStringToItems">
        <xsl:with-param name="list" select="$remaining" />
        <xsl:with-param name="delimiter" select="$_delimiter" />
      </xsl:call-template>
    </xsl:if>
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
