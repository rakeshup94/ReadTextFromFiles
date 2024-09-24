<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myUtils="pda:MyUtils">
  <xsl:output method="xml" indent="yes"/>
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="concat(./Quality,./CustomerOrderNo)" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Emailer</title>
        <style>       table {       border: 1px solid #ccc;       }         td {       padding: 5px;       }         p {       margin-bottom: 5px;       margin-top: 0px;       }         .noBorder {       border: none !important;       }           .notopBorder {       border: none !important;       }           .notop {       border-top: none !important;       }       .nobottom {       border-bottom: none !important;       }           .auto-style1 {       height: 35px;       }          </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table width="700" border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="8" height="15px" style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">PACKING LIST                   </h4>
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
                    <p>
                      <strong>              Exporter :             </strong>
                    </p>
                  </td>
                  <td colspan="4" >
                    <p>
                      <strong>Invoice No: </strong>
                      <tinvoiceno>
                        <xsl:value-of select="./TINVOICENO" />
                      </tinvoiceno>
                    </p>
                  </td>
                  <td colspan="2">
                    <p>Exporter's Ref:</p>
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
                    <p>
                      <companyname>
                        <xsl:value-of select="./COMPANYNAME" />
                      </companyname>
                    </p>
                  </td>
                  <td colspan="4">
                    <p>
                      Date.             <invoicedate>
                        <xsl:value-of select="./INVOICEDATE" />
                      </invoicedate>
                    </p>
                  </td>
                  <td colspan="2"></td>
                </tr>
                <tr>
                  <td colspan="2">
                    <p>
                      <compaddr1>
                        <xsl:value-of select="./COMPADDR1" />
                      </compaddr1>
                    </p>
                  </td>
                  <td colspan="2">Buyer's Order No. Date :</td>
                  <td colspan="4">
                    <xsl:for-each select="./BuyerOrderNo/Buyer">
                      <xsl:value-of select="@OrderNo" />,
                    </xsl:for-each>
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
                    <p>
                      <compaddr2>
                        <xsl:value-of select="./COMPADDR2" />
                      </compaddr2>
                    </p>
                  </td>
                  <td colspan="2">
                    <p>
                      <strong>
                        <customerorderno>
                          <xsl:value-of select="CustomerOrderNo"/>
                        </customerorderno>
                      </strong>
                    </p>
                  </td>
                  <td colspan="4"></td>
                </tr>
                <tr>
                  <td colspan="2">
                    <p>
                      <compaddr3>
                        <xsl:value-of select="./COMPADDR3" />
                      </compaddr3>
                    </p>
                  </td>
                  <td colspan="6">
                    <p>Other Reference (s)</p>
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
                    <p>
                      <COMPTEL>
                        <xsl:value-of select="./COMPTEL" />
                      </COMPTEL>,
                    </p>
                  </td>
                  <td colspan="6"></td>
                </tr>
                <tr>
                  <td colspan="2">
                    <p>Consignee</p>
                  </td>
                  <th colspan="3">
                    <p>
                      <strong>              Buyer(if other than c'nee)Notify             </strong>
                    </p>
                  </th>
                  <td colspan="3"></td>
                </tr>
                <tr>
                  <td colspan="2">
                    <p>
                      <tconsignee>
                        <xsl:value-of select="./TCONSIGNEE" />
                      </tconsignee>
                    </p>
                  </td>
                  <td colspan="3">
                    <p>
                      <tbuyeroconsignee>
                        <xsl:value-of select="./TBUYEROCONSIGNEE" />
                      </tbuyeroconsignee>
                    </p>
                  </td>
                  <td colspan="3">
                    <!--<notify>                            <xsl:value-of select="NOTIFYPARTY_ADDRESS"/>                          </notify> -->
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
                    <p>
                      <compfax>
                        <xsl:value-of select="./COMPFAX" />
                      </compfax>
                    </p>
                  </td>
                  <td colspan="3">
                    <p>
                      <compfax>
                        <xsl:value-of select="./COMPFAX" />
                      </compfax>
                    </p>
                  </td>
                  <td colspan="3"></td>
                </tr>
                <tr>
                  <td colspan="2"></td>
                  <td colspan="2">Country of Origin of Goods</td>
                  <td></td>
                  <td colspan="3">Country of final destination</td>
                </tr>
                <tr>
                  <td colspan="2"></td>
                  <td colspan="3">
                    <p>             INDIA            </p>
                  </td>
                  <td colspan="3">
                    <p>
                      <customercountryname>
                        <xsl:value-of select="./FINALDESTINATION" />
                      </customercountryname>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>Pre-carriage by</td>
                  <td >Place of receipt by Pre-carrier</td>
                  <td colspan="3">Terms of Delivery and payment</td>
                  <td colspan="3"></td>
                </tr>
                <tr>
                  <td></td>
                  <td>
                    <p>
                      <receiptat>
                        <xsl:value-of select="./RECEIPTAT" />
                      </receiptat>
                    </p>
                  </td>
                  <td colspan="6"></td>
                </tr>
                <tr>
                  <td>Vessel/Flight No.</td>
                  <td>Port of Loading</td>
                  <td colspan="2"></td>
                  <th>
                    <p>
                      <strong>F.O.B</strong>
                    </p>
                  </th>
                  <td colspan="3"></td>
                </tr>
                <tr>
                  <td>
                    <p>
                      <vesselflightno>
                        <xsl:value-of select="./VESSELFLIGHTNO" />
                      </vesselflightno>
                    </p>
                  </td>
                  <td >
                    <p>
                      <portofloading>
                        <xsl:value-of select="./PORTOFLOADING" />
                      </portofloading>
                    </p>
                  </td>
                  <td colspan="6" align="center">
                    <p>
                      <strong>30% Advance  70% Against TELEX RELEASE OF BL</strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>Port of Discharge</td>
                  <td>Final Destination</td>
                  <td colspan="6"></td>
                </tr>
                <tr>
                  <td>
                    <p>
                      <portofdischarge>
                        <xsl:value-of select="./PORTOFDISCHARGE" />
                      </portofdischarge>
                    </p>
                  </td>
                  <td >
                    <p>
                      <customercountryname>
                        <xsl:value-of select="./FINALDESTINATION" />
                      </customercountryname>
                    </p>
                  </td>
                  <td colspan="6"></td>
                </tr>
                <tr>
                  <td>Marks    Nos./</td>
                  <td>No.   Kinds of Pkgs</td>
                  <td colspan="2">Description of Goods</td>
                  <td colspan="4"></td>
                </tr>
                <tr>
                  <td>Container No.</td>
                  <td></td>
                  <th colspan="6"   rowspan="3">
                    <descriptionofgoods>
                      <xsl:value-of select="./DescriptionOfGoods" />
                    </descriptionofgoods>
                  </th>
                </tr>
                <tr>
                  <td></td>
                  <th>
                    <p>
                      <strong>
                        <xsl:for-each select="./Rolls/RollItem">
                          <xsl:if test="position() = 1">
                            <xsl:value-of select="Rollfrom" />-
                          </xsl:if>
                          <xsl:if test="position() = last()">
                            <xsl:value-of select="RollTo" />
                          </xsl:if>
                        </xsl:for-each>
                      </strong>
                    </p>
                  </th>
                </tr>
                <tr>
                  <th>
                    <p>
                      <strong>
                        <p>
                          <rollmark>
                            <xsl:value-of select="./RollMark" />
                          </rollmark>
                        </p>
                      </strong>
                    </p>
                  </th>
                  <th>
                    <p>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />             Carton
                    </p>
                  </th>
                </tr>
                <tr>
                  <th  >
                    <p>
                      <strong>
                        <p>
                          <Strong>
                            <containerno>
                              <xsl:value-of select="./Containerno"/>
                            </containerno>
                          </Strong>
                        </p>
                      </strong>
                    </p>
                  </th>
                  <td></td>
                  <td colspan="6" align="center">(Floorcovering)</td>
                </tr>
                <tr>
                  <th>
                    <p>
                      <strong>
                        Po# / <br/>              Carton#
                      </strong>
                    </p>
                  </th>
                  <th colspan="3">
                    <p>
                      <strong>DESCRIPTION</strong>
                    </p>
                  </th>
                  <th>
                    <p>
                      <strong>
                        Size<br/>              (in <xsl:value-of select="./UNITNAME" />.)
                      </strong>
                    </p>
                  </th>
                  <th>
                    <p>
                      <strong>Quantity No. of Pcs</strong>
                    </p>
                  </th>
                  <th>
                    <p>
                      <strong>
                        Pcs/ <br/> Carton
                      </strong>
                    </p>
                  </th>
                  <th>
                    <p>
                      <strong>
                        Area<br/>Sq <xsl:value-of select="./UNITNAME" />.
                      </strong>
                    </p>
                  </th>
                </tr>
                <rolls>
                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', concat(./Quality,./CustomerOrderNo))[1])]">
                    <rollitem>
                      <xsl:variable name="vGroup" select="key('groupByContainer', concat(./Quality,./CustomerOrderNo))" />
                      <xsl:if test="position()=1">
                        <td colspan="4">
                          <p>
                            <strong>
                              <itemname>
                                <xsl:value-of select="ITEM_NAME"/>
                              </itemname>
                              <quality>
                                <xsl:value-of select="Quality"/>
                              </quality>
                              <composition>
                                <xsl:value-of select="composition"/>
                              </composition>
                            </strong>
                          </p>
                        </td>
                        <td colspan="4"></td>
                      </xsl:if>
                      <tr>
                        <td align="center" valign="middle">
                          <xsl:value-of select="CustomerOrderNo" /> /   <xsl:value-of select="RollNo" />
                        </td>
                        <td align="center" valign="middle" colspan="3">
                          <ean>
                            <xsl:value-of select="EAN" />
                          </ean>,               <color>
                            <xsl:value-of select="COLOR" />
                          </color>,               <design>
                            <xsl:value-of select="DESIGN"/>
                          </design>
                        </td>
                        <td align="center" valign="middle">
                          <xsl:value-of select="concat(WIDTH,' X ',LENGTH)" />
                        </td>
                        <td align="center" valign="middle">
                          <psc>
                            <xsl:value-of select="sum($vGroup/TotalPcs)" />
                          </psc>
                        </td>
                        <td align="center" valign="middle">
                          <psc>
                            <xsl:value-of select="RPcs" />
                          </psc>
                        </td>
                        <td align="center" valign="middle">
                          <areamtr>
                            <xsl:value-of select="sum($vGroup/AREA)"/>
                          </areamtr>
                        </td>
                      </tr>
                    </rollitem>
                  </xsl:for-each>
                </rolls>
                <tr>
                  <td></td>
                  <td colspan="3" align="center" valign="middle">
                    <strong>Total: </strong>
                  </td>
                  <td align="center" valign="middle">                       </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="format-number(number(sum(././Rolls/RollItem/TotalPcs)),'#.##')" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">                       </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="format-number(number(sum(././Rolls/RollItem/AREA)),'#.##')" />
                    </strong>
                  </td>
                </tr>
              </table>
            </invoiceitem>
          </xsl:for-each>
        </invoicelist>
        <invoicelist>      </invoicelist>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
