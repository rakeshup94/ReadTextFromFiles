<xsl:stylesheet version="2.0" xmlns:myUtils="pda:MyUtils"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns="urn:schemas-microsoft-com:office:spreadsheet"  xmlns:o="urn:schemas-microsoft-com:office:office"  xmlns:x="urn:schemas-microsoft-com:office:excel"  xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"  xmlns:html="http://www.w3.org/TR/REC-html40"  >
  <xsl:output method="xml" indent="yes"/>
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="concat(./Quality,./CustomerOrderNo,./StyleNo, ./ITEM_NAME)" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Emailer</title>
        <style>                td {            padding: 5px;            text-align: left;            vertical-align:top;              }            .center {            text-align: center;            }              .left {            text-align: left;            }              .right {            text-align: right;              }              p {            margin-bottom: 5px;            margin-top: 0px;            }              .noBorder {            border: none !important;            }              .notop {            border-top: none !important;            }            .nobottom {            border-bottom: none !important;            }              .noLeft {            border-left: none !important;            }            .noRight {            border-right: none !important;            }          </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table  border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="7" height="15px" style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px;                            margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">                        Invoice                      </h4>
                  </td>
                </tr>
                <tr>
                  <td colspan="3" rowspan="6">
                    <p>
                      <strong>                          Exporter :                        </strong>
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
                    </p>
                    <p>
                      <compaddr2>
                        <xsl:value-of select="./COMPADDR2" />
                      </compaddr2>
                    </p>
                    <p>
                      <compaddr3>
                        <xsl:value-of select="./COMPADDR3" />
                      </compaddr3>
                    </p>
                  </td>
                  <td  colspan="2">
                    <p>
                      <strong>Invoice No: </strong>
                      <tinvoiceno>
                        <xsl:value-of select="./TINVOICENO" />
                      </tinvoiceno>
                    </p>
                    <p>
                      Date. <invoicedate>
                        <xsl:value-of select="./INVOICEDATE" />
                      </invoicedate>
                    </p>
                  </td>
                  <td colspan="2">
                    <p>Exporter's Ref:</p>
                  </td>
                </tr>
                <tr>
                  <td colspan="4" class="nobottom">
                    <p>                        Buyer's Order No. Date :                      </p>
                  </td>
                </tr>
                <tr>
                  <td colspan="4" class="notop">
                    <p>
                      <strong>
                        <xsl:for-each select="./BuyerOrderNo/Buyer">
                          <xsl:value-of select="@OrderNo" />,
                        </xsl:for-each>
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td colspan="4" class="nobottom">
                    <p>Other Reference (s)</p>
                  </td>
                </tr>
                <tr>
                  <td colspan="4" class="noBorder">
                    <p></p>
                  </td>
                </tr>
                <tr>
                  <td colspan="4" class="notop">
                    <p></p>
                  </td>
                </tr>
                <tr>
                  <td colspan="3" rowspan="2">
                    <p>Consignee</p>
                    <p>
                      <strong>
                        <tconsignee>
                          <xsl:value-of select="./TCONSIGNEE" />
                        </tconsignee>
                      </strong>
                    </p>
                    <p>
                      <compfax>
                        <xsl:value-of select="./COMPFAX" />
                      </compfax>
                    </p>
                  </td>
                  <td colspan="4">
                    <p>
                      <strong>                          Buyer(if other than c'nee) Notify                        </strong>
                    </p>
                    <p>
                      <strong>
                        <tbuyeroconsignee>
                          <xsl:value-of select="./TBUYEROCONSIGNEE" />
                        </tbuyeroconsignee>
                      </strong>
                    </p>
                    <p>
                      <compfax>
                        <xsl:value-of select="./COMPFAX" />
                      </compfax>
                    </p>
                    <p></p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <p>                        Country of Origin of Goods                      </p>
                    <p>
                      <strong>                          INDIA                        </strong>
                    </p>
                  </td>
                  <td colspan="3">
                    <p>Country of final destination  </p>
                    <p>
                      <strong>
                        <customercountryname>
                          <xsl:value-of select="./FINALDESTINATION" />
                        </customercountryname>
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <p>Pre-carriage by</p>
                    <p>
                      <strong>
                        <xsl:value-of select="./CARRIAGENAME" />
                      </strong>
                    </p>
                  </td>
                  <td colspan="2">
                    <p>Place of receipt by Pre-carrier</p>
                    <p>
                      <strong>
                        <xsl:value-of select="./RECEIPTAT" />
                      </strong>
                    </p>
                  </td>
                  <td colspan="4" rowspan="3" >
                    <p>Terms of Delivery and payment</p>
                    <p>
                      <strong>F.O.B</strong>
                    </p>
                    <p class="center">
                      <strong>
                        <xsl:value-of select="./PAYMENTMODE" />
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <p>Vessel/Flight No.</p>
                    <p>
                      <strong>
                        <vesselflightno>
                          <xsl:value-of select="./VESSELFLIGHTNO" />
                        </vesselflightno>
                      </strong>
                    </p>
                  </td>
                  <td colspan="2">
                    <p>Port of Loading</p>
                    <p>
                      <strong>
                        <portofloading>
                          <xsl:value-of select="./PORTOFLOADING" />
                        </portofloading>
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <p>Port of Discharge</p>
                    <p>
                      <strong>
                        <portofdischarge>
                          <xsl:value-of select="./PORTOFDISCHARGE" />
                        </portofdischarge>
                      </strong>
                    </p>
                  </td>
                  <td colspan="2">
                    <p>Final Destination</p>
                    <p>
                      <strong>
                        <customercountryname>
                          <xsl:value-of select="./FINALDESTINATION" />
                        </customercountryname>
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td rowspan="2">
                    Marks    Nos./<p>
                      <strong>
                        <rollmark>
                          <xsl:value-of select="./RollMark" />
                        </rollmark>
                      </strong>
                    </p>                      <p>
                      <strong>
                        <containerno>
                          <xsl:value-of select="./Containerno" />
                        </containerno>
                      </strong>
                    </p>
                  </td>
                  <td colspan="2">No.   Kinds of Pkgs</td>
                  <td colspan="4" rowspan="2">
                    <p>Description of Goods</p>
                    <p class="center">
                      <strong>
                        <DescriptionOfGoods>
                          <xsl:value-of select="./DescriptionOfGoods" />
                        </DescriptionOfGoods>
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
                    <p>
                      <strong>
                        Roll#  <xsl:for-each select="./Rolls/RollItem">
                          <xsl:if test="position() = 1">
                            <xsl:value-of select="Rollfrom" />                              -
                          </xsl:if>
                          <xsl:if test="position() = last()">
                            <xsl:value-of select="RollTo" />
                          </xsl:if>
                        </xsl:for-each>
                      </strong>,
                    </p>
                    <p>
                      <strong>
                        <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />                          Rolls
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td align="center">
                    <p>
                      <strong>PO#</strong>
                    </p>
                  </td>
                  <td>
                    <p>
                      <strong>DESCRIPTION</strong>
                    </p>
                  </td>
                  <td>
                    <p>
                      <strong>COLLECTION</strong>
                    </p>
                  </td>
                  <td>
                    <p>
                      <strong>
                        Area (Sq.<xsl:value-of select="./UNITNAME" />)
                      </strong>
                    </p>
                  </td>
                  <td>
                    <p>
                      <strong>PCS</strong>
                    </p>
                  </td>
                  <td>
                    <p>
                      <strong>
                        US$ <br/> Sq. <xsl:value-of select="./UNITNAME" />
                      </strong>
                    </p>
                  </td>
                  <td>
                    <p>
                      <strong>
                        US$                          <br />                          (FOB)
                      </strong>
                    </p>
                  </td>
                </tr>
                <rolls>
                  <xsl:variable name="totalAmount" select="format-number(sum(././Rolls/RollItem/TotalAmount),'###.00')" > </xsl:variable>
                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', concat(./Quality,./CustomerOrderNo,./StyleNo, ./ITEM_NAME))[1])]">
                    <rollitem>
                      <xsl:variable name="vGroup" select="key('groupByContainer', concat(./Quality,./CustomerOrderNo,./StyleNo, ./ITEM_NAME))" />
                      <xsl:variable name="rollArea" select='format-number(sum($vGroup/AREA), "###.##")' />
                      <xsl:variable name="price" select="PRICE" />
                      <tr>
                        <td align="center" valign="middle" width="95">
                          <customerorderno>
                            <xsl:value-of select="CustomerOrderNo" />
                          </customerorderno>
                        </td>
                        <td align="center" valign="middle" width="170">
                          <itemname>
                            <xsl:value-of select="ITEM_NAME" />
                            <xsl:value-of select="Quality" />
                          </itemname>
                        </td>
                        <td align="center" valign="middle" width="75">
                          <color>
                            <xsl:value-of select="StyleNo" />
                          </color>
                        </td>
                        <td align="center" valign="middle" width="120">
                          <areaft>
                            <xsl:value-of select="$rollArea" />
                          </areaft>
                        </td>
                        <td align="center" valign="middle" width="55">
                          <pcs>
                            <xsl:value-of select='format-number(sum($vGroup/TotalPcs), "###.##")' />
                          </pcs>
                        </td>
                        <td align="center" valign="middle" width="65">
                          <price>
                            <xsl:value-of select="$price" />
                          </price>
                        </td>
                        <td align="center" valign="middle" width="70">
                          <totalamount>
                            <xsl:value-of select='format-number(sum($vGroup/TotalAmount), "###.##")' />
                          </totalamount>
                        </td>
                      </tr>
                    </rollitem>
                  </xsl:for-each>
                  <tr>
                    <td></td>
                    <td></td>
                    <td>
                      <strong>Total </strong>
                    </td>
                    <td align="center" valign="middle">
                      <strong>
                        <xsl:value-of select="format-number(number(sum(././Rolls/RollItem/AREA)),'###.##')" />
                      </strong>
                    </td>
                    <td align="center" valign="middle">
                      <strong>
                        <xsl:value-of select="number(sum(././Rolls/RollItem/TotalPcs))" />
                      </strong>
                    </td>
                    <td align="center" valign="middle"></td>
                    <td align="center" valign="middle">
                      <strong>
                        <xsl:value-of select="format-number($totalAmount,'$#,##0.00')"/>
                      </strong>
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
                    <td colspan="7" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td colspan="7" align="left" class="noBorder">
                      <p>
                        <strong>
                          Amount in US$:                            <xsl:value-of select="myUtils:NumberToWords(number($totalAmount))" />                            Only.
                        </strong>
                      </p>
                      <p style="max-width:431px;">
                        Contents:                          <strong>
                          <xsl:value-of select="Composition" />
                        </strong>
                      </p>
                      <p>
                        Gross Wt.:                          <grosswt>
                          <xsl:value-of select="./GROSSWT" />
                        </grosswt>                          Kgs.  Net.Wt.:                          <netwt>
                          <xsl:value-of select="./NETWT" />
                        </netwt>                          Kgs.
                      </p>
                      <p>
                        <strong>
                          Total CBM :                            <cbm>
                            <xsl:value-of select="./CBM" />
                          </cbm>
                        </strong>
                      </p>
                      <p>
                        <strong>We Declare that No child Labour used in the above products</strong>
                      </p>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="7" class="noBorder">
                      <p>Declaration :</p>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="7" valign="middle" class="noBorder">
                      <p>1. We intend to claim rewards under rodtep Scheme</p>
                      <p>                          2. We abide by provisional of foreign exchange management Act regarding realization.                        </p>
                      <p>                          3. We declare that this invoice shows the actual price of the goods described and                          all particulars are true and correct                        </p>
                    </td>
                  </tr>
                </rolls>
              </table>
            </invoiceitem>
          </xsl:for-each>
        </invoicelist>
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
