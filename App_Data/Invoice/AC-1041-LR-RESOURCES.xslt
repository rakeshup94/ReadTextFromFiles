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
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">INVOICE                      </h4>
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
                  <td colspan="3">
                    <p>
                      <strong>
                        <customerorderno>
                          <xsl:value-of select="CustomerOrderNo"/>
                        </customerorderno>
                      </strong>
                    </p>,<p>
                      <strong>
                        <customerorderno>
                          <xsl:value-of select="CustomerOrderNo"/>
                        </customerorderno>
                      </strong>
                    </p>
                  </td>
                  <td colspan="3"></td>
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
                  <td colspan="3" align="center">
                    <p>             INDIA            </p>
                  </td>
                  <td colspan="3" align="center">
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
                  <td>
                    <xsl:value-of select="./CARRIAGENAME" />
                  </td>
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
                      <strong>150 Days</strong>
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
                  <td align="center">
                    <p>
                      <strong>
                        <rollmark>
                          <xsl:value-of select="./RollMark" />
                        </rollmark>
                      </strong>
                    </p>
                  </td>
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
                  <th>                       </th>
                  <th>
                    <p>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />             Rolls
                    </p>
                  </th>
                </tr>
                <tr>
                  <th>
                    <p>
                      <Strong>
                        <containerno>
                          <xsl:value-of select="./Containerno"/>
                        </containerno>
                      </Strong>
                    </p>
                  </th>
                  <td></td>
                  <td colspan="6" align="center">(Floorcovering)</td>
                </tr>
                <tr>
                  <th>
                    <p>
                      <strong>              SL# / Roll#             </strong>
                    </p>
                  </th>
                  <th>
                    <p>
                      <strong>DESCRIPTION</strong>
                    </p>
                  </th>
                  <td></td>
                  <th>                       </th>
                  <th>
                    <p>
                      <strong>Quantity No. of Pcs</strong>
                    </p>
                  </th>
                  <th>
                    <p>
                      <strong>
                        Area <br/> Sq. <xsl:value-of select="./UNITNAME" />
                      </strong>
                    </p>
                  </th>
                  <th>
                    <p>
                      <strong>
                        Price <br/>US$ Sq <xsl:value-of select="./UNITNAME" /> 
                      </strong>
                    </p>
                  </th>
                  <th>
                    <p>
                      <strong>
                        Amount <br/> US$
                      </strong>
                    </p>
                  </th>
                </tr>
                <rolls>
                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', concat(./Quality,./CustomerOrderNo))[1])]">
                    <rollitem>
                      <xsl:variable name="vGroup" select="key('groupByContainer', concat(./Quality,./CustomerOrderNo))" />
                      <xsl:if test="position()=1">
                        <td colspan="3">
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
                        <td colspan="5"></td>
                      </xsl:if>
                      <tr>
                        <td align="center" valign="middle">                </td>
                        <td align="center" valign="middle" colspan="2">
                          <design>
                            <xsl:value-of select="DESIGN"/>
                          </design>
                        </td>
                        <td align="center" valign="middle">                             </td>
                        <td align="center" valign="middle">
                          <psc>
                            <xsl:value-of select="TotalPcs" />
                          </psc>
                        </td>
                        <td align="center" valign="middle">
                          <areaft>
                            <xsl:value-of select="AREA" />
                          </areaft>
                        </td>
                        <td align="center" valign="middle">
                          <price>
                            <xsl:value-of select="PRICE" />
                          </price>
                        </td>
                        <td align="center" valign="middle">
                          <itemprice>
                            <xsl:value-of select="TotalAmount" />
                          </itemprice>
                        </td>
                      </tr>
                    </rollitem>
                  </xsl:for-each>
                </rolls>
                <tr>
                  <td colspan="3" align="right" valign="middle">
                    <strong>Total: </strong>
                  </td>
                  <td></td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="format-number(number(sum(././Rolls/RollItem/PCS)),'#.##')" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="format-number(sum(././Rolls/RollItem/AREA),'#.##')" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>             FBO            </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:variable name="totalAmount" select="number(sum(././Rolls/RollItem/TotalAmount))" />
                      <xsl:value-of select="$totalAmount" />
                    </strong>
                  </td>
                </tr>
                <xsl:variable name="exchangeRate" select="77.25" />
                <xsl:variable name="totalAmount" select="number(sum(././Rolls/RollItem/TotalAmount))" />
                <xsl:variable name="totalPrice" select="number($exchangeRate*$totalAmount)" />
                <xsl:variable name="IGST" select="number(./IGST)" />
                <xsl:variable name="IGSTAmount" select="number($totalPrice*$IGST div 100)" />
                <xsl:variable name="CGST" select="number(./CGST)" />
                <xsl:variable name="CGSTAmount" select="number($totalPrice*$CGST div 100)" />
                <xsl:variable name="SGST" select="number(./SGST)" />
                <xsl:variable name="SGSTAmount" select="number($totalPrice*$SGST div 100)" />
                <xsl:variable name="GrossAmount" select="number($totalPrice+$IGSTAmount +$CGSTAmount+$SGSTAmount)" />
                <tr>
                  <td colspan="4">                       </td>
                  <td align="center" valign="middle" colspan="3">
                    <strong>
                      CONVERSION RATE <p>
                        <strong>
                          <xsl:value-of select="$exchangeRate" />
                        </strong>
                      </p>
                    </strong>
                  </td>
                  <td>
                    <p>
                      <strong>
                        <xsl:value-of select="format-number($totalPrice,'#.##')" />
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td colspan="4" class="auto-style1">                       </td>
                  <td colspan="3" align="center">
                    <p>
                      <strong>
                        I.G.S.T. @ <igst>
                          <xsl:value-of select="$IGST" />
                        </igst>              %
                      </strong>
                    </p>
                  </td>
                  <td>
                    <p>
                      <strong>
                        <xsl:value-of select="format-number($IGSTAmount,'#.##')" />
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <th colspan="4" align="left"  >                       </th>
                  <th align="center" valign="middle" colspan="3">
                    <p>
                      <strong>TOTAL TAX INVOICE VALLUE INR</strong>
                    </p>
                  </th>
                  <td>
                    <p>
                      <strong>
                        <xsl:value-of select="format-number($GrossAmount,'#.##')" />
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td align="left" colspan="4" >                       </td>
                  <td colspan="3" align="center">
                    <p>
                      <strong>ROUND OFF TAX INVOICE VALUE</strong>
                    </p>
                  </td>
                  <td>
                    <p>
                      <strong>
                        <xsl:value-of select="format-number($GrossAmount,'#')" />
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td colspan="2">
                    <p>
                      <strong>''Amount Chargeable :</strong>
                    </p>
                  </td>
                  <td colspan="6"></td>
                </tr>
                <tr>
                  <td colspan="5">
                    <strong>
                      in'US$:             <xsl:value-of select="myUtils:NumberToWords(sum(././Rolls/RollItem/TotalAmount))" />             Only.
                    </strong>
                  </td>
                  <td colspan="3"></td>
                </tr>
                <tr>
                  <td colspan="3">
                    Content :<itemname>
                      <xsl:value-of select="ITEM_NAME"/>
                    </itemname>           <quality>
                      <xsl:value-of select="Quality"/>
                    </quality>           <composition>
                      <xsl:value-of select="composition"/>
                    </composition>
                  </td>
                  <td colspan="5"></td>
                </tr>
                <tr>
                  <td colspan="8"></td>
                </tr>
                <tr>
                  <td colspan="8"></td>
                </tr>
                <tr>
                  <th colspan="3" align="left" >
                    <p>
                      <strong>
                        Gross Wt.: <GROSSWT>
                          <xsl:value-of select="./GROSSWT" />
                        </GROSSWT> Kgs.  Net.Wt.: <NETWT>
                          <xsl:value-of select="./NETWT" />
                        </NETWT>  Kgs.
                      </strong>
                    </p>
                  </th>
                  <td colspan="5"></td>
                </tr>
                <tr>
                  <td colspan="2">
                    <p>
                      <strong>
                        HS CODE : <xsl:value-of select="HSNCode" />
                      </strong>
                    </p>
                  </td>
                  <td colspan="6"></td>
                </tr>
                <tr>
                  <td>
                    <p>Declaration :</p>
                  </td>
                  <td colspan="7"></td>
                </tr>
                <tr>
                  <td colspan="3" valign="middle" class="noBorder">
                    <p>1. We intend to claim rewards under rodtep Scheme</p>
                    <p>2. We abide by provisional of foreign exchange management Act regarding realization.</p>
                    <p>3. We declare that this invoice shows the actual price of the goods described and all particulars are true and correct</p>
                  </td>
                  <td colspan="5" align="center"  valign="middle" >
                    <xsl:if test="./signature!= ''">
                      <img width="182" height="73" alt="">
                        <xsl:attribute name="src">
                          <xsl:value-of select="./signature" />
                        </xsl:attribute>
                      </img>
                    </xsl:if>
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
