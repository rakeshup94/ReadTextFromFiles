<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myUtils="pda:MyUtils">
  <xsl:output method="xml" indent="yes" />
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="concat(./Quality,./CustomerOrderNo)" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Emailer</title>
        <style>            table {            border: 1px solid #ccc;            }              td {            padding: 5px;            }              p {            margin-bottom: 5px;            margin-top: 0px;            }              .noBorder {            border: none !important;            }          </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table width="700" border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="8" height="15px" style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">PACKING LIST                        </h4>
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
                  <td valign="top" colspan="3">                      Exporter's Ref :                    </td>
                </tr>
                <tr>
                  <td valign="top" colspan="5">
                    <p>
                      Buyer's Order No. Date :                        <totorder>
                        <xsl:value-of select="./totorder" />
                      </totorder>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="5">
                    <p>Other Reference(s) </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="3">
                    <p>
                      <strong>                          Consignee/Ship to :                        </strong>
                    </p>
                  </td>
                  <td valign="top" colspan="5" rowspan="2">
                    <p>
                      <strong>FOR INSPECTION </strong>
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
                  <td valign="top" colspan="3">
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
                  <td valign="top" colspan="5" rowspan="3">
                    <p>
                      <strong>                          Terms of Delivery and Payment                        </strong>
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
                        Marks  &amp; Nos./                          <br />                          Container No.
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
                            <xsl:value-of select="Rollfrom" />                              to
                          </xsl:if>
                          <xsl:if test="position() = last()">
                            <xsl:value-of select="RollTo" />
                          </xsl:if>
                        </xsl:for-each>
                      </strong>
                    </p>
                    <p>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />                          Bales
                    </p>
                  </td>
                  <td colspan="5" valign="top">
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
                  <td align="center" valign="middle" colspan="2">
                    <strong>
                      Po# /<br />                        Bale No.
                    </strong>
                  </td>
                  <td align="center" valign="middle" colspan="2">
                    <strong>                        Description                      </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Size                        <br />                        (in CM.)
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Quantity                        <br />                        No. of Pieces
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      PCS                        <br />                        Roll
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Area                        <br />                        Sqm.
                    </strong>
                  </td>
                </tr>
                <rolls>
                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', concat(./Quality,./CustomerOrderNo))[1])]">
                    <rollitem>
                      <xsl:variable name="vGroup" select="key('groupByContainer', concat(./Quality,./CustomerOrderNo))" />
                      <tr>
                        <td valign="top" colspan="8">
                          <p>
                            <strong>
                              PO#<customerorderno>
                                <xsl:value-of select="CustomerOrderNo" />
                              </customerorderno>
                            </strong>
                            <strong>
                              <quality>
                                <xsl:value-of select="Quality" />
                              </quality>                                :                                    <composition>
                                <xsl:value-of select="./Composition" />
                              </composition>
                            </strong>
                          </p>
                        </td>
                      </tr>
                      <xsl:for-each select="$vGroup">
                        <tr>
                          <td align="center" valign="middle" width="150" colspan="2">
                            <rollfrom>
                              <xsl:value-of select="Rollfrom" />
                            </rollfrom>                              -                              <rollto>
                              <xsl:value-of select="RollTo" />
                            </rollto>
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
                            <sizemtr>
                              <xsl:value-of select="SizeMtr" />
                            </sizemtr>
                          </td>
                          <td align="center" valign="middle" width="70">
                            <PCS>
                              <xsl:value-of select="PCS" />
                            </PCS>
                          </td>
                          <td align="center" valign="middle" width="70">
                            <rpcs>
                              <xsl:value-of select="RPcs" />
                            </rpcs>
                          </td>
                          <td align="center" valign="middle"  width="70">
                            <areamtr>
                              <xsl:value-of select="AreaMtr" />
                            </areamtr>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </rollitem>
                  </xsl:for-each>
                </rolls>
                <tr>
                  <td colspan="4" align="center" valign="middle"></td>
                  <td align="center" valign="middle">
                    <strong>                        TOTAL                        </strong>
                  </td>
                  <td valign="top">
                    <xsl:value-of select="number(sum(././Rolls/RollItem/PCS))" />
                  </td>
                  <td align="center" valign="middle"></td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/AreaMtr))" />
                    </strong>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="8" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="8" class="noBorder"></td>
                </tr>
              </table>
            </invoiceitem>
          </xsl:for-each>
        </invoicelist>
        <invoicelist>          </invoicelist>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
