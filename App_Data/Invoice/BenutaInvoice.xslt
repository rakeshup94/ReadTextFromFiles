<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myUtils="pda:MyUtils">
  <xsl:output method="xml" indent="yes"/>
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="concat(./Quality,./CustomerOrderNo)"/>
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
          border:none !important;
          }
          .topBorder {
          border-top:2px solid #000 !important;
          }
          .nobottom {
          border-bottom:none !important;
          }
          .notop {
          border-top:none !important;
          }

        </style>
      </head>
      <body>
        <InvoiceList>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <InvoiceItem>
              <table width="700" border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="10" height="15px" style="padding-left: 5px;text-align: center;color: #000!important; ">
                    <h4 style="font-family: inherit; font-weight: 500;color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">                        INVOICE  (Benuta)                    </h4>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2" rowspan="3">
                    <p>
                      <strong>Exporter :</strong>
                    </p>
                    <p>
                      <COMPANYNAME>
                        <xsl:value-of select="./COMPANYNAME" />
                      </COMPANYNAME>
                    </p>
                    <p>
                      <COMPADDR1>
                        <xsl:value-of select="./COMPADDR1" />
                      </COMPADDR1>,
                      <COMPADDR2>
                        <xsl:value-of select="./COMPADDR2" />
                      </COMPADDR2>,
                      <COMPADDR3>
                        <xsl:value-of select="./COMPADDR3" />
                      </COMPADDR3>
                    </p>
                    <p>
                      <EMAIL>
                        <xsl:value-of select="./EMAIL" />
                      </EMAIL>
                    </p>
                    <p>
                      <COMPTEL>
                        <xsl:value-of select="./COMPTEL" />
                      </COMPTEL>,
                      <COMPFAX>
                        <xsl:value-of select="./COMPFAX" />
                      </COMPFAX>
                    </p>
                  </td>
                  <td valign="top" colspan="5">
                    <p>
                      <strong>Invoice No :</strong>
                      <TINVOICENO>
                        <xsl:value-of select="./TINVOICENO" />
                      </TINVOICENO>

                    </p>
                    <p>
                      <strong>Date :</strong>
                      <INVOICEDATE>
                        <xsl:value-of select="./INVOICEDATE" />
                      </INVOICEDATE>
                    </p>
                  </td>

                  <td valign="top" >

                  </td>

                  <td valign="top" colspan="2">
                    <p>
                      <strong>Exporter's Ref :</strong>
                    </p>
                  </td>


                </tr>

                <tr>

                  <td valign="top" align="left" colspan="8">
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

                  <td valign="top" colspan="8">
                    Other Reference
                  </td>
                </tr>



                <tr>
                  <td valign="top" colspan="2"  rowspan="3">
                    <p>
                      <strong>
                        Consignee/Ship to :
                      </strong>
                    </p>
                    <p>
                      <TCONSIGNEE>
                        <xsl:value-of select="./TCONSIGNEE" />
                      </TCONSIGNEE>
                    </p>
                  </td>
                  <td valign="top" colspan="8">
                    <p>
                      <strong>
                        Buyer (If Other than Consignee) Notify
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      <strong>Country of Orgin of Goods</strong>
                    </p>
                  </td>
                  <td valign="top">
                  </td>
                  <td valign="top">
                  </td>
                  <td valign="top">
                  </td>
                  <td valign="top" colspan="4" align="center">
                    <p>
                      <strong>Country of final Destination</strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" align="center">
                    <p>INDIA Test  </p>
                  </td>
                  <td valign="top" colspan="2">
                  </td>
                  <td valign="top">
                  </td>
                  <td valign="top" colspan="4" align="center">
                    <p>
                      <CustomerCountryName>
                        <xsl:value-of select="./FINALDESTINATION" />
                      </CustomerCountryName>
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
                  <td  valign="top">
                    <p>
                      <strong>Place of Receipt by Pre-carrier</strong>
                    </p>
                    <p>
                      <RECEIPTAT>
                        <xsl:value-of select="./RECEIPTAT" />
                      </RECEIPTAT>
                    </p>
                  </td>
                  <td valign="top" colspan="8"  rowspan="3">
                    <p>
                      <strong>
                        Terms of Delivery and Payment
                      </strong>
                    </p>

                    <p>
                      <PAYMENTTERMS>
                        <xsl:value-of select="./PAYMENTTERMS" />
                      </PAYMENTTERMS>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      <strong>Vessel/Flight No.</strong>
                    </p>
                    <p>
                      <VESSELFLIGHTNO>
                        <xsl:value-of select="./VESSELFLIGHTNO" />
                      </VESSELFLIGHTNO>
                    </p>
                  </td>
                  <td  valign="top">
                    <p>
                      <strong>Port of Loading</strong>
                    </p>
                    <p>
                      <PORTOFLOADING>
                        <xsl:value-of select="./PORTOFLOADING" />
                      </PORTOFLOADING>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      <strong>Port of Discharge</strong>
                    </p>
                    <p>
                      <PORTOFDISCHARGE>
                        <xsl:value-of select="./PORTOFDISCHARGE" />
                      </PORTOFDISCHARGE>
                    </p>
                  </td>
                  <td  valign="top">
                    <p>
                      <strong>Final Destination</strong>
                    </p>
                    <p>
                      <FINALDESTINATION>
                        <xsl:value-of select="./FINALDESTINATION" />
                      </FINALDESTINATION>
                    </p>
                  </td>
                </tr>

                <tr>
                  <td valign="top" class="nobottom">
                    Marks  &amp; Nos./
                  </td>
                  <td  valign="top" class="nobottom">
                    No.&amp;Kinds of Pkgs.
                  </td>
                  <td colspan="8" valign="top" class="nobottom">
                    Description of Goods
                  </td>
                </tr>
                
                <tr>
                  <td valign="top" class="notop">
                    
                    <p>
                      <RollMark>
                        <xsl:value-of select="./RollMark" />
                      </RollMark>
                    </p>
                  </td>
                  <td  valign="top" class="notop">
               
                    <p>
                      <strong>
                        Rolls#  <xsl:for-each select="./Rolls/RollItem">
                          <xsl:if test="position() = 1">
                            <xsl:value-of select="Rollfrom" /> to
                          </xsl:if>
                          <xsl:if test="position() = last()">
                            <xsl:value-of select="RollTo" />
                          </xsl:if>
                        </xsl:for-each>
                      </strong>

                    </p>


                    <p class="topBorder">
                      <strong>
                        <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />

                        Rolls
                      </strong>

                    </p>
                  </td>
                  <td colspan="8" valign="top" align="center" class="notop">
                  
                    <p>
                      <strong>
                      <DescriptionOfGoods>
                        <xsl:value-of select="./DescriptionOfGoods" />
                      </DescriptionOfGoods>
                        </strong>
                    </p>
                  </td>
                </tr>

                <tr>
                  <td align="center" valign="middle">
                    <strong>
                      PO#
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Item
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Description
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      HSN <br />  Code
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Quantity <br /> No. of pcs
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Quantity <br /> No. of Rolls
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Area <br /> Sq. Mt
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Net. Wt. <br /> Kg
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Price per <br /> Sq. Mt
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      Amount <br /> US$
                    </strong>
                  </td>
                </tr>

                <Rolls>
                  <xsl:for-each select="./Rolls/RollItem">
                    <RollItem>




                      <tr>
                        <td align="center" valign="middle">
                          <strong>
                            <CustomerOrderNo>
                              <xsl:value-of select="CustomerOrderNo"/>
                            </CustomerOrderNo>
                          </strong>
                        </td>
                        <td align="center" valign="middle">

                          <ITEM_NAME>
                            <xsl:value-of select="ITEM_NAME"/>
                          </ITEM_NAME>
                        </td>
                        <td align="center" valign="middle">

                          <Description>
                            <xsl:value-of select="Description"/>
                          </Description>
                          :

                          <Composition>
                            <xsl:value-of select="Composition"/>
                          </Composition>

                        </td>
                        <td align="center" valign="middle">

                          <HSNCode>
                            <xsl:value-of select="HSNCode"/>
                          </HSNCode>
                        </td>
                        <td align="center" valign="middle">

                          <PCS>
                            <xsl:value-of select="PCS"/>
                          </PCS>
                        </td>
                        <td align="center" valign="middle">
                          <TotalRoll>
                            <xsl:value-of select="TotalRoll"/>
                          </TotalRoll>
                        </td>
                        <td align="center" valign="middle">

                          <AreaMtr>
                            <xsl:value-of select="AreaMtr"/>
                          </AreaMtr>
                        </td>
                        <td align="center" valign="middle">

                          <SinglePcsNetWt>
                            <xsl:value-of select="SinglePcsNetWt"/>
                          </SinglePcsNetWt>
                        </td>
                        <td align="center" valign="middle">

                          <PRICE>
                            <xsl:value-of select="PRICE"/>
                          </PRICE>
                        </td>
                        <td align="center" valign="middle">

                          <TotalAmount>
                            <xsl:value-of select="TotalAmount"/>
                          </TotalAmount>
                        </td>
                      </tr>
                    </RollItem>
                  </xsl:for-each>
                </Rolls>
                <tr>
                  <td>
                  </td>
                  <td>
                  </td>
                  <td align="center" valign="middle">
                    <strong>TOTAL </strong>
                  </td>
                  <td>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/PCS))" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="format-number(number(sum(././Rolls/RollItem/AreaMtr)),'#.##')" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/SinglePcsNetWt))" />
                    </strong>
                  </td>
                  <td>
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
                  <td colspan="10"  class="noBorder">
                  </td>
                </tr>
                <tr>
                  <td colspan="5" align="left" valign="top" class="noBorder">
                    <p>
                      <strong>  We Declare that No child Labour used in the above products</strong>
                    </p>
                  </td>
                  <td colspan="4" align="right" valign="top" class="noBorder">
                    <p>
                      <strong>
                        CONVERSION RATE Rs.      <xsl:value-of select="$exchangeRate" />
                      </strong>
                    </p>
                  </td>
                  <td valign="top" class="noBorder">
                    <p>
                      <xsl:value-of select="$totalPrice" />
                    </p>
                  </td>
                </tr>
                <tr>
                  <td colspan="5" align="left" valign="top" class="noBorder">
                    <p>
                      <strong>
                        Net. Wt.   :      <NETWT>
                          <xsl:value-of select="./NETWT" />
                        </NETWT> KGS
                      </strong>
                    </p>
                    <p>
                      <strong>
                        Gross Wt. :       <GROSSWT>
                          <xsl:value-of select="./GROSSWT" />
                        </GROSSWT> KGS
                      </strong>
                    </p>

                  </td>
                  <td colspan="4" align="right" valign="top" class="noBorder">
                    <p>
                      <strong>
                        I.G.S.T. @ <IGST>
                          <xsl:value-of select="$IGST" />
                        </IGST>%
                      </strong>
                    </p>
                    <p>
                      <strong>TOTAL TAX INVOICE VALLUE INR</strong>
                    </p>
                    <p>
                      <strong>ROUND OFF TAX INVOICE VALUE</strong>
                    </p>
                  </td>
                  <td valign="top" class="noBorder">
                    <p>
                      <xsl:value-of select="$IGSTAmount" />
                    </p>
                    <p>
                      <xsl:value-of select="format-number($GrossAmount,'#.##')" />
                    </p>
                    <p>
                      <strong>
                        <xsl:value-of select="format-number($GrossAmount,'#')" />
                      </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="10" class="noBorder" >
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="7" class="noBorder"  >
                    <p>
                      Amount Chargeable
                    </p>
                    <p>
                      <strong>
                        US$:


                        <xsl:value-of select="myUtils:NumberToWords($totalAmount)" />

                        Only.
                      </strong>
                    </p>
                    <p></p>
                    <p>Declaration : </p>
                    <p>1. We intend to claim rewards under RODTEP Scheme	</p>
                    <p>2. We abide by provisional of foreign exchange management Act regarding realization.	</p>
                    <p>3. We declare that this invoice shows the actual price of the goods described and all particulars are true and correct.</p>
                  </td>
                  <td valign="top" colspan="3">
                  </td>
                </tr>
              </table>
            </InvoiceItem>
          </xsl:for-each>
        </InvoiceList>
        <InvoiceList>
        </InvoiceList>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>