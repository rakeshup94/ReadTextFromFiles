<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" >
  <xsl:output method="xml" indent="yes" />
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="./CustomerOrderNo" />

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
          .topBorder {
          border-top: 2px solid #000 !important;
          }
          .nobottom {
          border-bottom: none !important;
          }
          .notop {
          border-top: none !important;
          }
        </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table width="700" border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="9" height="15px" style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">
                      PACKING LIST
                    </h4>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="5" rowspan="3">
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
                  </td>
                  <td valign="top" colspan="4">
                    <p>
                      <strong>Invoice No  :</strong>
                      <tinvoiceno>
                        <xsl:value-of select="./TINVOICENO" />
                      </tinvoiceno>
                    </p>
                    <p>

                      <strong>Ex factory   date:</strong>
                      <invoicedate>
                        <xsl:value-of select="./INVOICEDATE" />
                      </invoicedate>
                    </p>
                  </td>
                </tr>

                <tr>

                  <td valign="top" colspan="4">
                    <p>
                      <strong>Buyer's Order No </strong>
                    </p>
                    <p>
                      <totorder>
                        <xsl:value-of select="./totorder" />
                      </totorder>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="4"></td>

                </tr>

                <tr>

                  <td valign="top" colspan="5" rowspan="3">
                    <p>
                      <strong>
                        Consignee
                      </strong>
                    </p>
                    <p>
                      <tconsignee>
                        <xsl:value-of select="./TCONSIGNEE" />
                      </tconsignee>
                    </p>
                  </td>
                  <td valign="top" colspan="4" ></td>
                </tr>

                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>Country of Orgin of Goods</strong>
                    </p>

                  </td>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>Country of final Destination</strong>
                    </p>

                  </td>
                </tr>


                <tr>
                  <td valign="top" align="centre"  colspan="2">

                    <p>INDIA  </p>
                  </td>
                  <td valign="top" align="centre" colspan="2">

                    <p>
                      <customercountryname>
                        <xsl:value-of select="./FINALDESTINATION" />
                      </customercountryname>
                    </p>
                  </td>
                </tr>




                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>Pre-carriage by</strong>
                    </p>
                  </td>
                  <td colspan="3" valign="top">
                    <p>
                      <strong>Place of Receipt by Pre-carrier</strong>
                    </p>
                    <receiptat>
                      <xsl:value-of select="./RECEIPTAT" />
                    </receiptat>
                  </td>

                  <td valign="top" colspan="4" rowspan="3">
                    <p>
                      <strong>
                        Terms of Delivery and Payment
                      </strong>
                    </p>

                    <p>
                      <paymentterms>
                        <xsl:value-of select="./PAYMENTTERMS" />
                      </paymentterms>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>Vessel/Flight No.</strong>
                    </p>
                    <vesselflightno>
                      <xsl:value-of select="./VESSELFLIGHTNO" />
                    </vesselflightno>
                  </td>
                  <td colspan="3" valign="top">
                    <p>
                      <strong>Port of Loading</strong>
                    </p>
                    <portofloading>
                      <xsl:value-of select="./PORTOFLOADING" />
                    </portofloading>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>Port of Discharge</strong>
                    </p>
                    <portofdischarge>
                      <xsl:value-of select="./PORTOFDISCHARGE" />
                    </portofdischarge>
                  </td>
                  <td colspan="3" valign="top">
                    <p>
                      <strong>Final Destination</strong>
                    </p>
                    <finaldestination>
                      <xsl:value-of select="./FINALDESTINATION" />
                    </finaldestination>
                  </td>
                </tr>
                <tr>
                  <td valign="middle" colspan="2">
                    <p>
                      <strong>
                        Marks  &amp; Nos./
                        <br />
                        Container No.
                      </strong>
                    </p>
                  </td>
                  <td colspan="3" valign="middle">
                    <strong>No.&amp;Kinds of Pkgs. </strong>
                  </td>
                  <td colspan="4" valign="top">
                    <strong>Description of goods</strong>
                  </td>

                </tr>
                <tr>
                  <td valign="middle" colspan="2">
                    <p>
                      <rollmark>
                        <xsl:value-of select="./RollMark" />
                      </rollmark>
                    </p>
                  </td>
                  <td colspan="3" valign="top" align="center">

                    <p>
                      <strong>
                        Roll #.
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
                  <td colspan="4" valign="top">
                    <descriptionofgoods>
                      <xsl:value-of select="./DescriptionOfGoods" />
                    </descriptionofgoods>
                  </td>

                </tr>
                <tr>
                  <td valign="top" colspan="9">

                  </td>
                </tr>



                <tr>
                  <td align="center" valign="middle">
                    <strong>
                      Roll#
                    </strong>
                  </td>
                  <td align="center" valign="middle">

                    <strong>
                      Description
                    </strong>

                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      EAN
                    </strong>
                  </td>
                  <td align="center" valign="middle" class="auto-style1">
                    <strong>
                      Benuta reference
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Color
                    </strong>
                  </td>

                  <td align="center" valign="middle">
                    <strong>
                      Size
                      <br />
                      (in Mtr.)
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Pcs.
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Area
                      <br />
                      Sq.Mtr.
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      No. of pcs
                      per<br />
                      Roll
                    </strong>
                  </td>
                </tr>

                <rolls>

                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', ./CustomerOrderNo)[1])]">
                    <rollitem>
                      <xsl:variable name="vGroup" select="key('groupByContainer', ./CustomerOrderNo)" />
                      <tr>
                        <td></td>
                        <td align="center" valign="middle" colspan="4">
                          <strong>
                            <customerorderno>
                              PO#<xsl:value-of select="CustomerOrderNo" />
                              :
                              <item_name>
                                <xsl:value-of select="ITEM_NAME" />
                              </item_name>

                              <quality>
                                <xsl:value-of select="Quality" />
                              </quality>

                              :

                              <composition>
                                <xsl:value-of select="Composition" />
                              </composition>
                            </customerorderno>
                          </strong>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                      
                      </tr>


                      <xsl:for-each select="$vGroup">


                        <tr>
                          <td align="center" valign="middle" width="140">

                            <rollfrom>
                              <xsl:value-of select="Rollfrom" />
                            </rollfrom>
                            to
                            <rollto>
                              <xsl:value-of select="RollTo" />
                            </rollto>
                            ,<totalpcs>
                              <xsl:value-of select="TotalPcs" />
                            </totalpcs>

                          </td>
                          <td align="center" valign="middle" width="70">

                            <description>
                              <xsl:value-of select="Description" />
                            </description>

                          </td>
                          <td align="center" valign="middle" width="70">

                            <ean>
                              <xsl:value-of select="EAN" />
                            </ean>
                          </td>


                          <td align="center" valign="middle" width="70">

                            <benutaref>
                              <xsl:value-of select="benutaRef" />
                            </benutaref>

                          </td>
                          <td align="center" valign="middle" width="70"> 

                            <color>
                              <xsl:value-of select="COLOR" />
                            </color>

                          </td>
                          <td align="center" valign="middle" width="70">

                            <sizemtr>
                              <xsl:value-of select="SizeMtr" />
                            </sizemtr>
                          </td>

                          <td align="center" valign="middle" width="70">

                            <pcs>
                              <xsl:value-of select="PCS" />
                            </pcs>
                          </td>

                          <td align="center" valign="middle" width="70">

                            <areaft>
                              <xsl:value-of select="AreaMtr" />
                            </areaft>
                          </td>


                          <td align="center" valign="middle" width="70">

                            <rpcs>
                              <xsl:value-of select="RPcs" />
                            </rpcs>
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
                  <td></td>
                  <td align="center" valign="middle">
                    <strong>Total : </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/PCS))" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="format-number(number(sum(././Rolls/RollItem/AreaFT)),'#.##')" />
                    </strong>
                  </td>
                  <td></td>
                </tr>
                <tr>
                  <td colspan="9" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="9" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="9" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="9" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="6" class="noBorder"></td>
                  <td valign="top" colspan="3" rowspan="3"></td>
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
