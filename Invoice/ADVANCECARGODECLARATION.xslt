<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="html" indent="yes" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Emailer</title>
        <style>
          td{
          padding: 5px;
          }
          p{
          margin-bottom: 5px; margin-top:0px;
          }
        </style>
      </head>
      <body>
        <xsl:for-each select="/InvoiceList/InvoiceItem">
          <table width="900" border="0" align="center" cellpadding="0" cellspacing="0" style="">
            <tr>
              <td valign="top" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; float:left; font-style: normal;">
                <table width="900" border="0" cellspacing="0" cellpadding="0">
                  <tbody>
                    <tr>
                      <td width="900" valign="top" style="">
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <tbody>
                            <tr>
                              <td width="13%" rowspan="5" valign="top">
                                <img src="vikram-logo.png" width="109" height="68" alt=""/>
                              </td>
                              <td width="48%" rowspan="5" valign="top">
                                <p style="margin-bottom: 5px">
                                  <span style="font-size: 22px; text-decoration:underline">
                                    <strong>

                                      <companyname>
                                        <xsl:value-of select="./COMPANYNAME" />
                                      </companyname>

                                    </strong>
                                  </span>
                                </p>
                                <br/>

                                Manufacturer &amp; Exporter of<br/>
                                Hand Knotted Woollen Carpets, Soumak, Tufted
                                Carpets and Woollen Cotton, Jute Durries

                              </td>
                              <td width="14%" align="right" valign="top">
                                <strong>OFFICE</strong> :
                              </td>
                              <td width="25%" valign="top">
                                KATRA BAZIRAO<br />
                                MIRZAPUR  – 231001 (INDIA)
                              </td>
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>FACT</strong> :
                              </td>
                              <td>
                                NATWAN TIRAHA, JANGI ROAD<br />
                                MIRZAPUR  – 231001 (INDIA)
                              </td>
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>PHONE</strong> :
                              </td>
                              <td>
                                FACT : 05442-242288, 242275<br/>OFF   : 05442-220881, 220313
                              </td>
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>E-mail </strong>:
                              </td>
                              <td>vikramrkj@gmail.com</td>
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>TIN	 </strong>:
                              </td>
                              <td>09714801868</td>
                            </tr>
                          </tbody>
                        </table>
                      </td>

                    </tr>

                    <tr>
                      <td align="center" valign="top" style="font-size: 16px">
                        <p>
                          <strong>ADVANCE CARGO DECLARATION (NON  HAZARDOUS   CARGO)</strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="">
                        <table style="width:100.0%;border-collapse:collapse;border:none;">
                          <tbody>
                            <tr>
                              <td colspan="2" style="width: 48.94%;border: 1pt solid windowtext;padding: 0cm 5.4pt;height: 27.4pt;vertical-align: top;">
                                <h2 style='margin:0cm;font-size:16px;font-family:"Times New Roman",serif;'>
                                  <span style="font-size:13px;">1) Booking no. assigned by ocean carrier</span>
                                </h2>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;margin-right:-194.4pt;'> </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;margin-right:-194.4pt;'> </p>
                              </td>
                              <td rowspan="2" style="width: 51.06%;border-top: 1pt solid windowtext;border-right: 1pt solid windowtext;border-bottom: 1pt solid windowtext;border-image: initial;border-left: none;padding: 0cm 5.4pt;height: 27.4pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  15) <u>Full Commodity Description:</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  <strong>Indian Hand Woven Leather Durries &amp; Hand Woven Seagrass Rug</strong>
                                </p>
                              </td>
                            </tr>
                            <tr>
                              <td colspan="2" style="width: 48.94%;border-right: 1pt solid windowtext;border-bottom: 1pt solid windowtext;border-left: 1pt solid windowtext;border-image: initial;border-top: none;padding: 0cm 5.4pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  2)<u> Shipper/Exporter Full name and Address with Pin code</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  <strong>
                                    <companyname>
                                      <xsl:value-of select="./COMPANYNAME" />
                                    </companyname>
                                  </strong>
                                </p>
                                <h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:17px;font-family:"Arial",sans-serif;'>
                                  <span style="font-size:13px;">

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

                                  </span>
                                </h3>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'> </p>
                              </td>
                            </tr>
                            <tr>
                              <td colspan="2" style="width: 48.94%;border-right: 1pt solid windowtext;border-bottom: 1pt solid windowtext;border-left: 1pt solid windowtext;border-image: initial;border-top: none;padding: 0cm 5.4pt;height: 41.35pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  3) <u>Consignee- Full name and Address with zip code</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  <strong>
                                    <tconsignee>
                                      <xsl:value-of select="./TCONSIGNEE" />
                                    </tconsignee>
                                  </strong>
                                </p>
                               
                              </td>
                              <td style="width: 51.06%;border-top: none;border-left: none;border-bottom: 1pt solid windowtext;border-right: 1pt solid windowtext;padding: 0cm 5.4pt;height: 41.35pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>16)Gross Weight of Cargo (Kilos) </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  <GROSSWT>
                                    <xsl:value-of select="./GROSSWT" />
                                  </GROSSWT> Kgs.
                                </p>
                              </td>
                            </tr>
                            <tr>
                              <td colspan="2" style="width: 48.94%;border-right: 1pt solid windowtext;border-bottom: 1pt solid windowtext;border-left: 1pt solid windowtext;border-image: initial;border-top: none;padding: 0cm 5.4pt;height: 17.5pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  4) <u>Name of ocean carrier</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'> </p>
                              </td>
                              <td style="width: 51.06%;border-top: none;border-left: none;border-bottom: 1pt solid windowtext;border-right: 1pt solid windowtext;padding: 0cm 5.4pt;height: 17.5pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  17)<u> HTC code (6 Digits)</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>Hand Woven Leather Durries :5705 00 29,  </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>Hand Woven Seagrass Rug : 5702.50.29</p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'> </p>
                              </td>
                            </tr>
                            <tr>
                              <td colspan="2" style="width: 48.94%;border-right: 1pt solid windowtext;border-bottom: 1pt solid windowtext;border-left: 1pt solid windowtext;border-image: initial;border-top: none;padding: 0cm 5.4pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  5) <u>Vessel  Name / Voy     No.</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  <vesselflightno>
                                    <xsl:value-of select="./VESSELFLIGHTNO" />
                                  </vesselflightno>
                                </p>
                              </td>
                              <td style="width: 51.06%;border-top: none;border-left: none;border-bottom: 1pt solid windowtext;border-right: 1pt solid windowtext;padding: 0cm 5.4pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  18)<u> Place of issue of cargo Declaration</u><strong> </strong>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  <strong>     MIRZAPUR</strong>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'> </p>
                              </td>
                            </tr>
                            <tr>
                              <td style="width: 23.4%;border-right: 1pt solid windowtext;border-bottom: 1pt solid windowtext;border-left: 1pt solid windowtext;border-image: initial;border-top: none;padding: 0cm 5.4pt;height: 26.05pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  6) <u>Place of Receipt</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  <receiptat>
                                    <xsl:value-of select="./RECEIPTAT" />
                                  </receiptat>
                                </p>
                              </td>
                              <td style="width: 25.54%;border-top: none;border-left: none;border-bottom: 1pt solid windowtext;border-right: 1pt solid windowtext;padding: 0cm 5.4pt;height: 26.05pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  7) <u>Port of Loading</u>
                                </p>
                                <h3 style='margin-top:12.0pt;margin-right:0cm;margin-bottom:3.0pt;margin-left:0cm;font-size:17px;font-family:"Arial",sans-serif;'>
                                  <span style="font-size:13px;">
                                    <portofloading>
                                      <xsl:value-of select="./PORTOFLOADING" />
                                    </portofloading>
                                  </span>
                                </h3>
                              </td>
                              <td style="width: 51.06%;border-top: none;border-left: none;border-bottom: 1pt solid windowtext;border-right: 1pt solid windowtext;padding: 0cm 5.4pt;height: 26.05pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  19)<u>Date of Issue of Cargo Declaration:</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>        15.04.2022</p>
                              </td>
                            </tr>
                            <tr>
                              <td style="width: 23.4%;border-right: 1pt solid windowtext;border-bottom: 1pt solid windowtext;border-left: 1pt solid windowtext;border-image: initial;border-top: none;padding: 0cm 5.4pt;height: 22.45pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  8) <u>Port of Discharge:</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  <strong>

                                    <portofdischarge>
                                      <xsl:value-of select="./PORTOFDISCHARGE" />
                                    </portofdischarge>

                                  </strong>
                                </p>
                              </td>
                              <td style="width: 25.54%;border-top: none;border-left: none;border-bottom: 1pt solid windowtext;border-right: 1pt solid windowtext;padding: 0cm 5.4pt;height: 22.45pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  9) <u>Place of Delivery with state code</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  <strong>
                                    <finaldestination>
                                      <xsl:value-of select="./FINALDESTINATION" />
                                    </finaldestination>
                                  </strong>
                                </p>
                              </td>
                              <td rowspan="4" style="width: 51.06%;border-top: none;border-left: none;border-bottom: 1pt solid windowtext;border-right: 1pt solid windowtext;padding: 0cm 5.4pt;height: 22.45pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>** The owner of the cargo above certifies that the particulars described </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>above are true and complete to their best information and  belief</p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'> </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  20) <u>Name of Shipper / Exporter :</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  <strong>
                                    <companyname>
                                      <xsl:value-of select="./COMPANYNAME" />
                                    </companyname>
                                  </strong>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'> </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'> </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'> </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  21)<u> Name of Person Signing and signature:</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'> </p>
                                <h2 style='margin:0cm;font-size:16px;font-family:"Times New Roman",serif;'>
                                  <span style="font-size:13px;">            R.K.JAIN</span>
                                </h2>
                              </td>
                            </tr>
                            <tr>
                              <td style="width: 23.4%;border-right: 1pt solid windowtext;border-bottom: 1pt solid windowtext;border-left: 1pt solid windowtext;border-image: initial;border-top: none;padding: 0cm 5.4pt;height: 27.85pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  10) <u>Container Numbers (s)</u>
                                </p>
                              </td>
                              <td style="width: 25.54%;border-top: none;border-left: none;border-bottom: 1pt solid windowtext;border-right: 1pt solid windowtext;padding: 0cm 5.4pt;height: 27.85pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  11) <u>Seal Number (s)</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  <u>
                                    <span style="text-decoration:   none;"> </span>
                                  </u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  <u>
                                    <span style="text-decoration:   none;"> </span>
                                  </u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'> </p>
                              </td>
                            </tr>
                            <tr>
                              <td colspan="2" style="width: 48.94%;border-right: 1pt solid windowtext;border-bottom: 1pt solid windowtext;border-left: 1pt solid windowtext;border-image: initial;border-top: none;padding: 0cm 5.4pt;height: 29.4pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  12) <u>Shipping Bill Number</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'> </p>
                              </td>
                            </tr>
                            <tr>
                              <td colspan="2" style="width: 48.94%;border-right: 1pt solid windowtext;border-bottom: 1pt solid windowtext;border-left: 1pt solid windowtext;border-image: initial;border-top: none;padding: 0cm 5.4pt;height: 40.45pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  13) <u>Cargo marks and numbers:</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  <strong> </strong>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;text-align:justify;'>
                                  <strong>01 - 136</strong>
                                </p>
                              </td>
                            </tr>
                            <tr>
                              <td colspan="2" style="width: 48.94%;border-right: 1pt solid windowtext;border-bottom: 1pt solid windowtext;border-left: 1pt solid windowtext;border-image: initial;border-top: none;padding: 0cm 5.4pt;height: 62.5pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  14) <u>Number and Type of Packages:</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>        136 Cartons By  Sea</p>
                              </td>
                              <td style="width: 51.06%;border-top: none;border-left: none;border-bottom: 1pt solid windowtext;border-right: 1pt solid windowtext;padding: 0cm 5.4pt;height: 62.5pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>
                                  22) <u>Company's Seal / Rubber Stamp:</u>
                                </p>
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'> </p>
                              </td>
                            </tr>
                            <tr>
                              <td colspan="3" style="width: 100%;border: none;padding: 0cm 5.4pt;height: 58.45pt;vertical-align: top;">
                                <p style='margin:0cm;font-size:13px;font-family:"Times New Roman",serif;'>The Shipper / Declarant fully indemnifies the concerned Carrier, the ship, the NVOCC, Freight Forwarder, the Custom House Agent against any and all consequences, claims and expenses, including legal costs, arising out of any discrepancy, error, mis declaration  of whatever nature in the particulars declared in this document and / or arising from the U.S. Customs declining permission for either these goods to be loaded on the ship or for these goods or any Part thereof to be landed in the U.S. </p>
                              </td>
                            </tr>
                          </tbody>
                        </table>

                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="font-size: 13px"></td>
                    </tr>
                    <tr>
                      <td valign="top" style=""></td>
                    </tr>

                  </tbody>
                </table>
              </td>
            </tr>
            <tr>
              <td height="5" valign="top"></td>
            </tr>
          </table>
        </xsl:for-each>
      </body>
    </html>

  </xsl:template>
</xsl:stylesheet>
