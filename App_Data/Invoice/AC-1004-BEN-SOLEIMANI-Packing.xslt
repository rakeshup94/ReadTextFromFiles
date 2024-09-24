<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myutils="pda:MyUtils">
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem"        use="./CustomerOrderNo" />
  <xsl:output method="xml" indent="yes" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Emailer</title>
        <style>            td {            padding: 5px;            }              .center {            text-align: center;            }              .left {            text-align: left;            }              .right {            text-align: right;            }              p {            margin-bottom: 5px;            margin-top: 0px;            }              .noBorder {            border: none !important;            }              .notop {            border-top: none !important;            }              .nobottom {            border-bottom: none !important;            }              .noLeft {            border-left: none !important;            }              .noRight {            border-right: none !important;            }          </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table width="1000" border="1" align="center" cellpadding="0"                    cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="18"                        style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px;                          margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">                        Packing List                      </h4>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="8" rowspan="6">
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
                      <strong>Invoice No / Date: </strong>
                    </p>
                  </td>
                  <td valign="top" colspan="5"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="10">
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
                  <td valign="top" colspan="10">
                    <p>
                      <strong>Buyer's Order No </strong>:
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="10">
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
                  <td valign="top" colspan="10"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="10">
                    <p>
                      <strong>Other Reference(s) </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="8">
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
                  <td valign="top" colspan="10">
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
                  <td valign="top" colspan="4">
                    <p>
                      <strong>Pre-carriage by</strong>
                    </p>
                    <p>
                      <xsl:value-of select="./CARRIAGENAME" />
                    </p>
                  </td>
                  <td valign="top" colspan="4">
                    <p>
                      <strong>Place of Receipt by Pre-carrier</strong>
                    </p>
                    <p>
                      <receiptat>
                        <xsl:value-of select="./RECEIPTAT" />
                      </receiptat>
                    </p>
                  </td>
                  <td valign="top" colspan="10">
                    <p>
                      <strong class="left">                          Country of Orgin of                          Goods                        </strong>
                    </p>
                    <p>
                      <span class="right">INDIA</span>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="4">
                    <p>
                      <strong>Vessel/Flight No.</strong>
                    </p>
                    <p>
                      <vesselflightno>
                        <xsl:value-of select="./VESSELFLIGHTNO" />
                      </vesselflightno>
                    </p>
                  </td>
                  <td valign="top" colspan="4">
                    <p>
                      <strong>Port of Loading</strong>
                    </p>
                    <p>
                      <portofloading>
                        <xsl:value-of select="./PORTOFLOADING" />
                      </portofloading>
                    </p>
                  </td>
                  <td valign="top" colspan="10">
                    <p>
                      <strong class="left">Country of final Destination</strong>
                    </p>
                    <p>
                      <span class="right">
                        <customercountryname>
                          <xsl:value-of select="./FINALDESTINATION" />
                        </customercountryname>
                      </span>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="4">
                    <p>
                      <strong>Port of Discharge</strong>
                    </p>
                    <p>
                      <portofdischarge>
                        <xsl:value-of select="./PORTOFDISCHARGE" />
                      </portofdischarge>
                    </p>
                  </td>
                  <td valign="top" colspan="4">
                    <p>
                      <strong>Final Destination</strong>
                    </p>
                    <p>
                      <finaldestination>
                        <xsl:value-of select="./FINALDESTINATION" />
                      </finaldestination>
                    </p>
                  </td>
                  <td valign="top" colspan="10">
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
                  <td valign="top" colspan="18"></td>
                </tr>
                <tr>
                  <td valign="middle" rowspan="2">
                    Roll/<br />                      CARTON No.
                  </td>
                  <td valign="middle" rowspan="2">                      VSN                    </td>
                  <td valign="middle" rowspan="2">                      RH SKU                    </td>
                  <td valign="middle" rowspan="2">                      ITEM NO.                    </td>
                  <td valign="middle" rowspan="2">                      PO#                    </td>
                  <td valign="middle" rowspan="2">                      DESCRIPTION                    </td>
                  <td valign="middle" rowspan="2">                      Pcs                    </td>
                  <td valign="middle" rowspan="2">
                    Per Pc SQ. <xsl:value-of select="./UNITNAME" />
                  </td>
                  <td valign="middle" rowspan="2">                      COLOR                    </td>
                  <td valign="middle" rowspan="2">
                    SIZE IN <xsl:value-of select="./UNITNAME" />.INCH
                  </td>
                  <td valign="middle" rowspan="2">                      Roll#                    </td>
                  <td valign="middle" rowspan="2">                      DC                    </td>
                  <td valign="middle" rowspan="2">
                    TOTAL SQ <xsl:value-of select="./UNITNAME" />
                  </td>
                  <td valign="middle" rowspan="2">                      WEIGHT                    </td>
                  <td valign="middle" colspan="3">Dimention in Cms</td>
                  <td valign="middle" rowspan="2">                      CBM PER BALE                    </td>
                </tr>
                <tr>
                  <td valign="middle">L</td>
                  <td valign="middle">W</td>
                  <td valign="middle">H</td>
                </tr>
                <rolls>
                  <xsl:for-each select="./Rolls/RollItem[generate-id()  = generate-id(key('groupByContainer', ./CustomerOrderNo)[1])]">
                    <rollitem>
                      <xsl:variable name="vGroup" select="key('groupByContainer',  ./CustomerOrderNo)" />
                      <tr>
                        <td></td>
                        <td></td>
                        <td valign="top" colspan="4">
                          <p>
                            <strong>
                              <xsl:value-of select="ITEM_NAME" />                                ,                                <quality>
                                <xsl:value-of select="Quality" />
                              </quality>                                :                                <composition>
                                <xsl:value-of select="./Composition" />
                              </composition>
                            </strong>
                          </p>
                        </td>
                        <td valign="top"></td>
                        <td valign="top"></td>
                        <td valign="top"></td>
                        <td valign="top"></td>
                        <td valign="top"></td>
                        <td valign="top"></td>
                        <td valign="top"></td>
                        <td valign="top"></td>
                        <td valign="top"></td>
                        <td valign="top"></td>
                        <td valign="top"></td>
                        <td valign="top"></td>
                      </tr>
                      <xsl:for-each select="$vGroup">
                        <tr>
                          <td valign="top" width="40">
                            <rollno>
                              <xsl:value-of select="RollNo" />
                            </rollno>
                          </td>
                          <td valign="top" width="70">
                            <xsl:value-of select="DESIGN" />                        </td>
                          <td valign="top" width="70">
                            <xsl:value-of select="SKUNO" />
                          </td>
                          <td valign="top" width="35">
                                      <xsl:value-of select="ITEM_ID" />            </td>
                          <td valign="top" width="45">
                            <customerorderno>
                              <xsl:value-of select="CustomerOrderNo" />
                            </customerorderno>
                          </td>
                          <td valign="top" width="80">
                            <description>
                              <xsl:value-of select="StyleNo" />
                            </description>
                          </td>
                          <td valign="top" width="35">
                            <pcs>
                              <xsl:value-of select="TotalPcs" />
                            </pcs>
                          </td>
                          <td valign="top" width="35">
                            <areaft>
                              <xsl:value-of select="format-number(AREA div TotalPcs,'###.##')" />
                            </areaft>
                          </td>
                          <td valign="top" width="50">
                            <color>
                              <xsl:value-of select="COLOR" />
                            </color>
                          </td>
                          <td valign="top" width="55">
                            <xsl:value-of select="concat(WIDTH,' X ',LENGTH)" />
                          </td>
                          <td valign="top" width="35">
                            <rollno>
                              <xsl:value-of select="RollNo" />
                            </rollno>
                          </td>
                          <td valign="top" width="65">                            </td>
                          <td valign="top" width="50">
                            <areaft>
                              <xsl:value-of select="AREA" />
                            </areaft>
                          </td>
                          <td valign="top" width="45">
                            <singlepcsnetwt>
                              <xsl:value-of select="format-number(SinglePcsNetWt*TotalPcs,'###.##')" />
                            </singlepcsnetwt>
                          </td>
                          <td valign="top" width="25">
                            <l>
                              <xsl:value-of select="L" />
                            </l>
                          </td>
                          <td valign="top" width="25">
                            <w>
                              <xsl:value-of select="W" />
                            </w>
                          </td>
                          <td valign="top" width="25">
                            <h>
                              <xsl:value-of select="H" />
                            </h>
                          </td>
                          <td valign="top" width="45">
                            <cbm>
                              <xsl:value-of select="CBM" />
                            </cbm>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </rollitem>
                  </xsl:for-each>
                </rolls>
                <xsl:variable name="totaWeight" >
                  <xsl:call-template name="sumWeight">
                    <xsl:with-param name="pList" select="./Rolls/RollItem"/>
                  </xsl:call-template>
                </xsl:variable>
                <tr>
                  <td valign="top" colspan="5">
                    <strong>
                      TOTAL ROLLS =                        <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />                        ROLLS
                    </strong>
                  </td>
                  <td valign="top"></td>
                  <td valign="top">
                    <xsl:value-of select="number(sum(././Rolls/RollItem/PCS))" />
                  </td>
                  <td valign="top">                    </td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top">
                    <xsl:value-of select="format-number(sum(././Rolls/RollItem/AREA),'###.##')" />
                  </td>
                  <td valign="top">
                    <xsl:value-of select="format-number($totaWeight,'###.##')" />
                  </td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top">
                    <xsl:value-of select="format-number(sum(././Rolls/RollItem/CBM),'###.##')" />
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="5">
                    <p>
                      <strong>
                        Gross Weight :                          <grosswt>
                          <xsl:value-of select="format-number($totaWeight,'###.##')" />
                        </grosswt>                          KGS
                      </strong>
                    </p>
                  </td>
                  <td colspan="13" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="5">
                    <p>
                      <strong>
                        TOTAL CBM:                          <cbm>
                          <xsl:value-of select="format-number(sum(././Rolls/RollItem/CBM),'###.##')" />
                        </cbm>                          CBM
                      </strong>
                    </p>
                  </td>
                  <td colspan="13" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="18" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="18" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="18" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="18" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="18" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="13" class="noBorder"></td>
                  <td valign="top" colspan="5" rowspan="5"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="13" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="13" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="13" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="13" class="noBorder"></td>
                </tr>
              </table>
            </invoiceitem>
          </xsl:for-each>
        </invoicelist>
        <invoicelist>          </invoicelist>
      </body>
    </html>
  </xsl:template>
  <xsl:template name="sumWeight">
    <xsl:param name="pList"/>
    <xsl:param name="pAccum" select="0"/>
    <xsl:choose>
      <xsl:when test="$pList">
        <xsl:variable name="vHead" select="$pList[1]"/>
        <xsl:call-template name="sumWeight">
          <xsl:with-param name="pList" select="$pList[position() > 1]"/>
          <xsl:with-param name="pAccum" select="$pAccum + $vHead//SinglePcsNetWt * $vHead//TotalPcs"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="$pAccum"/>
      </xsl:otherwise>
    </xsl:choose>
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
</xsl:stylesheet>
