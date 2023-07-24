<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:myutils="pda:MyUtils">
  <xsl:output method="xml" indent="yes" />
  <xsl:key name="groupByContainer" match="/InvoiceList/InvoiceItem/Rolls/RollItem"
      use="concat(./Quality,./CustomerOrderNo)" />

  <xsl:template match="Rolls">
    <sum>
      <xsl:value-of select="sum(RollItem/(AreaFT * TotalPcs))" />
    </sum>
  </xsl:template>

  <xsl:template match="Rolls">
    <sum>
      <xsl:value-of select="sum(RollItem/(AreaFT * TotalPcs))" />
    </sum>
  </xsl:template>
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




          table.main { table-layout:fixed; }
          table.main td {
          width:1200px;
          }







          table.fixed
          {
          table-layout:fixed;
          width:1000px;
          }
          td,th
          {

          overflow: hidden;
          word-wrap:break-word;
          text-align: left;
          }

          th
          {
          width:40px;
     
          vertical-align: bottom;
          }

          <!--table.fixed th:nth-of-type(22)
          {
          width:100px;
          font-size: xx-small;
          }-->

          table.fixed td:nth-of-type(22)
          {
          width:100px;
          font-size: xx-small;
          }

        </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table class="main" border="1" align="center" cellpadding="0" cellspacing="0">
                <tr>





                  <td align="center" >





                    <h4 style="font-family: inherit; font-weight: 500; color: #000 !important; margin-top: 10px;
                                        margin-bottom: 10px; font-size: 18px; font-family: Gotham, Helvetica, Arial, sans-serif;">
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
                        <strong>Export Packing List</strong>
                      </p>
                    </h4>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      Packing List -
                      <xsl:value-of select="number(sum(./Rolls/RollItem/TotalRoll))" />
                      Rolls, Containing-
                      <xsl:value-of select="number(sum(./Rolls/RollItem/TotalPcs))" />
                      Piece,Roll Nos.
                      <xsl:for-each select="./Rolls/RollItem">
                        <xsl:if test="position() = 1">
                          <xsl:value-of select="Rollfrom" />
                          /
                        </xsl:if>
                        <xsl:if test="position() = last()">
                          <xsl:value-of select="RollTo" />
                        </xsl:if>
                      </xsl:for-each>
                    </p>
                  </td>
                </tr>
                <tr>
                  <td valign="top">
                    <p>
                      Invoice No.
                      <tinvoiceno>
                        <xsl:value-of select="./TINVOICENO" />
                      </tinvoiceno>
                      ,Dated :-
                      <invoicedate>
                        <xsl:value-of select="./INVOICEDATE" />
                      </invoicedate>
                      ,Order No.:-
                      <totorder>
                        <xsl:value-of select="./totorder" />
                      </totorder>
                    </p>
                  </td>
                </tr>

                <tr>
                  <td>

                    <table class="fixed" border="1" align="center" cellpadding="0" cellspacing="0">
                      <thead>
                        <tr>
                          <th>Roll No.</th>
                          <th>Total Rolls</th>
                          <th>Piece Per Roll</th>
                          <th>Order No.</th>
                          <th>Quality</th>
                          <th>Article <br/>Name</th>
                          <th>Article No.</th>
                          <th>Colour</th>
                          <th>Total Piece</th>
                          <th>Size In (Ft.  inch)</th>
                          <th>Area Per Piece In Sq. Ft.</th>
                          <th>Total Area Sq. Ft.</th>
                          <th>Size In CM</th>
                          <th>Area Per Piece In Sq. Mtr.</th>
                          <th>Total Area Sq. Mtr.</th>
                          <th>Barcode Line</th>
                          <th>Discription Line</th>
                          <th>Approx. Net Weight Per Piece</th>
                          <th>Approx.Total Net Weight</th>
                          <th>Approx. Gross Weight Per Piece</th>
                          <th>Approx.Total Gross Weight</th>
                          <th>Approx.Dimension in CM</th>
                          <th>Approx.CBM Per Roll</th>
                          <th>Approx. Total CBM </th>
                        </tr>
                      </thead>
                      <tbody>
                        <xsl:for-each select="./Rolls/RollItem">
                          <rollitem>
                            <tr>
                              <td>
                                <xsl:value-of select="Rollfrom" />
                                --
                                <xsl:value-of select="RollTo" />
                              </td>
                              <xsl:variable name="TotalRoll" select="number(TotalRoll)" />
                              <td>
                                <xsl:value-of select="$TotalRoll" />
                              </td>
                              <td>
                                <xsl:value-of select="RPcs" />
                              </td>
                              <td>
                                <xsl:value-of select="CustomerOrderNo" />
                              </td>
                              <td>
                                <xsl:value-of select="Quality" />
                              </td>
                              <td>
                                <xsl:value-of select="DesignName" />
                              </td>
                              <td>
                                <xsl:value-of select="DESIGN" />
                              </td>
                              <td>
                                <xsl:value-of select="COLOR" />
                              </td>
                              <td>
                                <xsl:value-of select="number(TotalPcs)" />
                              </td>
                              <td>
                                <xsl:value-of select="SizeFT" />
                              </td>
                              <td>
                                <xsl:value-of select="AreaFT" />
                              </td>
                              <td>

                                <xsl:value-of select='format-number(AreaFT*TotalPcs, "#.00")' />
                              </td>
                              <td>
                                <xsl:value-of select="SizeMtr" />
                              </td>
                              <td>
                                <xsl:value-of select="AreaMtr" />
                              </td>
                              <td>
                                <xsl:value-of  select='format-number(AreaMtr*TotalPcs, "#.00")' />
                              </td>
                              <td>
                                Barcode Line
                                <xsl:value-of select="RollTo" />
                              </td>
                              <td>
                                Discription Line
                                <xsl:value-of select="RollTo" />
                              </td>
                              <td>
                                <xsl:value-of select="number(SinglePcsNetWt)" />
                              </td>
                              <td>
                                <xsl:value-of select='format-number(SinglePcsNetWt*TotalPcs, "#.00")'  />
                              </td>
                              <td>
                                <xsl:value-of select="SinglePcsGrossWt" />
                              </td>
                              <td>
                                <xsl:value-of   select='format-number(SinglePcsGrossWt*TotalPcs, "#.00")'  />
                              </td>
                              <td>
                                <xsl:value-of select="L" />
                                X

                                <xsl:value-of select="W" />
                                X
                                <xsl:value-of select="H" />

                              </td>
                              <td>
                                <xsl:value-of select="CBM" />
                              </td>

                              <td>
                                <xsl:value-of  select='format-number(CBM*TotalRoll, "#.00")'  />
                              </td>
                            </tr>
                          </rollitem>
                        </xsl:for-each>

                        <tr>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                        </tr>
                      </tbody>
                      <tfoot>
                        <tr>
                          <td>
                            Total
                          </td>
                          <td>
                            <xsl:value-of select="number(sum(./Rolls/RollItem/TotalRoll))" />
                          </td>
                          <td colspan="6"></td>

                          <td>
                            <xsl:value-of select="number(sum(./Rolls/RollItem/TotalPcs))" />
                          </td>
                          <td colspan="2"></td>
                          <td>
                            <xsl:call-template name="TotalAreaFT">
                              <xsl:with-param name="nodeSet" select="./Rolls/RollItem" />
                            </xsl:call-template>
                          </td>
                          <td colspan="2"></td>
                          <td>
                            <xsl:call-template name="TotalAreaMtr">
                              <xsl:with-param name="nodeSet" select="./Rolls/RollItem" />
                            </xsl:call-template>
                          </td>
                          <td colspan="3"></td>
                          <td>
                            <xsl:call-template name="TotalNetWt">
                              <xsl:with-param name="nodeSet" select="./Rolls/RollItem" />
                            </xsl:call-template>
                          </td>
                          <td></td>
                          <td>
                            <xsl:call-template name="TotalGrossWt">
                              <xsl:with-param name="nodeSet" select="./Rolls/RollItem" />
                            </xsl:call-template>
                          </td>
                          <td colspan="2"></td>
                          <td>
                            <xsl:call-template name="TotalCBM">
                              <xsl:with-param name="nodeSet" select="./Rolls/RollItem" />
                            </xsl:call-template>
                          </td>
                        </tr>

                      </tfoot>
                    </table>

                  </td>
                </tr>













                <tr>
                  <td class="noBorder"></td>
                </tr>
                <tr>
                  <td class="noBorder"></td>
                </tr>
                <tr>
                  <td  class="noBorder"></td>
                </tr>
                <tr>
                  <td valign="middle" ></td>

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









  <xsl:template name="TotalAreaFT">
    <xsl:param name="nodeSet" />
    <xsl:param name="tempSum" select="0" />
    <xsl:choose>
      <xsl:when test="not($nodeSet)">
        <xsl:value-of select='format-number($tempSum, "#.00")' />
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="product" select="$nodeSet[1]/AreaFT * $nodeSet[1]/TotalPcs" />
        <xsl:call-template name="TotalAreaFT">
          <xsl:with-param name="nodeSet" select="$nodeSet[position() > 1]" />
          <xsl:with-param name="tempSum" select="$tempSum + $product" />
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template name="TotalAreaMtr">
    <xsl:param name="nodeSet" />
    <xsl:param name="tempSum" select="0" />
    <xsl:choose>
      <xsl:when test="not($nodeSet)">
        <xsl:value-of  select='format-number($tempSum, "#.00")' />
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="product" select="$nodeSet[1]/AreaMtr * $nodeSet[1]/TotalPcs" />
        <xsl:call-template name="TotalAreaMtr">
          <xsl:with-param name="nodeSet" select="$nodeSet[position() > 1]" />
          <xsl:with-param name="tempSum" select="$tempSum + $product" />
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>




  <xsl:template name="TotalNetWt">
    <xsl:param name="nodeSet" />
    <xsl:param name="tempSum" select="0" />
    <xsl:choose>
      <xsl:when test="not($nodeSet)">
        <xsl:value-of  select='format-number($tempSum, "#.00")' />
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="product" select="$nodeSet[1]/SinglePcsNetWt * $nodeSet[1]/TotalPcs" />
        <xsl:call-template name="TotalNetWt">
          <xsl:with-param name="nodeSet" select="$nodeSet[position() > 1]" />
          <xsl:with-param name="tempSum" select="$tempSum + $product" />
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>


  <xsl:template name="TotalGrossWt">
    <xsl:param name="nodeSet" />
    <xsl:param name="tempSum" select="0" />
    <xsl:choose>
      <xsl:when test="not($nodeSet)">
        <xsl:value-of  select='format-number($tempSum, "#.00")' />
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="product" select="$nodeSet[1]/SinglePcsGrossWt * $nodeSet[1]/TotalPcs" />
        <xsl:call-template name="TotalGrossWt">
          <xsl:with-param name="nodeSet" select="$nodeSet[position() > 1]" />
          <xsl:with-param name="tempSum" select="$tempSum + $product" />
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>





  <xsl:template name="TotalCBM">
    <xsl:param name="nodeSet" />
    <xsl:param name="tempSum" select="0" />
    <xsl:choose>
      <xsl:when test="not($nodeSet)">
        <xsl:value-of  select='format-number($tempSum, "#.00")' />
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="product" select="$nodeSet[1]/CBM * $nodeSet[1]/TotalRoll" />
        <xsl:call-template name="TotalCBM">
          <xsl:with-param name="nodeSet" select="$nodeSet[position() > 1]" />
          <xsl:with-param name="tempSum" select="$tempSum + $product" />
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>



</xsl:stylesheet>
