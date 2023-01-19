<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="html" indent="yes" />
  <xsl:template name="dots" match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Emailer</title>
        <style>
          td {
          padding: 5px;
          }

          p {
          margin-bottom: 5px;
          margin-top: 0px;
          }
        </style>
      </head>
      <body>
        <xsl:for-each select="/InvoiceList/InvoiceItem">
          <table width="700" border="0" align="center" cellpadding="0" cellspacing="0"
              style="">
            <tr>
              <td valign="top" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;
                            float: left; font-style: normal;">
                <table width="700" border="0" cellspacing="0" cellpadding="0">
                  <tbody>
                    <tr>
                      <td colspan="3" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style="">
                        <table width="100%" border="0" cellpadding="0"
                            cellspacing="0">
                          <tbody>
                            <tr>
                              <td width="48%" rowspan="5"
                                  valign="top">
                                <p style="margin-bottom: 5px">
                                  <span style="font-size: 22px; text-decoration: underline">
                                    <strong>
                                      <companyname>
                                        <xsl:value-of select="./COMPANYNAME" />
                                      </companyname>
                                    </strong>
                                  </span>
                                </p>
                                <br/>

                                  <strong>
                                    Manufacturer
                                    &amp; Exporter of
                                  </strong>
                                  <br/>
                                                            Hand Woven Woolen Kelim/Durries/Soumak,
Hand Knotted Woollen Carpets, Hand Tufted,
                                                            Hand Knotted Jute Carpet,
Hand Woven Jute Durries / Soumak etc.
                        
                                                        
                              </td>
                              <td width="14%" align="right"
                                  valign="top">
                                <strong>OFFICE</strong> :
                              </td>
                              <td width="25%" valign="top">

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
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>FACT</strong>
                                :
                              </td>
                              <td>
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
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>PHONE</strong>
                                :
                              </td>
                              <td>
                                FACT :
                                <comptel>
                                  <xsl:value-of select="./COMPTEL" />
                                </comptel>


                              </td>
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>
                                  E-mail
                                </strong>:
                              </td>
                              <td>

                                <email>
                                  <xsl:value-of select="./EMAIL" />
                                </email>



                              </td>
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>
                                  TIN
                                </strong>:
                              </td>
                              <td>
                                <tinno>
                                  <xsl:value-of select="./TinNo" />
                                </tinno>


                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </td>

                    </tr>

                    <tr>
                      <td colspan="3" align="center" valign="top"
                          style="font-size: 16px">  </td>
                    </tr>
                    <tr>
                      <td colspan="3" align="center" valign="top"
                          style="font-size: 16px">
                        <p align="center">
                          <strong>
                            VERIFIED  GROSS
                            MASS DECLARATION FORM-LCL
                          </strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td width="73" valign="top" style="border: solid 1px #ccc;">
                        <strong>
                          <em>Sr. No</em>
                        </strong>
                      </td>
                      <td width="538" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                            border-top: solid 1px #ccc;">
                        <strong>
                          <em>
                            Details
                            of Information
                          </em>
                        </strong>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;
                                            border-top: solid 1px #ccc;"
                          width="289">
                        <strong>
                          <em>Particulars</em>
                        </strong>
                      </td>
                    </tr>

                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">1.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>Name  of the Shipper </em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <em>

                          <companyname>
                            <xsl:value-of select="./COMPANYNAME" />
                          </companyname>



                        </em>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">2.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>Shipper  Registration/ License No. (IEC No. CIN No.) **</em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <em>

                          <iecode>
                            <xsl:value-of select="./IECode" />
                          </iecode>




                        </em>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">3.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>Name  and designation of official of the shipper authorized to sign document</em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <em>S.K.Srivastava</em>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">4.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>24X7  contact details of authorized official of shipper</em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <em>7705920107</em>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">5.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>Weighbridge  registration no. &amp; Address of Weighbridge</em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                          
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">6.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>Invoice  No.</em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <em>

                          <tinvoiceno>
                            <xsl:value-of select="./TINVOICENO" />
                          </tinvoiceno>


                        </em>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">7.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>No  of Packages </em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <em>
                          <xsl:value-of select="number(sum(././Rolls/RollItem/TotalRoll))" />
                          Rolls
                        </em>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">8.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>Cargo  Weight</em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <em>
                          <netwt>
                            <xsl:value-of select="./NETWT" />
                          </netwt>
                          Kgs.
                        </em>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">9.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>Weight  of Packing Materials / Pallet weight etc…</em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                          
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">10.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>Total  Weight </em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                          
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">11.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>Weight  slip no. if any</em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <em>N.A.</em>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">12.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>Date  &amp; Time for Weight</em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <em>N.A.</em>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">13.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>Type(Normal/Hazardous/Others)</em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <em>NORMAL</em>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">14.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>If  Hazardous, UN No., IMDG class</em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <em>N.A.</em>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="border-right: solid
1px #ccc; border-bottom: solid 1px #ccc; border-left: solid 1px #ccc;">15.</td>
                      <td valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <p>
                          <em>Remarks  if any</em>
                        </p>
                      </td>
                      <td align="left" valign="top" style="border-right: solid 1px #ccc; border-bottom: solid 1px #ccc;">
                        <em>(Inv.#  2/22-23)</em>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style="">  </td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style="font-size: 11px">
                        <p>
                          In  accordance with International
                          Maritime Organization (IMO) regulations amendment
                          to SOLAS, effective July 1, 2016,
                          in Chapter VI, paragraph six; the amendment  indicates
                          that shippers must verify the Gross
                          Mass of a packed Export container  prior to
                          the vessel being loaded.   In
                          completing and signing this  certificate, you
                          hereby acknowledge and consent to
                          the accuracy of information  for <u>V</u>erified
                          <u>G</u>ross <u>M</u>ass submission
                          which Om Shipping  Agencies (P) Ltd. will submit
                          to steamship line operators, subcontractors
                          and  or terminals.  
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style="">
                        <p>
                          <strong>
                            <companyname>
                              <xsl:value-of select="./COMPANYNAME" />
                            </companyname>
                          </strong>    hereby
                          agrees  that you, as the shipper
                          or record, shall be responsible
                          for the accuracy and  timeliness of VGM information
                          provided herein.   <strong>
                            Om
                            Shipping Agencies (P) Ltd.
                          </strong> shall not
                          be held liable in contract,  tort,
                          statute or in any way whatsoever for any delay,
                          any penalties, damages,  demurrage,
                          claims/losses and all kinds of subsequent costs
                          as a result of <strong>
                            <companyname>
                              <xsl:value-of select="./COMPANYNAME" />
                            </companyname>
                          </strong>     failure to submit
                          an accurate VGM in the correct format
                          and  standards or within the set cut-off periods.    <strong>
                            ARTLINE
                            CREATION
                          </strong>agrees, accepts
                          and undertakes to indemnify,  make good any
                          loss/damage and hold harmless <strong>
                            Om
                            Shipping Agencies (P) Ltd.
                          </strong>, its
                          employees, officers,  representatives,
                          agents and sub-agents against all claims,
                          losses, damages,  costs and third
                          party claims arising from failing to adhere to
                          the  aforementioned requirement.
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style="">  </td>
                    </tr>
                    <tr>
                      <td colspan="3" align="right" valign="top"
                          style="">
                        <p align="">
                          <strong>
                            <u>
                              Signature of
                              authorized person of the shippe
                            </u>r
                          </strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style="">  </td>
                    </tr>
                    <tr>
                      <td colspan="2" align="right" valign="top"
                          style="">
                        <p>
                          <strong>Co. Stamp </strong>:
                        </p>
                      </td>
                      <td valign="top">
                        <p>


                          <img width="264" height="106" alt="">
                            <xsl:attribute name="src">
                              <xsl:value-of select="./signature" />
                            </xsl:attribute>
                          </img>




                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style="">
                        <p align="right">
                          <strong>
                            <u>
                              S.K.Srivastava
                              (Manager Shipping) Mob.# 07705920107
                            </u>
                          </strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style="font-size: 13px"></td>
                    </tr>
                    <tr>
                      <td colspan="3" valign="top" style=""></td>
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
