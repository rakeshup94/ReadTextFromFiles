<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myutils="pda:MyUtils">
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem" use="./CustomerOrderNo" />
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
          width: 13px;
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
                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px; margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">PACKING LIST</h4>
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
                  </td>
                  <td valign="top" colspan="10">
                    <p>
                      <strong>
                        Buyer (If Other than Consignee)
                      </strong>
                        <strong>Same AS CONSIGNEE	</strong>
                  
                    </p>
                
                  </td>
                </tr>















                <tr>
                  <td valign="top" colspan="4">
                    <p>
                      <strong>Pre-carriage by</strong>
                    </p>
          
                  </td>

                  <td valign="top" colspan="4">
                    <p>
                      <strong>Place of Receipt by Pre-carrier</strong>
                    </p>
             
                  </td>



                  <td valign="top" colspan="10">                 
                    <p>
                      <strong class="left">Country of Orgin of Goods</strong>
                  
                    </p>
               
                  </td>







                </tr>



                <tr>
                  <td valign="top" colspan="4">
                  
                    <p>Test</p>
                  </td>

                  <td valign="top" colspan="4">
               
                    <p>
                      <receiptat>
                        <xsl:value-of select="./RECEIPTAT" />
                      </receiptat>
                    </p>
                  </td>



                  <td valign="top" colspan="10">
                
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
                 
                  </td>
                  <td valign="top" colspan="4">
                    <p>
                      <strong>Port of Loading</strong>
                    </p>
                 
                  </td>




                  <td valign="top" colspan="10">
                    <p>
                      <strong class="left">Country of final Destination</strong> 
                    </p>
                
                  </td>
                </tr>

                <tr>
                  <td valign="top" colspan="4">
                   
                    <p>
                      <vesselflightno>
                        <xsl:value-of select="./VESSELFLIGHTNO" />
                      </vesselflightno>
                    </p>
                  </td>
                  <td valign="top" colspan="4">
                 
                    <p>
                      <portofloading>
                        <xsl:value-of select="./PORTOFLOADING" />
                      </portofloading>
                    </p>
                  </td>




                  <td valign="top" colspan="10">
                  
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
                   
                  
                  </td>
                  <td valign="top" colspan="4">
                    <p>
                      <strong>Final Destination</strong>
                    </p>
                    
                  </td>




                  <td valign="top" colspan="10">
                    <p>
                      <strong>
                        Terms of Delivery and Payment
                      </strong>
                    </p>
               
                  

                  </td>







                </tr>


                <tr>
                  <td valign="top" colspan="4">
                 
                    <p>
                      <portofdischarge>
                        <xsl:value-of select="./PORTOFDISCHARGE" />
                      </portofdischarge>
                    </p>

                  </td>
                  <td valign="top" colspan="4">
                   
                    <p>
                      <finaldestination>
                        <xsl:value-of select="./FINALDESTINATION" />
                      </finaldestination>
                    </p>
                  </td>




                  <td valign="top" colspan="10">
               

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
                  <td valign="top" width="140">
                    Roll No.
                  </td>
                  <td valign="top" width="50">
                    VSN
                  </td>
                  <td valign="top" width="100">
                    RH SKU
                  </td>
                  <td valign="top" width="50">
                    ITEM NO.
                  </td>
                  <td valign="top" width="100">
                    PO#
                  </td>
                  <td valign="top" width="100">
                    DESCRIPTION
                  </td>
                  <td valign="top" width="50">
                    Pcs
                  </td>
                  <td valign="top" width="50">
                    Per Pc SQ. FT.
                  </td>
                  <td valign="top" width="100">
                    COLOR
                  </td>
                  <td valign="top" width="50">
                    SIZE IN FT.INCH
                  </td>
                  <td valign="top" width="50">
                    Roll#
                  </td>
                  <td valign="top" width="100">
                    DC
                  </td>
                  <td valign="top" width="50">
                    TOTAL SQ FT
                  </td>
                  <td valign="top" width="50">
                    WEIGHT
                  </td>
                  <td valign="top" width="20"></td>
                  <td valign="top" width="20"></td>
                  <td valign="top" width="20"></td>
                  <td valign="top" width="50">
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
                          <td valign="top" >
                            <rollno>
                              <xsl:value-of select="RollNo" />
                            </rollno>
                          </td>
                          <td valign="top" >
                            VSN
                          </td>
                          <td valign="top" >
                            <design>
                              <xsl:value-of select="DESIGN" />
                            </design>
                          </td>
                          <td valign="top" >
                            <item_id>
                              <xsl:value-of select="ITEM_ID" />
                            </item_id>
                          </td>
                          <td valign="top" >
                            <customerorderno>
                              <xsl:value-of select="CustomerOrderNo" />
                            </customerorderno>
                          </td>
                          <td valign="top" >

                            <quality>
                              <xsl:value-of select="Quality" />
                            </quality>
                          </td>
                          <td valign="top">
                            <pcs>
                              <xsl:value-of select="PCS" />
                            </pcs>
                          </td>
                          <td valign="top" >
                            <areaft>
                              <xsl:value-of select="AreaFT" />
                            </areaft>
                          </td>
                          <td valign="top" >
                            <color>
                              <xsl:value-of select="COLOR" />
                            </color>
                          </td>
                          <td valign="top" >
                            <sizemtr>
                              <xsl:value-of select="SizeMtr" />
                            </sizemtr>
                          </td>
                          <td valign="top">
                            <rollno>
                              <xsl:value-of select="RollNo" />
                            </rollno>
                          </td>
                          <td valign="top" >
                            DC

                          </td>
                          <td valign="top" >
                            <areaft>
                              <xsl:value-of select="AreaFT" />
                            </areaft>
                          </td>
                          <td valign="top" >

                            <singlepcsnetwt>
                              <xsl:value-of select="SinglePcsNetWt" />
                            </singlepcsnetwt>
                          </td>
                          <td valign="top" >
                            <l>
                              <xsl:value-of select="L" />
                            </l>
                          </td>
                          <td valign="top" >
                            <w>
                              <xsl:value-of select="W" />
                            </w>
                          </td>
                          <td valign="top" >
                            <h>
                              <xsl:value-of select="H" />
                            </h>
                          </td>

                          <td valign="top" >


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
                  <td valign="top" >
                    <xsl:value-of select="number(sum(././Rolls/RollItem/PCS))" />
                  </td>
                  <td valign="top" >

                    <xsl:value-of select="number(sum(././Rolls/RollItem/AreaFT))" />
                  </td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top"></td>
                  <td valign="top">
                    <xsl:value-of select="number(sum(././Rolls/RollItem/AreaFT))" />
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
                  <td valign="top" colspan="13" class="noBorder">



                  </td>
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
</xsl:stylesheet>

