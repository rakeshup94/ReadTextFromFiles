<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>


<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myutils="pda:MyUtils">
    <xsl:output method="xml" indent="yes" />
    <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem"
        use="concat(./Quality,./CustomerOrderNo)" />
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


                .notopBorder {
                    border: none !important;
                }


                .notop {
                    border-top: none !important;
                }

                .nobottom {
                    border-bottom: none !important;
                }

                .auto-style1 {
                    height: 69px;
                }

                .auto-style2 {
                    height: 31px;
                }
            </style>
        </head>
        <body>
            <invoicelist>
                <xsl:for-each select="/InvoiceList/InvoiceItem">
                    <invoiceitem>
                        <table width="500px" border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                            <tr>
                                <td colspan="15" height="15px"
                                    style="padding-left: 5px; text-align: center; color: #000!important;">
                                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px;
                                        margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">
                                        INVOICE                      </h4>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" colspan="10" rowspan="3">
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
                                <td valign="top" colspan="3">
                                    <p>
                                        <strong>Invoice No  &amp; Date</strong>
                                    </p>
                                    <p>
                                        <tinvoiceno>
                                            <xsl:value-of select="./TINVOICENO" />
                                        </tinvoiceno>
                                        DATED -
                      <invoicedate>
                          <xsl:value-of select="./INVOICEDATE" />
                      </invoicedate>
                                    </p>
                                </td>
                                <td valign="top" colspan="2">
                                    <p>
                                        <strong>Export Ref</strong>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" colspan="5">
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


                                    <p>
                                        <strong>Other Reference(s) </strong>
                                    </p>
                                    <p>
                                        GST #
                                        <gstno>
                                            <xsl:value-of select="./GSTNO" />
                                        </gstno>
                                    </p>







                                </td>
                            </tr>


                            <tr>
                                <td valign="top" colspan="10">
                                    <p>
                                        <strong>Consignee
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
                                        <strong>Buyer (If Other than Consignee)
                                        </strong>
                                    </p>

                                    <p>
                                        <tbuyeroconsignee>
                                            <xsl:value-of select="./TBUYEROCONSIGNEE" />
                                        </tbuyeroconsignee>
                                    </p>



                                </td>
                            </tr>


                            <tr>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>Pan No.:-
                                        </strong>
                                    </p>
                                </td>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>REX No.:-

                                            
                                        </strong>
                                        <xsl:value-of select="./RexNo" />
                                    </p>
                                </td>
                                <td valign="top" colspan="3" rowspan="2">
                                    <p>
                                        Country of Orgin of Goods
                                    </p>
                                    <p><strong>INDIA</strong> </p>
                                </td>
                                <td valign="top" colspan="2" rowspan="2">
                                    <p>
                                        Country of final Destination
                                    </p>
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
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>SGTN Type.:-
                                        </strong>
                                    </p>




                                </td>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>TAN No :-
                                        </strong>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>END USE :-
                                        </strong>
                                    </p>
                                </td>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>Transport Mode :-
                                        </strong>
                                        <xsl:value-of select="./VESSELFLIGHTNO" />

                                    </p>
                                </td>
                                <td valign="top" colspan="5" rowspan="7">
                                    <p>
                                        Terms of Delivery and Payment                                        
                                     
                                        <strong>F.O.B.,                                   
                                        <paymentterms>
                                            <xsl:value-of select="./PAYMENTTERMS" />
                                        </paymentterms>
                                        </strong>
                                    </p>


                                </td>
                            </tr>
                            <tr>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>State Code			
                                            :-
                                        </strong>
                                    </p>
                                </td>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>Reverse Charge :-
                                        </strong>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>Pre-carriage by :-
                                        </strong>

                                        <xsl:value-of select="./CARRIAGENAME" />
                                    </p>
                                </td>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>Place of Receipt by Pre-carrier :-
                                        </strong>
                                        <receiptat>
                                            <xsl:value-of select="./RECEIPTAT" />
                                        </receiptat>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>Vessel/Flight No. :-
                                        </strong>
                                        <vesselflightno>
                                            <xsl:value-of select="./VESSELFLIGHTNO" />
                                        </vesselflightno>
                                    </p>
                                </td>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>Port of Loading :-
                                        </strong>
                                        <portofloading>
                                            <xsl:value-of select="./PORTOFLOADING" />
                                        </portofloading>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>Port of Discharge  :-
                                        </strong>

                                        <portofdischarge>
                                            <xsl:value-of select="./PORTOFDISCHARGE" />
                                        </portofdischarge>
                                    </p>
                                </td>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>Final Destination :-
                                        </strong>
                                        <finaldestination>
                                            <xsl:value-of select="./FINALDESTINATION" />
                                        </finaldestination>
                                    </p>
                                </td>
                            </tr>

                            <tr>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>TIN.No.:-
                                        </strong>
                                        <xsl:value-of select="./TinNo" />

                                    </p>
                                </td>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>IEC No.:-
                                        </strong>
                                        <xsl:value-of select="./IECode" />

                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>GSTIN No.:-
                                        </strong>
                                        <gstno>
                                            <xsl:value-of select="./GSTNO" />
                                        </gstno>
                                    </p>
                                </td>
                                <td valign="top" colspan="5">
                                    <p>
                                        <strong>Bank AD Code :-
                                        </strong>
                                        <xsl:value-of select="./ADCode" />

                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td valign="middle" colspan="5">
                                    <p>
                                        <strong>Marks  &amp; Nos.
                     
                                        </strong>
                                    </p>

                                    <p>
                                        <xsl:value-of select="./Mark" />

                                        <rollmark>
                                            <xsl:value-of select="./RollMark" />
                                        </rollmark>
                                    </p>


                                </td>
                                <td valign="middle" colspan="5">
                                    <p>
                                        <strong>No.&amp;Kinds of Pkgs. </strong>
                                    </p>
                                    <p>
                                        <xsl:for-each select="./Rolls/RollItem">
                                            <xsl:if test="position() = 1">
                                                <xsl:value-of select="Rollfrom" />
                                                --
                                            </xsl:if>
                                            <xsl:if test="position() = last()">
                                                <xsl:value-of select="RollTo" />
                                            </xsl:if>
                                        </xsl:for-each>





                                        <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />
                                        Rolls 
          
                                    </p>


                                </td>
                                <td valign="top" colspan="5">
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
                                <td rowspan="2">Order</td>
                                <td rowspan="2">Article Name</td>
                                <td rowspan="2">Article No.</td>
                                <td rowspan="2">Colour</td>
                                <td rowspan="2">Size (Ft.inch)</td>
                                <td rowspan="2">Quality</td>
                                <td rowspan="2">Remark If Any</td>
                                <td rowspan="2">HSN Code</td>
                                <td rowspan="2">PCS</td>
                                <td class="auto-style1" colspan="2">Area In</td>
                                <td class="auto-style1" colspan="2">Rate In FOB USD</td>
                                <td class="auto-style1" colspan="2">Amount In FOB USD</td>
                            </tr>
                            <tr>
                                <td>Sq. Ft.</td>
                                <td>Sq. Mtr.</td>
                                <td>Piece</td>
                                <td>Sq. Mtr.</td>
                                <td>Piece</td>
                                <td>Sq. Mtr.</td>
                            </tr>


                            <rolls>
                                <xsl:for-each select="./Rolls/RollItem">
                                    <rollitem>

                                        <tr>
                                            <td>
                                                <xsl:value-of select="OrderId" />

                                            </td>
                                            <td>
                                                <xsl:value-of select="DESIGN" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="DesignName" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="COLOR" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="SizeFT" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="Quality" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="Remark" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="HSNCode" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="PCS" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="AreaFT" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="AreaMtr" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="PRICE" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="AREA" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="TotalAmount" />
                                            </td>
                                            <td>
                                                <xsl:value-of select="TotalAmount" />
                                            </td>
                                        </tr>







                                    </rollitem>
                                </xsl:for-each>
                            </rolls>









                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>



                            <xsl:variable name="totalAmount" select="number(sum(././Rolls/RollItem/TotalAmount))" />

                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td colspan="2">
                                    <p>
                                        <strong>Total Invoice value</strong>
                                    </p>
                                </td>

                                <xsl:value-of select="$totalAmount" />

                                <td>
                                    <xsl:value-of select="$totalAmount" />
                                </td>
                                <td>
                                    <xsl:value-of select="$totalAmount" />
                                </td>
                            </tr>

                            <xsl:variable name="Commission" select="number($totalAmount*5 div 100)" />

                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td colspan="4">
                                    <p>
                                        <strong>Added 5% Commission</strong>
                                    </p>



                                </td>
                                <td>
                                    <xsl:value-of select="$Commission" />
                                </td>
                                <td>
                                    <xsl:value-of select="$Commission" />
                                </td>
                            </tr>



                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>





                            <tr>
                                <xsl:variable name="GrossAmount" select="number($totalAmount+$Commission)" />
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td><strong>
                                    <xsl:value-of select="number(sum(././Rolls/RollItem/PCS))" />
                                </strong></td>
                                <td><strong>
                                    <xsl:value-of select="number(sum(././Rolls/RollItem/AreaFT))" />
                                </strong></td>
                                <td><strong>
                                    <xsl:value-of select="number(sum(././Rolls/RollItem/AreaMtr))" />
                                </strong></td>
                                <td colspan="2"><strong>Final FOB In USD</strong></td>
                                <td><strong>
                                    <xsl:value-of select="$GrossAmount" />
                                </strong>
                                </td>
                                <td><strong>
                                    <xsl:value-of select="$GrossAmount" />
                                </strong>
                                </td>
                            </tr>










                            <tr>
                                <td colspan="15">
                                    <p>
                                        <strong>Amount Chargeable (in words) F.O.B. USD:


                        <xsl:value-of select="myUtils:NumberToWords($totalAmount)" />

                                            Only.
                                        </strong>
                                    </p>
                                </td>
                            </tr>




                            <tr>
                                <td colspan="15"></td>

                            </tr>
                            <tr>
                                <td colspan="15">Content with backing</td>

                            </tr>

                            <tr>
                                <td colspan="15">
                                    <p>
                                        PO#
                                    <xsl:value-of select="./totorder" />
                                        - 
                                    (  
                                        <xsl:value-of select="./Composition" />
                                        )
                                    </p>
                                </td>
                            </tr>


                            <tr>
                                <td colspan="15"></td>
                            </tr>



                            <tr>
                                <td colspan="15"></td>
                            </tr>






                            <tr>
                                <td colspan="15">
                                    <p>
                                        Gross Weight :
                      <grosswt>
                          <xsl:value-of select="./GROSSWT" />
                      </grosswt>
                                        Kgs
                                    </p>
                                    <p>
                                        Nett    Weight  :
                      <netwt>
                          <xsl:value-of select="./NETWT" />
                      </netwt>
                                        Kgs
                                    </p>
                                    <p>
                                        TOTAL CBM:
                      <cbm>
                          <xsl:value-of select="./CBM" />
                      </cbm>
                                        CBM (Approx)
                                    </p>
                                </td>
                            </tr>










                            <tr>
                                <td colspan="15"></td>
                            </tr>


                            <tr>
                                <td colspan="15"></td>
                            </tr>


                            <tr>
                                <td colspan="15"></td>
                            </tr>


                            <tr>
                                <td colspan="15" class="auto-style2"></td>
                            </tr>


                            <tr>
                                <td colspan="15"></td>
                            </tr>


                            <tr>
                                <td colspan="15"></td>
                            </tr>

















































                            <tr>
                                <td colspan="11" valign="middle">
                                    <p>
                                        Declaration :
                                    </p>
                                    <p>1. We intend to claim rewards under rodtep Scheme</p>
                                    <p>
                                        2. We abide by provisional of foreign exchange management Act regarding realization.
                                    </p>
                                    <p>
                                        3. We declare that this invoice shows the actual price of the goods described and
                                        all particulars are true and correct
                                    </p>
                                </td>
                                <td colspan="4"></td>

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
