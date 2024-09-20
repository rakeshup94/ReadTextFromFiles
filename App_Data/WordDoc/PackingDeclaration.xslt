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
          <table width="700" border="0" align="center" cellpadding="0" cellspacing="0" style="">
            <tr>
              <td valign="top" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;
                            float: left; font-style: normal;">
                <table width="700" border="0" cellspacing="0" cellpadding="0">
                  <tbody>
                    <tr>
                      <td colspan="10" valign="top" style="">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <tbody>
                            <tr>
                              <td width="57%" rowspan="5" valign="top">
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
                                M<strong>anufacturer &amp; Exporter of</strong>     <br/>
                                Hand Woven Woolen Kelim/Durries/Soumak, Hand Knotted Woollen Carpets, Hand Tufted,
                                Hand Knotted Jute Carpet, Hand Woven Jute Durries / Soumak etc.

                              </td>
                              <td width="16%" align="right" valign="top">
                                <strong>OFFICE</strong> :
                              </td>
                              <td width="27%" valign="top">

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
                                <strong>FACT</strong> :
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
                                <strong>PHONE</strong> :
                              </td>
                              <td>
                                <p>
                                  FACT :
                                  <comptel>
                                    <xsl:value-of select="./COMPTEL" />
                                  </comptel>
                                </p>
                              </td>
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>E-mail </strong>:
                              </td>
                              <td>
                                <email>
                                  <xsl:value-of select="./EMAIL" />
                                </email>
                              </td>
                            </tr>
                            <tr>
                              <td align="right" valign="top">
                                <strong>TIN	 </strong>:
                              </td>
                              <td>
                                <p>
                                  <tinno>
                                    <xsl:value-of select="./TinNo" />
                                  </tinno>
                                </p>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </td>

                    </tr>

                    <tr>
                      <td colspan="10" align="center" valign="top" style="">
                        <p>
                          <u>PACKING DECLARATION</u>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" align="left" valign="top" style="">
                        Consignment identifier or numerical
                        link:_____________
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" align="left" valign="top" style="">
                        BILL OF  LADING NO : <strong>
                          <u>
                            <xsl:value-of select="./Blno" />
                            ETD :
                            <xsl:value-of select="./INVOICEDATE" />
                            . Container  No.

                            <xsl:value-of select="./ContainerNo" />


                          </u>
                        </strong>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" align="left" valign="top" style="">
                        <p>
                          <u>Vessel Name: </u>
                          <strong>
                            <u>
                              <xsl:value-of select="./VesselName" />
                            </u>
                          </strong>
                          <strong>
                            Voyage Number:<u>
                              152E                       
                            </u>
                          </strong>
                          <strong></strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" align="left" valign="top" style="">
                        <p>


                          <strong>
                            Importer

                            <p>
                              <xsl:value-of select="./TBUYEROCONSIGNEE" />
                            </p>




                          </strong>
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" align="left" valign="top" style="">
                        <strong>
                          UNACCEPTABLE PACKAGING MATERIAL
                          STATEMENT
                        </strong>
                        <p>
                          (Packaging material such as straw, peat, hay, chaff, used fruit
                          &amp; vegetable cartons  are not permitted)
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" align="left" valign="top" style="">
                        <p>
                          Q1 Will unacceptable  packaging materials been used as  packaging or dunnage in
                          the
                          consignment  be covered by this document?
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style="">    </td>
                    </tr>
                    <tr>
                      <td valign="top" style="">A1</td>
                      <td valign="top" style="">YES </td>
                      <td align="center" valign="middle" style="" width="71">
                        <div style="width: 25px; height: 25px; border: solid 1px #333; text-align: center;
                                                padding-top: 5px">
                        </div>
                      </td>
                      <td align="center" valign="middle" style="" width="171">NO</td>
                      <td align="center" valign="middle" style="" width="71">
                        <div style="width: 25px; height: 25px; border: solid 1px #333; text-align: center;
                                                padding-top: 5px">
                          X
                        </div>
                      </td>
                      <td colspan="2" align="right" valign="middle" style="">    </td>
                      <td align="center" valign="middle" style="">    </td>
                      <td align="right" valign="top" style="padding-top: 15px">    </td>
                      <td align="center" valign="middle" style="">    </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style="">
                        <strong>TIMBER/BAMBOO PACKAGING/DUNNAGE STATEMENT</strong>
                        <br/>
                        (Timber/bamboo packaging/dunnage includes: crates, cases, pallets, skids, and any
                        other timber or bamboo used as a shipping aid)


                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="">Q2</td>
                      <td colspan="9" valign="top" style="">
                        <p>
                          Has timber/bamboo packaging/dunnage been used in consignments covered  by this document?
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td width="31" valign="top" style="">A2</td>
                      <td width="60" valign="top" style="">
                        <p>YES Timber</p>
                      </td>
                      <td align="center" valign="middle" style="" width="71">
                        <div style="width: 25px; height: 25px; border: solid 1px #333; text-align: center;
                                                padding-top: 5px">
                        </div>
                      </td>
                      <td width="171" align="center" valign="middle" style="">YES Bamboo</td>
                      <td align="center" valign="middle" style="" width="71">
                        <div style="width: 25px; height: 25px; border: solid 1px #333; text-align: center;
                                                padding-top: 5px">
                        </div>
                      </td>
                      <td width="10" align="center" valign="middle" style=""></td>
                      <td width="96" align="left" valign="top" style="padding-top: 15px">
                        <p>NO</p>
                        (nil timber/bamboo
                      </td>
                      <td align="center" valign="middle" style="" width="119">
                        <div style="width: 25px; height: 25px; border: solid 1px #333; text-align: center;
                                                padding-top: 5px">
                          X
                        </div>
                      </td>
                      <td width="217" align="right" valign="top" style="padding-top: 15px">    </td>
                      <td width="54" align="center" valign="middle" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style="">
                        <strong>
                          TREATMENT CERTIFICATION <u>
                            (ONLY IF  TIMBER/BAMBOO
                            PACKAGING/DUNNAGE IS DECLARED IN QUESTION 2)
                          </u>
                        </strong>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style="">    </td>
                    </tr>
                    <tr>
                      <td valign="top" style="">Q3</td>
                      <td colspan="9" valign="top" style="">
                        <p>
                          All timber/bamboo packaging/dunnage used in the  consignment has been (Please Indicate
                          below)
                        </p>
                      </td>
                    </tr>
                    <tr>
                      <td width="31" valign="top" style="">A2</td>
                      <td colspan="7" valign="top" style="">
                        Treated and  marked in compliance with ISPM 15
                        <p>(Note: ISPM 15 is only  applicable to timber packaging) Or</p>
                      </td>
                      <td colspan="2" align="left" valign="top" style="">

                        <div style="width: 25px; height: 25px; border: solid 1px #333; text-align: center;
                                                padding-top: 5px">
                          X
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="">    </td>
                      <td colspan="7" valign="top" style="">
                        Treated in compliance with Department of Agriculture
                        and Water  Resources treatment requirements
                        <p>
                          (With accompanying treatment certificate)<br />
                          Or
                        </p>
                      </td>
                      <td colspan="2" align="left" valign="top" style="">
                        <div style="width: 25px; height: 25px; border: solid 1px #333; text-align: center;
                                                padding-top: 5px">
                          X
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td valign="top" style="">    </td>
                      <td colspan="7" valign="top" style="">
                        <p>
                          <strong>Indicate goods not  Treated</strong>
                        </p>
                      </td>
                      <td colspan="2" align="left" valign="top" style="">
                        <div style="width: 25px; height: 25px; border: solid 1px #333; text-align: center;
                                                padding-top: 5px">
                          X
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style="">
                        <p>
                          <strong>CONTAINER CLEANLINESS STATEMENT </strong>(<strong>
                            for FCL/X consignments only
                          </strong>- statement to be removed  from document when not relevant)
                          <br />
                          The container(s) covered by  this document has/have been cleaned and is/are free
                          from material of animal  and/or plant origin and
                        </p>
                        soil.
                      </td>
                    </tr>
                    <tr>
                      <td colspan="10" valign="top" style="">    </td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="">
                        Signed :
                        <p>    </p>
                      </td>
                      <td colspan="4" align="left" valign="middle" style="">
                        
                        
                         <xsl:if test="./signature!= ''">
                          <img width="264" height="106" alt="">
                            <xsl:attribute name="src">
                              <xsl:value-of select="./signature" />
                            </xsl:attribute>
                          </img>
                        </xsl:if>
                      
                        __________________________________________
                        (Company Employee
                      </td>
                      <td width="96" align="left" valign="top" style="padding-top: 15px">
                        <p>Printed name :</p>
                      </td>
                      <td colspan="2" align="left" valign="top" style="">
                        S.K.Srivastava
                        <br/>
                        _________________________
                        <br/>
                        (Employee name)
                      </td>
                      <td width="54" align="center" valign="middle" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="2" valign="top" style="">
                        (Job Title:<u> </u>
                        <p>    </p>
                      </td>
                      <td colspan="4" align="left" valign="middle" style="">
                        Manager Shipping
                        <br/>
                        __________________________________________
                        (Company Employee
                      </td>
                      <td width="96" align="left" valign="top" style="padding-top: 15px">
                        <p>Date of issue :</p>
                      </td>
                      <td colspan="2" align="left" valign="top" style="">


                        <xsl:value-of select="./CreatedOn" />
                        <br/>
                        _________________________
                        <br/>
                        (DD/MM/YYYY)
                      </td>
                      <td width="54" align="center" valign="middle" style=""></td>
                    </tr>
                    <tr>
                      <td colspan="9" valign="top" style="font-size: 13px"></td>
                    </tr>
                    <tr>
                      <td colspan="9" valign="top" style=""></td>
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
