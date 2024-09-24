<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myUtils="pda:MyUtils">
  <xsl:output method="xml" indent="yes"/>
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="concat(./Quality,./CustomerOrderNo)"/>
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Emailer</title>
        <style>            table {            border: 1px solid #ccc;            }              td {            padding: 5px;            }              p {            margin-bottom: 5px;            margin-top: 0px;            }          </style>
      </head>
      <body>
        <InvoiceList>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <InvoiceItem>
              <table width="700" border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="9" height="15px" style="padding-left: 5px;text-align: center;color: #000!important; ">
                    <h4 style="font-family: inherit; font-weight: 500;color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">                        PACKING LIST                      </h4>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="4">
                    <p>
                      <strong>Exporter :</strong>
                    </p>
                  </td>
                  <td valign="top" colspan="5">
                    <p>
                      <strong>Invoice No  &amp; Date</strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="4">
                    <p>
                      <COMPANYNAME>
                        <xsl:value-of select="./COMPANYNAME" />
                      </COMPANYNAME>
                    </p>
                  </td>
                  <td valign="top" colspan="5">
                    <p>
                      <TINVOICENO>
                        <xsl:value-of select="./TINVOICENO" />
                      </TINVOICENO>                                DATED -                        <INVOICEDATE>
                        <xsl:value-of select="./INVOICEDATE" />
                      </INVOICEDATE>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="4">
                    <p>
                      <COMPADDR1>
                        <xsl:value-of select="./COMPADDR1" />
                      </COMPADDR1>,                        <COMPADDR2>
                        <xsl:value-of select="./COMPADDR2" />
                      </COMPADDR2>,                        <COMPADDR3>
                        <xsl:value-of select="./COMPADDR3" />
                      </COMPADDR3>
                    </p>
                  </td>
                  <td valign="top" colspan="5">
                    <p>
                      <strong>Buyer's Order No </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      <EMAIL>
                        <xsl:value-of select="./EMAIL" />
                      </EMAIL>
                    </p>
                  </td>
                  <td valign="top">
                    <p>
                      <strong>IEC #: </strong>
                    </p>
                  </td>
                  <td valign="top">
                    <p>
                      <IECode>
                        <xsl:value-of select="./IECode" />
                      </IECode>
                    </p>
                  </td>
                  <td valign="top" colspan="2">
                    <totorder>
                          <xsl:for-each select="./BuyerOrderNo/Buyer">
                          <xsl:value-of select="@OrderNo" />,
                        </xsl:for-each>
                    </totorder>
                  </td>
                  <td valign="top" colspan="3">                    </td>
                </tr>
                <tr>
                  <td valign="top" colspan="2">
                    <p>
                      <COMPTEL>
                        <xsl:value-of select="./COMPTEL" />
                      </COMPTEL>,                        <COMPFAX>
                        <xsl:value-of select="./COMPFAX" />
                      </COMPFAX>
                    </p>
                  </td>
                  <td valign="top">
                    <p>
                      <strong>GSTIN #:  </strong>
                    </p>
                  </td>
                  <td valign="top">
                    <p>
                      <GSTNO>
                        <xsl:value-of select="./GSTNO" />
                      </GSTNO>
                    </p>
                  </td>
                  <td valign="top" colspan="5">                      Other Reference                    </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      <strong>                          Buyer :                        </strong>
                    </p>
                  </td>
                  <td valign="top" colspan="3">
                    <p>
                      <strong>                          Consignee/Ship to :                        </strong>
                    </p>
                  </td>
                  <td valign="top" colspan="5">
                    <p>
                      <strong>                          Buyer (If Other than Consignee)                        </strong>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" rowspan="3">
                    <p>
                      <TBUYEROCONSIGNEE>
                        <xsl:value-of select="./TBUYEROCONSIGNEE" />
                      </TBUYEROCONSIGNEE>
                    </p>
                  </td>
                  <td valign="top" rowspan="3" colspan="3">
                    <p>
                      <TCONSIGNEE>
                        <xsl:value-of select="./TCONSIGNEE" />
                      </TCONSIGNEE>
                    </p>
                  </td>
                  <td valign="top" colspan="5">
                    <TBUYEROCONSIGNEE>
                      <xsl:value-of select="./TBUYEROCONSIGNEE" />
                    </TBUYEROCONSIGNEE>         </td>
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
                      <CustomerCountryName>
                        <xsl:value-of select="./FINALDESTINATION" />
                      </CustomerCountryName>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="5" rowspan="4">
                    <p>
                      <strong>                          Terms of Delivery and Payment                        </strong>
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
                      <strong>Pre-carriage by</strong>
                    </p>
                    <xsl:value-of select="./CARRIAGENAME" />
                  </td>
                  <td colspan="3" valign="top">
                    <p>
                      <strong>Place of Receipt by Pre-carrier</strong>
                    </p>
                    <RECEIPTAT>
                      <xsl:value-of select="./RECEIPTAT" />
                    </RECEIPTAT>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      <strong>Vessel/Flight No.</strong>
                    </p>
                    <VESSELFLIGHTNO>
                      <xsl:value-of select="./VESSELFLIGHTNO" />
                    </VESSELFLIGHTNO>
                  </td>
                  <td colspan="3" valign="top">
                    <p>
                      <strong>Port of Loading</strong>
                    </p>
                    <PORTOFLOADING>
                      <xsl:value-of select="./PORTOFLOADING" />
                    </PORTOFLOADING>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      <strong>Port of Discharge</strong>
                    </p>
                    <PORTOFDISCHARGE>
                      <xsl:value-of select="./PORTOFDISCHARGE" />
                    </PORTOFDISCHARGE>
                  </td>
                  <td colspan="3" valign="top">
                    <p>
                      <strong>Final Destination</strong>
                    </p>
                    <FINALDESTINATION>
                      <xsl:value-of select="./FINALDESTINATION" />
                    </FINALDESTINATION>
                  </td>
                </tr>
                <tr>
                  <td valign="middle">
                    <p>
                      <strong>
                        Marks  &amp; Nos./ <br />Container No.
                      </strong>
                    </p>
                  </td>
                  <td colspan="4" valign="middle">
                    <strong>No.&amp;Kinds of Pkgs. </strong>
                  </td>
                  <td colspan="4" valign="top">
                    <strong>Description of goods</strong>
                  </td>
                </tr>
                <tr>
                  <td valign="middle">
                    <p>
                      <RollMark>
                        <xsl:value-of select="./RollMark" />
                      </RollMark>
                    </p>
                  </td>
                  <td colspan="4" valign="top">
                    <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />  (                      <xsl:value-of select="myUtils:NumberToWords(sum(././Rolls/RollItem/TotalRoll))" />                      Rolls Only.)                      <p>properly packed</p>
                  </td>
                  <td colspan="4" valign="top">
                    <DescriptionOfGoods>
                      <xsl:value-of select="./DescriptionOfGoods" />
                    </DescriptionOfGoods>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="9">
                    <strong>
                      Roll Nos.                                    <xsl:for-each select="./Rolls/RollItem">
                        <xsl:if test="position() = 1">
                          <xsl:value-of select="Rollfrom" /> to
                        </xsl:if>
                        <xsl:if test="position() = last()">
                          <xsl:value-of select="RollTo" />
                        </xsl:if>
                      </xsl:for-each>
                    </strong>
                  </td>
                </tr>
                <tr>
                  <td width="100" align="center" valign="middle">
                    <strong>                        Roll Nos.                        </strong>
                  </td>
                  <td width="100" align="center" valign="middle">
                    <strong>                        Pcs./Roll                        </strong>
                  </td>
                  <td width="120" align="center" valign="middle" colspan="2">
                    <strong>QUALITY</strong>
                  </td>
                  <td width="90" align="center" valign="middle">
                    <strong>                        DESIGN                      </strong>
                  </td>
                  <td width="70" align="center" valign="middle" colspan="2">
                    <strong>                        Size ( <xsl:value-of select="./UNITNAME" />)                      </strong>
                  </td>
                  <td width="60" align="center" valign="middle">
                    <strong>                        PIECES                      </strong>
                  </td>
                  <td width="60" align="center" valign="middle">
                    <strong>                        Area (Sq.<xsl:value-of select="./UNITNAME" />.)                      </strong>
                  </td>
                </tr>
                <Rolls>
                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', concat(./Quality,./CustomerOrderNo))[1])]">
                    <RollItem>
                      <xsl:variable name="vGroup" select="key('groupByContainer', concat(./Quality,./CustomerOrderNo))" />
                      <tr>
                        <td valign="top" colspan="1" >
                          <p>
                            <strong>
                              PO#<CustomerOrderNo>
                                <xsl:value-of select="CustomerOrderNo" />
                              </CustomerOrderNo>
                            </strong>
                          </p>
                        </td>
                        <td valign="top">     </td>
                        <td valign="top" colspan="7">
                          <p>
                            <strong>
                              <Quality>
                                <xsl:value-of select="Quality"/>
                              </Quality>
                            </strong>
                          </p>
                        </td>
                      </tr>
                      <xsl:for-each select="$vGroup">
                        <tr>
                          <td align="center" valign="middle">
                            <xsl:value-of select="Rollfrom" /> to <xsl:value-of select="RollTo" />
                          </td>
                          <td align="center" valign="middle">
                            <xsl:value-of select="RPcs" />
                          </td>
                          <td align="center" valign="middle" colspan="2">                              </td>
                          <td align="center" valign="middle">
                            <xsl:value-of select="DESIGN" />
                          </td>
                          <td align="center" valign="middle" colspan="2">
                            <xsl:value-of select="concat(WIDTH,' X ',LENGTH)" />
                          </td>
                          <td align="center" valign="middle">
                            <PCS>
                              <xsl:value-of select="TotalPcs" />
                            </PCS>
                          </td>
                          <td align="center" valign="middle">
                            <AreaFT>
                              <xsl:value-of select="AREA" />
                            </AreaFT>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </RollItem>
                  </xsl:for-each>
                </Rolls>
                <tr>
                  <td colspan="7" align="right" valign="middle">
                    <strong>TOTAL </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalPcs))" />
                    </strong>
                  </td>
                  <td align="center" valign="middle">
                    <strong>
                      <xsl:variable name="totalArea" select="number(sum(././Rolls/RollItem/AREA))" />
                      <xsl:value-of select="number(sum(././Rolls/RollItem/AREA))" />
                    </strong>
                  </td>
                </tr>
                <tr>
                  <td colspan="9" >                    </td>
                </tr>
                <tr>
                  <td colspan="9" style="border:none;">                    </td>
                </tr>
                <tr>
                  <td colspan="9" style="border:none;">                    </td>
                </tr>
                <tr>
                  <td colspan="4" style="border:none;">                    </td>
                  <td colspan="5"  style="border:none;" >                    </td>
                </tr>
                <tr>
                  <td colspan="4" align="left" valign="middle" style="border:none;">
                    <p>
                      <strong>
                        TOTAL ROLLS : <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />ROLLS
                      </strong>
                    </p>
                    <p>
                      <strong>
                        TOTAL PIECES: <xsl:value-of select="number(sum(././Rolls/RollItem/TotalPcs))" /> PIECES
                      </strong>
                    </p>
                    <p>
                      <strong>
                        TOTAL AREA SQ.<xsl:value-of select="./UNITNAME" />: <xsl:value-of select="number(sum(././Rolls/RollItem/AREA))" />
                      </strong>
                    </p>
                  </td>
                  <td colspan="5"  align="center" valign="middle"  style="border:none;" >
                    <p>
                      <xsl:if test="./signature!= ''">
                        <img width="182" height="73" alt="">
                         
                        </img>
                      </xsl:if>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td colspan="9" style="border:none;">                    </td>
                </tr>
                <tr>
                  <td colspan="9">                    </td>
                </tr>
              </table>
            </InvoiceItem>
          </xsl:for-each>
        </InvoiceList>
        <InvoiceList>          </InvoiceList>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>