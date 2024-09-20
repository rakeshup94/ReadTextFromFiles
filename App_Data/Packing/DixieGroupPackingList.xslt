<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myUtils="pda:MyUtils">
  <!--<xsl:output method="xml" indent="yes" />-->
  <xsl:output method="html" indent="yes" />
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="concat(./Quality,./CustomerOrderNo)" />
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
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">INVOICE                      </h4>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2" rowspan="3">
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
                  </td>
                  <td valign="top" colspan="3">
                    <p>
                      <strong>Invoice No . </strong>
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
                  <td valign="top" colspan="3">Exporter's Ref :</td>
                </tr>
                <tr>
                  <td valign="top" colspan="6">
                    <p>
                      <strong>Buyer's Order No </strong>:
                      <totorder>
                        <xsl:value-of select="./totorder" />
                      </totorder>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="6">
                    <p>
                      <strong>Other Reference(s)	</strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>
                        Consignee/Ship to :
                      </strong>
                    </p>
                  </td>
                  <td valign="top" colspan="6">
                    <p>
                      <strong>
                        Buyer (If Other than Consignee)  Notify
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" rowspan="2" colspan="2">
                    <p>
                      <tbuyeroconsignee>
                        <xsl:value-of select="./TBUYEROCONSIGNEE" />
                      </tbuyeroconsignee>
                    </p>
                  </td>
                  <td valign="top" colspan="6">
                    <p>
                      <tconsignee>
                        <xsl:value-of select="./TCONSIGNEE" />
                      </tconsignee>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="4">
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
                  <td valign="top">
                    <p>
                      <strong>Place of Receipt by Pre-carrier</strong>
                    </p>
                    <receiptat>
                      <xsl:value-of select="./RECEIPTAT" />
                    </receiptat>
                  </td>
                  <td valign="top" colspan="6" rowspan="3">
                    <p>
                      <strong>
                        Terms of Delivery and Payment
                      </strong>
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
                  <td valign="top">
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
                  <td valign="top">
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
                        Marks  &amp; Nos./
                        <br />
                        Container No.
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
                            <xsl:value-of select="Rollfrom" />
                            to
                          </xsl:if>
                          <xsl:if test="position() = last()">
                            <xsl:value-of select="RollTo" />
                          </xsl:if>
                        </xsl:for-each>
                      </strong>
                    </p>
                    <p>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />
                      Rolls
                    </p>
                  </td>
                  <td colspan="6" valign="top">
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
                  <td align="center" valign="middle">
                    <strong>Roll#</strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Design
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      ITEM/<br />
                      COLOR
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      SIZE
                      <br />
                      in ft. Inch
                    </strong>
                  </td>
                  <td align="center" valign="middle" colspan="2">
                    <strong>
                      Total
                      <br />
                      Pieces
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Total
                      <br />
                      Sqft.
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      No. of Pc
                      <br />
                      per Roll
                    </strong>
                  </td>
                </tr>
                <rolls>
                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', concat(./Quality,./CustomerOrderNo))[1])]">
                    <rollitem>
                      <xsl:variable name="vGroup" select="key('groupByContainer', concat(./Quality,./CustomerOrderNo))" />
                      <tr>
                        <td align="center" valign="middle" colspan="2">
                          <p>
                            <strong>
                              Order#
                              <customerorderno>
                                <xsl:value-of select="CustomerOrderNo" />
                              </customerorderno>
                            </strong>
                          </p>
                          <p>
                            <strong>
                              <quality>
                                <xsl:value-of select="Quality" />
                              </quality>                              :


                              <composition>
                                <xsl:value-of select="./Composition" />
                              </composition>
                            </strong>
                          </p>
                        </td>


                        <td align="center" valign="middle"></td>
                        <td align="center" valign="middle"></td>


                        <td align="center" valign="middle" colspan="2"></td>
                        <td align="center" valign="middle"></td>
                        <td align="center" valign="middle"></td>
                      </tr>
                      <xsl:for-each select="$vGroup">

                        <tr>
                          <td align="center" valign="middle" width="60">

                            <rollfrom>
                              <xsl:value-of select="Rollfrom" />
                            </rollfrom>
                            -
                            <rollto>
                              <xsl:value-of select="RollTo" />
                            </rollto>

                          </td>
                          <td align="center" valign="middle" width="140">
                            <design>
                              <xsl:value-of select="DESIGN" />
                            </design>
                            ,

                            <description>
                              <xsl:value-of select="Description" />
                            </description>

                          </td>

                          <td align="center" valign="middle" width="100">
                            <COLOR>
                              <xsl:value-of select="COLOR" />
                            </COLOR>
                          </td>
                          <td align="center" valign="middle" width="100">
                            <SizeFT>
                              <xsl:value-of select="SizeFT" />
                            </SizeFT>
                          </td>


                          <td align="center" valign="middle" width="100" colspan="2">
                            <TotalPcs>
                              <xsl:value-of select="TotalPcs" />
                            </TotalPcs>
                          </td>
                          <td align="center" valign="middle" width="100">
                            <AreaFT>
                              <xsl:value-of select="AreaFT" />
                            </AreaFT>
                          </td>
                          <td align="center" valign="middle" width="100">
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
                  <td colspan="4" align="center" valign="middle">
                    <strong>TOTAL </strong>
                  </td>



                  <td align="center" valign="middle" colspan="2">
                    <strong>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalPcs))" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:variable name="totalAmount" select="number(sum(././Rolls/RollItem/AreaFT))" />
                      <xsl:value-of select="$totalAmount" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                  </td>
                </tr>
                <tr>
                  <td colspan="8" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="8" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="8" class="noBorder">
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="4" class="noBorder">
                  </td>
                  <td valign="top" colspan="4"></td>
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

