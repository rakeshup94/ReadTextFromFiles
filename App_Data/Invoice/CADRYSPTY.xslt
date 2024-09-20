<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myUtils="pda:MyUtils">
  <xsl:output method="xml" indent="yes" />
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="./HSNCode" />
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
                  <td colspan="7" height="15px" style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">INVOICE  (Benuta)                    </h4>
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
                    <p>
                      <comptel>
                        <xsl:value-of select="./COMPTEL" />
                      </comptel>
                      ,
                      <compfax>
                        <xsl:value-of select="./COMPFAX" />
                      </compfax>
                    </p>
                  </td>
                  <td valign="top" colspan="3">
                    <p>
                      <strong>Invoice No :</strong>
                      <tinvoiceno>
                        <xsl:value-of select="./TINVOICENO" />
                      </tinvoiceno>

                    </p>
                    <p>
                      <strong>Date :</strong>
                      <invoicedate>
                        <xsl:value-of select="./INVOICEDATE" />
                      </invoicedate>
                    </p>
                  </td>



                  <td valign="top" colspan="2">
                    <p>
                      <strong>Exporter's Ref :</strong>
                    </p>
                    <p>
                      IEC#
                      <iecode>
                        <xsl:value-of select="./IECode" />
                      </iecode>
                    </p>
                  </td>


                </tr>

                <tr>

                  <td valign="top" align="left" colspan="5">
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

                  <td valign="top" colspan="5">
                    Other Reference
                  </td>
                </tr>



                <tr>
                  <td valign="top" colspan="2" rowspan="3">
                    <p>
                      <strong>
                        Consignee/Ship to :
                      </strong>
                    </p>
                    <p>
                      <tconsignee>
                        <xsl:value-of select="./TCONSIGNEE" />
                      </tconsignee>
                    </p>
                  </td>
                  <td valign="top" colspan="5">
                    <p>
                      <strong>
                        Buyer (If Other than Consignee) Notify
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      <strong>Country of Orgin of Goods</strong>
                    </p>
                  </td>

                  <td valign="top" colspan="3" align="center">
                    <p>
                      <strong>Country of final Destination</strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" align="center" colspan="2">
                    <p>INDIA Test  </p>
                  </td>

                  <td valign="top" colspan="3" align="center">
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
                      <strong>By Truck Test</strong>
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
                  <td valign="top" colspan="5" rowspan="3">
                    <p>
                      <strong>
                        Terms of Delivery and Payment
                      </strong>
                    </p>

                    <p align="center">
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
                    <p>
                      <vesselflightno>
                        <xsl:value-of select="./VESSELFLIGHTNO" />
                      </vesselflightno>
                    </p>
                  </td>
                  <td valign="top">
                    <p>
                      <strong>Port of Loading</strong>
                    </p>
                    <p>
                      <portofloading>
                        <xsl:value-of select="./PORTOFLOADING" />
                      </portofloading>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      <strong>Port of Discharge</strong>
                    </p>
                    <p>
                      <portofdischarge>
                        <xsl:value-of select="./PORTOFDISCHARGE" />
                      </portofdischarge>
                    </p>
                  </td>
                  <td valign="top">
                    <p>
                      <strong>Final Destination</strong>
                    </p>
                    <p>
                      <finaldestination>
                        <xsl:value-of select="./FINALDESTINATION" />
                      </finaldestination>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
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
                  <td valign="top">
                    <p>
                      <strong>No.&amp;Kinds of Pkgs. </strong>
                    </p>
                    <p>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />
                      (
                      <xsl:value-of select="myUtils:NumberToWords(sum(././Rolls/RollItem/TotalRoll))" />
                      Rolls Only.)
                      <p>properly packed</p>

                    </p>
                  </td>
                  <td colspan="5" valign="top">
                    <p>
                      Description of goods
                    </p>
                    <p align="center">
                      <strong>
                        <descriptionofgoods>
                          <xsl:value-of select="./DescriptionOfGoods" />
                        </descriptionofgoods>
                      </strong>
                    </p>
                  </td>
                </tr>

                <tr>
                  <td align="center" valign="middle">
                    <strong>
                      Sr.#
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      DESCRIPTION
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      No. of pcs
                    </strong>
                  </td>

                  <td align="center" valign="middle">
                    <strong>
                      Sq. Mt
                    </strong>
                  </td>
                  <td align="center" valign="middle"></td>
                  <td align="center" valign="middle">
                    <strong>
                      US$/Sq.Ft.
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      US$
                    </strong>
                  </td>
                </tr>

                <rolls>
                  <xsl:for-each select="./Rolls/RollItem">
                    <rollitem>




                      <tr>
                        <td align="center" valign="middle">
                          <strong>
                            <countno>
                              <xsl:value-of select="position()" />
                            </countno>
                          </strong>
                        </td>
                        <td align="center" valign="middle">

                          <description>
                            <xsl:value-of select="Description" />
                          </description>
                        </td>


                        <td align="center" valign="middle">

                          <pcs>
                            <xsl:value-of select="PCS" />
                          </pcs>
                        </td>


                        <td align="center" valign="middle">

                          <areamtr>
                            <xsl:value-of select="AreaMtr" />
                          </areamtr>
                        </td>

                        <td align="center" valign="middle"></td>

                        <td align="center" valign="middle">

                          <price>
                            <xsl:value-of select="PRICE" />
                          </price>
                        </td>
                        <td align="center" valign="middle">

                          <totalamount>
                            <xsl:value-of select="TotalAmount" />
                          </totalamount>
                        </td>
                      </tr>
                    </rollitem>
                  </xsl:for-each>
                </rolls>





                <xsl:variable name="totalAmount" select="number(sum(././Rolls/RollItem/TotalAmount))" />




                <tr>
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
                      <xsl:value-of select="format-number(number(sum(././Rolls/RollItem/AreaMtr)),'#.##')" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="format-number(number(sum(././Rolls/RollItem/AreaFT)),'#.##')" />
                    </strong>
                  </td>

                  <td>
                    FOB
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="$totalAmount" />
                    </strong>
                  </td>
                </tr>

                <xsl:variable name="ShippingCost" select="250.25" />
                <xsl:variable name="GrossAmount" select="number($totalAmount+$ShippingCost)" />
                <tr>
                  <td colspan="3" class="noBorder"></td>
                  <td colspan="3">
                    Add : Shipping charges

                  </td>
                  <td colspan="3"></td>
                </tr>
                <tr>


                  <td colspan="7" align="left" valign="top" class="noBorder">
                    <p>
                      Composition :-
                    </p>
                  </td>
                </tr>























                <rolls>
                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', ./HSNCode)[1])]">
                    <rollitem>
                      <xsl:variable name="vGroup" select="key('groupByContainer', ./HSNCode)" />
                      <tr>
                        <td colspan="7" class="noBorder" align="left" valign="middle">
                          <p>
                            HS Code :
                            <hsncode>
                              <xsl:value-of select="./HSNCode" />
                            </hsncode>

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
                          </p>
                        </td>
                      </tr>
                    </rollitem>
                  </xsl:for-each>
                </rolls>















                <tr>
                  <td class="noBorder"></td>
                  <td class="noBorder">
                    <p>
                      <strong>
                        Gross Wt. :
                        <grosswt>
                          <xsl:value-of select="./GROSSWT" />
                        </grosswt>
                        KGS
                      </strong>
                    </p>
                  </td>
                  <td colspan="5" class="noBorder">

                    <p>
                      <strong>
                        Net. Wt.   :
                        <netwt>
                          <xsl:value-of select="./NETWT" />
                        </netwt>
                        KGS
                      </strong>
                    </p>

                  </td>



                </tr>



                <tr>
                  <td class="noBorder"></td>
                  <td colspan="6" class="noBorder">
                    <p>
                      <strong>
                        Dimensions :
                        <grosswt>
                          <xsl:value-of select="./GROSSWT" />
                        </grosswt>
                        KGS
                      </strong>
                    </p>
                  </td>




                </tr>
                <tr>


                  <td colspan="7" align="left" valign="top" class="noBorder">
                    <p>
                      <strong>
                        Amount in  US$:


                        <xsl:value-of select="myUtils:NumberToWords($totalAmount)" />

                        Only.
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="7" class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="4" class="noBorder">


                    <p>
                      <strong>
                        We Declare that No child Labour used in the above products
                      </strong>
                    </p>
                    <p>Declaration : </p>
                    <p>1. We intend to claim rewards under RODTEP Scheme	</p>
                    <p>2. We abide by provisional of foreign exchange management Act regarding realization.	</p>
                    <p>3. We declare that this invoice shows the actual price of the goods described and all particulars are true and correct.</p>
                  </td>
                  <td valign="top" colspan="3"></td>
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
