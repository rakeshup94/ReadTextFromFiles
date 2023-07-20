<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myutils="pda:MyUtils">
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem"
      use="./CustomerOrderNo" />
  <xsl:output method="xml" indent="yes" />
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

          .left {
          text-align: left;
          }

          .right {
          text-align: right;
          }

          .center {
          text-align: center;
          }
        </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table width="1000" border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="18" height="15px" style="padding-left: 5px; text-align: center; color: #000!important;">
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px;
                                        margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">
                      PACKING LIST
                    </h4>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="8" rowspan="4">
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
                  <td valign="top" colspan="6">
                    <p>
                      <strong>Invoice No / Date: </strong>
                    </p>
                  </td>
                  <td valign="top" colspan="4"></td>
                </tr>
                <tr>
                  <td valign="top" colspan="10">
                    <p>
                      <tinvoiceno>
                        <xsl:value-of select="./TINVOICENO" />
                      </tinvoiceno>
                      /
                      <invoicedate>
                        <xsl:value-of select="./INVOICEDATE" />
                      </invoicedate>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="10">
                    <p>
                      <strong>Buyer's Order No </strong>:
                      <totorder>
                        <xsl:value-of select="./totorder" />
                      </totorder>
                    </p>



                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="10">
                    <p>
                      <strong>Other Reference(s)	</strong>
                    </p>
                  </td>
                </tr>

                <tr>

                  <td valign="top" colspan="8">
                    <p>
                      <strong>
                        Consignee
                      </strong>
                    </p>

                    <xsl:call-template name="splitStringToItems">
                      <xsl:with-param name="delimiter" select="','"  />
                      <xsl:with-param name="list" select="./TCONSIGNEE" />
                    </xsl:call-template>


                  </td>
                  <td valign="top" colspan="10">
                    <p>
                      <strong>
                        Buyer (If Other than Consignee)
                      </strong>
                    </p>
                    <p>
                      <strong>
                        <xsl:value-of select="./TBUYEROCONSIGNEE" />
                      </strong>
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
                      <strong class="left">Country of Orgin of Goods</strong>

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
                  <td valign="top" colspan="18"></td>
                </tr>

                <tr>
                  <td valign="top">
                    Roll No.
                  </td>
                  <td valign="top">
                    VSN
                  </td>
                  <td valign="top">
                    RH SKU
                  </td>
                  <td valign="top">
                    ITEM NO.
                  </td>
                  <td valign="top">
                    PO#
                  </td>
                  <td valign="top">
                    DESCRIPTION
                  </td>
                  <td valign="top">
                    Pcs
                  </td>
                  <td valign="top">
                    Per Pc SQ. FT.
                  </td>
                  <td valign="top">
                    COLOR
                  </td>
                  <td valign="top">
                    SIZE IN FT.INCH
                  </td>
                  <td valign="top">
                    Roll#
                  </td>
                  <td valign="top">
                    DC
                  </td>
                  <td valign="top">
                    TOTAL SQ FT
                  </td>
                  <td valign="top">
                    WEIGHT
                  </td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top">
                    CBM PER ROLL
                  </td>

                </tr>




                <rolls>

                  <xsl:for-each select="./Rolls/RollItem[generate-id() = generate-id(key('groupByContainer', ./CustomerOrderNo)[1])]">
                    <rollitem>
                      <xsl:variable name="vGroup" select="key('groupByContainer', ./CustomerOrderNo)" />
                      <tr>
                        <td valign="top" colspan="2">
                          <strong>
                            <customerorderno>
                              Order#<xsl:value-of select="CustomerOrderNo" />
                            </customerorderno>
                          </strong>

                        </td>
                        <td valign="top" colspan="4">

                          <strong>
                            <quality>
                              <xsl:value-of select="Quality" />
                            </quality>

                            :

                            <composition>
                              <xsl:value-of select="Composition" />
                            </composition>
                          </strong>

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
                          <td valign="top">
                            <rollno>
                              <xsl:value-of select="RollNo" />
                            </rollno>
                          </td>
                          <td valign="top">
                            VSN
                          </td>
                          <td valign="top">
                            <design>
                              <xsl:value-of select="DESIGN" />
                            </design>
                          </td>
                          <td valign="top">
                            <item_id>
                              <xsl:value-of select="ITEM_ID" />
                            </item_id>
                          </td>
                          <td valign="top">
                            <customerorderno>
                              <xsl:value-of select="CustomerOrderNo" />
                            </customerorderno>
                          </td>
                          <td valign="top">

                            <quality>
                              <xsl:value-of select="Quality" />
                            </quality>
                          </td>
                          <td valign="top">
                            <pcs>
                              <xsl:value-of select="PCS" />
                            </pcs>
                          </td>
                          <td valign="top">
                            <areaft>
                              <xsl:value-of select="AREA" />
                            </areaft>
                          </td>
                          <td valign="top">
                            <color>
                              <xsl:value-of select="COLOR" />
                            </color>
                          </td>
                          <td valign="top">
                            <sizemtr>
                              <xsl:value-of select="SizeMtr" />
                            </sizemtr>
                          </td>
                          <td valign="top">
                            <rollno>
                              <xsl:value-of select="RollNo" />
                            </rollno>
                          </td>
                          <td valign="top">
                            DC

                          </td>
                          <td valign="top">
                            <areaft>
                              <xsl:value-of select="AREA" />
                            </areaft>
                          </td>
                          <td valign="top">

                            <singlepcsnetwt>
                              <xsl:value-of select="SinglePcsNetWt" />
                            </singlepcsnetwt>
                          </td>
                          <td valign="top">
                            <l>
                              <xsl:value-of select="L" />
                            </l>
                          </td>
                          <td valign="top">
                            <w>
                              <xsl:value-of select="W" />
                            </w>
                          </td>
                          <td valign="top">
                            <h>
                              <xsl:value-of select="H" />
                            </h>
                          </td>

                          <td valign="top">


                            <cbm>
                              <xsl:value-of select="CBM" />
                            </cbm>

                          </td>

                        </tr>
                      </xsl:for-each>
                    </rollitem>
                  </xsl:for-each>
                </rolls>
                <tr>
                  <td valign="top" colspan="3">
                    <strong>
                      TOTAL ROLLS =
                      <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />
                      ROLLS
                    </strong>
                  </td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top">
                    <xsl:value-of select="number(sum(././Rolls/RollItem/PCS))" />
                  </td>
                  <td valign="top">

                    <xsl:value-of select="number(sum(././Rolls/RollItem/AREA))" />
                  </td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top">
                    <xsl:value-of select="number(sum(././Rolls/RollItem/AREA))" />
                  </td>
                  <td valign="top">

                    <xsl:value-of select="number(sum(././Rolls/RollItem/SinglePcsNetWt))" />

                  </td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top"></td>

                  <td valign="top">
                    <xsl:value-of select="number(sum(././Rolls/RollItem/CBM))" />
                  </td>
                </tr>
                <tr>
                  <td valign="top" colspan="3">


                    <p>
                      <strong>
                        Gross Weight :
                        <grosswt>
                          <xsl:value-of select="./GROSSWT" />
                        </grosswt>
                        KGS
                      </strong>
                    </p>



                  </td>
                  <td colspan="15" class="noBorder"></td>
                </tr>

                <tr>
                  <td valign="top" colspan="3">

                    <p>
                      <strong>
                        TOTAL CBM:
                        <cbm>
                          <xsl:value-of select="./CBM" />
                        </cbm>
                        CBM
                      </strong>
                    </p>



                  </td>
                  <td colspan="15" class="noBorder"></td>
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
                  <td valign="top" colspan="5"></td>
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


