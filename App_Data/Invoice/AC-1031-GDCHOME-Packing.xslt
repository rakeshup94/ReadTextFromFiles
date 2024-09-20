<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myUtils="pda:MyUtils">
  <!--<xsl:output method="xml" indent="yes" />-->
  <xsl:output method="html" indent="yes" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>DixieGroup Invoice</title>
        <style>            td {            padding: 5px;            }              .center {            text-align: center;            }              .left {            text-align: left;            }              .right {            text-align: right;            }              p {            margin-bottom: 5px;            margin-top: 0px;            }              .noBorder {            border: none !important;            }              .notop {            border-top: none !important;            }              .nobottom {            border-bottom: none !important;            }              .noLeft {            border-left: none !important;            }              .noRight {            border-right: none !important;            }                  .onlyRight {            border-top: none !important;            border-bottom: none !important;            border-left: none !important;            }              .onlyleft {            border-top: none !important;            border-bottom: none !important;            border-right: none !important;            }                </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="8" height="15px" style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px;                                  margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">                        PACKING LIST                      </h4>
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
                  <td valign="top" colspan="3">
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
                  <td valign="top" colspan="6" class="nobottom">
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
                  <td valign="top" colspan="6" class="notop"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="6" class="nobottom">
                    <p>
                      <strong>Other Reference(s) </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="6" class="notop"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>                          Consignee/Ship to :                        </strong>
                    </p>
                  </td>
                  <td valign="top" colspan="3" >
                    <p>
                      <strong>                          Buyer (If Other than Consignee)                        </strong>
                    </p>
                  </td>
                  <td valign="top" colspan="3">
                    <p>
                      <strong>                          Buyer (If Other than Consignee)  Notify                        </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" rowspan="7" colspan="2" >
                    <p>
                      <tconsignee>
                        <xsl:value-of select="./TCONSIGNEE" />
                      </tconsignee>
                    </p>
                  </td>
                  <td valign="top" colspan="3" class="onlyRight">
                    <p>
                      <tbuyeroconsignee>
                        <xsl:value-of select="./TBUYEROCONSIGNEE" />
                      </tbuyeroconsignee>
                    </p>
                  </td>
                  <td valign="top" colspan="3" class="nobottom">
                    <p>                      </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="3" class="onlyRight"></td>
                  <td valign="top" colspan="3" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="3" class="onlyRight"></td>
                  <td valign="top" colspan="3" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="3" class="onlyRight"></td>
                  <td valign="top" colspan="3" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="3" class="onlyRight"></td>
                  <td valign="top" colspan="3" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="3" class="onlyRight"></td>
                  <td valign="top" colspan="3" class="noBorder"></td>
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
                  <td valign="top" colspan="6" rowspan="3">
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
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />                          Rolls
                    </p>
                  </td>
                  <td colspan="6" valign="top">
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
                    <strong>BALE#</strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Total                        <br />                        Bales
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>                        DESCRIPTION                      </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>                        Design                      </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      SIZE                        <br />                        in                        <xsl:value-of select="./UNITNAME" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Quantity                                <br />                        No. of pcs
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Total                        <br />                        <xsl:value-of select="./UNITNAME" />                        2
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Pcs. /                            <br />                        Bale
                    </strong>
                  </td>
                </tr>
                <rolls>
                  <xsl:for-each select="./Rolls/RollItem">
                    <tr>
                      <td align="center" valign="middle" width="50">
                        <xsl:value-of select="RollNo" />
                      </td>
                      <td align="center" valign="middle" width="50">
                        <xsl:value-of select="TotalRoll" />
                      </td>
                      <td align="center" valign="middle" width="160">
                        <span>
                          <xsl:value-of select="ITEM_NAME" />
                        </span>
                        <span>
                          <xsl:value-of select="Quality" />
                        </span>
                      </td>
                      <td align="center" valign="middle" width="90">
                        <design>
                          <xsl:value-of select="DESIGN" />
                        </design>
                      </td>
                      <td align="center" valign="middle" width="70">
                      

                        <xsl:value-of select="concat(WIDTH,' X ',LENGTH)" />

                      </td>
                      <td align="center" valign="middle" width="60">
                        <xsl:value-of select="TotalPcs" />
                      </td>
                      <td align="center" valign="middle" width="70">
                        <area>
                          <xsl:value-of select="AREA" />
                        </area>
                      </td>
                      <td align="center" valign="middle" width="60">
                        <xsl:value-of select="RPcs" />
                      </td>
                    </tr>
                  </xsl:for-each>
                  <tr>
                    <td align="right" valign="middle" colspan="5">
                      <strong>                          Total                        </strong>
                    </td>
                    <td align="center" valign="middle" width="60">
                      <strong>
                        <xsl:value-of select="format-number(number(sum(././Rolls/RollItem/TotalPcs)),'#.##')" />
                      </strong>
                    </td>
                    <td align="center" valign="middle" width="70">
                      <strong>
                        <xsl:value-of select="format-number(number(sum(././Rolls/RollItem/AREA)),'#.##')" />
                      </strong>
                    </td>
                    <td align="center" valign="middle" width="80">
                      <strong>
                        <xsl:value-of select="format-number(number(sum(././Rolls/RollItem/RPcs)),'#.##')" />
                      </strong>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="8" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td colspan="8" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td colspan="8" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td colspan="4" class="noBorder"></td>
                    <td valign="top" colspan="4" rowspan="4"></td>
                  </tr>
                  <tr>
                    <td colspan="4" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td colspan="4" class="noBorder"></td>
                  </tr>
                  <tr>
                    <td colspan="4" class="noBorder"></td>
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
