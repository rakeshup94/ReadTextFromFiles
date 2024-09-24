<xsl:stylesheet version="2.0" xmlns:myUtils="pda:MyUtils"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns="urn:schemas-microsoft-com:office:spreadsheet"  xmlns:o="urn:schemas-microsoft-com:office:office"  xmlns:x="urn:schemas-microsoft-com:office:excel"  xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"  xmlns:html="http://www.w3.org/TR/REC-html40"  >
  <xsl:output method="xml" indent="yes"/>
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="concat(./Quality,./CustomerOrderNo,./StyleNo, ./ITEM_NAME)" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>PACKING LIST</title>
        <style>                td {            padding: 5px;            text-align: left;            vertical-align:top;              }            .center {            text-align: center;            }              .left {            text-align: left;            }              .right {            text-align: right;              }              p {            margin-bottom: 5px;            margin-top: 0px;            }              .noBorder {            border: none !important;            }              .notop {            border-top: none !important;            }            .nobottom {            border-bottom: none !important;            }              .noLeft {            border-left: none !important;            }            .noRight {            border-right: none !important;            }          </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table  border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="9" height="15px" style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px;                            margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">                        PACKING LIST                      </h4>
                  </td>
                </tr>
                <tr>
                  <td colspan="2" rowspan="6">
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
                  <td  colspan="3">
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
                  <td colspan="4">
                    <p>Exporter's Ref:</p>
                  </td>
                </tr>
                <tr>
                  <td colspan="7" class="nobottom">
                    <p>                        Buyer's Order No. Date :                      </p>
                  </td>
                </tr>
                <tr>
                  <td colspan="7" class="notop">
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
                  <td colspan="7" class="nobottom">
                    <p>Other Reference (s)</p>
                  </td>
                </tr>
                <tr>
                  <td colspan="7" class="noBorder">
                    <p></p>
                  </td>
                </tr>
                <tr>
                  <td colspan="7" class="notop">
                    <p></p>
                  </td>
                </tr>
                <tr>
                  <td colspan="2" rowspan="2">
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
                  <td colspan="7">
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
                  <td colspan="3">
                    <p>                        Country of Origin of Goods                      </p>
                    <p>
                      <strong>                          INDIA                        </strong>
                    </p>
                  </td>
                  <td colspan="4">
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
                  <td >
                    <p>Place of receipt by Pre-carrier</p>
                    <p>
                      <strong>
                        <xsl:value-of select="./RECEIPTAT" />
                      </strong>
                    </p>
                  </td>
                  <td colspan="7" rowspan="3" >
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
                  <td >
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
                  <td >
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
                  <td >No.   Kinds of Pkgs</td>
                  <td colspan="7" rowspan="2">
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
                  <td >
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
                      <strong>Roll No#</strong>
                    </p>
                  </td>
                  <td>
                    <p>
                      <strong>Rug #</strong>
                    </p>
                  </td>
                  <td>
                    <p>
                      <strong>Design</strong>
                    </p>
                  </td>
                  <td>
                    <p>
                      <strong>Collection</strong>
                    </p>
                  </td>
                  <td>
                    <p>
                      <strong>
                        Size                <br/>                          ( in <xsl:value-of select="./UNITNAME" /> . )
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
                        Area <br/>(Sq.<xsl:value-of select="./UNITNAME" />)
                      </strong>
                    </p>
                  </td>
                  <td>
                    <p>
                      <strong>
                        Area <br/>(Sq.Mt.)
                      </strong>
                    </p>
                  </td>
                  <td>
                    <p>
                      <strong>
                        No. of Pcs                          <br/>                          per Bale
                      </strong>
                    </p>
                  </td>
                </tr>
                <rolls>
                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', concat(./Quality,./CustomerOrderNo,./StyleNo, ./ITEM_NAME))[1])]">
                    <rollitem>
                      <xsl:variable name="vGroup" select="key('groupByContainer', concat(./Quality,./CustomerOrderNo,./StyleNo, ./ITEM_NAME))" />
                      <xsl:variable name="areaFt" select='format-number(sum($vGroup/AreaFT), "###.##")' />
                      <xsl:variable name="price" select="PRICE" />
                      <tr>
                        <td align="center" valign="middle">
                          <p>
                            <strong>
                              PO#                                <customerorderno>
                                <xsl:value-of select="CustomerOrderNo" />
                              </customerorderno>
                            </strong>
                          </p>
                        </td>
                        <td align="center" valign="middle" colspan="5">
                          <p>
                            <strong>
                              <xsl:value-of select="ITEM_NAME" />,                                <quality>
                                <xsl:value-of select="Quality" />
                              </quality>                              :    :                                <composition>
                                <xsl:value-of select="./Composition" />
                              </composition>
                            </strong>
                          </p>
                        </td>
                        <td align="center" valign="middle"></td>
                        <td align="center" valign="middle"></td>
                        <td align="center" valign="middle"></td>
                      </tr>
                      <xsl:for-each select="$vGroup">
                        <tr>
                          <td align="center" valign="middle" width="100">
                            <rollfrom>
                              <xsl:value-of select="RollNo" />
                            </rollfrom>
                          </td>
                          <td align="center" valign="middle" width="110">
                            <RugId>
                              <xsl:value-of select="RugId" />
                            </RugId>
                          </td>
                          <td align="center" valign="middle" width="65">
                            <DesignName>
                              <xsl:value-of select="DesignName" />
                            </DesignName>
                          </td>
                          <td align="center" valign="middle" width="65">
                            <COLOR>
                              <xsl:value-of select="StyleNo" />
                            </COLOR>
                          </td>
                          <td align="center" valign="middle" width="75">
                            <xsl:value-of select="concat(WIDTH,' X ',LENGTH)" />
                          </td>
                          <td align="center" valign="middle" width="65">
                            <TotalPcs>
                              <xsl:value-of  select='format-number(sum($vGroup/TotalPcs), "###.##")' />
                            </TotalPcs>
                          </td>
                          <td align="center" valign="middle" width="65">
                            <AREA>
                          
                              <xsl:value-of  select='format-number(sum($vGroup/AREA), "###.##")' />
                            </AREA>
                          </td>
                          <td align="center" valign="middle" width="65">
                            <AREAMT>
                       

                              <xsl:value-of  select='format-number(sum($vGroup/AREAMT), "###.##")' />
                            </AREAMT>
                          </td>
                          <td align="center" valign="middle" width="65">
                            <RPcs>
                              <xsl:value-of select="RPcs" />
                            </RPcs>
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
                  <td>
                    <strong>Total: </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalPcs))" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="format-number(sum(././Rolls/RollItem/AREA),'###.##')" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <xsl:value-of select="format-number(sum(././Rolls/RollItem/AREAMT),'###.##')" />
                  </td>
                  <td align="center" valign="middle">                                         </td>
                </tr>
                <tr>
                  <td colspan="9" class="noBorder"></td>
                </tr>
                <tr>
                  <td colspan="9" class="noBorder"></td>
                </tr>
                <tr>
                  <td colspan="9" class="noBorder"></td>
                </tr>
              </table>
            </invoiceitem>
          </xsl:for-each>
        </invoicelist>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
