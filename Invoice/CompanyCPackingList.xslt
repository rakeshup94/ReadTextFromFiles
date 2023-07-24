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

          .auto-style3 {
          width: 81px;
          }

          .auto-style4 {
          border-style: none;
          border-color: inherit;
          border-width: medium;
          height: 246px;
          }

          .auto-style5 {
          height: 246px;
          }
        </style>
      </head>
      <body>
        <invoicelist>
          <xsl:for-each select="/InvoiceList/InvoiceItem">
            <invoiceitem>
              <table width="700" border="1" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #333">
                <tr>
                  <td colspan="24" height="15px"
                      style="padding-left: 5px; text-align: center; color: #000!important;">
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
                  <td valign="top" colspan="24">
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
                  <td valign="top" colspan="24">
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
                  <td>Roll No.</td>
                  <td>Total Rolls</td>
                  <td>Piece Per Roll</td>
                  <td>Order No.</td>
                  <td>Quality</td>
                  <td>Article Name</td>
                  <td>Article No.</td>
                  <td>Colour</td>
                  <td>Total Piece</td>
                  <td>Size In (Ft.  inch)</td>
                  <td>Area Per Piece In Sq. Ft.</td>
                  <td>Total Area Sq. Ft.</td>
                  <td>Size In CM</td>
                  <td>Area Per Piece In Sq. Mtr.</td>
                  <td>Total Area Sq. Mtr.</td>
                  <td>Barcode Line</td>
                  <td>Discription Line</td>
                  <td>Approx. Net Weight Per Piece</td>
                  <td>Approx.Total Net Weight </td>
                  <td>Approx. Gross Weight Per Piece</td>
                  <td>Approx.Total Gross Weight </td>
                  <td>Approx.Dimension in CM </td>
                  <td>Approx.CBM Per Roll </td>
                  <td>Approx. Total CBM  </td>
                </tr>
                <rolls>
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
                          <xsl:value-of select="AreaFT*TotalPcs" />
                        </td>
                        <td>
                          <xsl:value-of select="SizeMtr" />
                        </td>
                        <td>
                          <xsl:value-of select="AreaMtr" />
                        </td>
                        <td>
                          <xsl:value-of select="AreaMtr*TotalPcs" />
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
                          <xsl:value-of select="number(SinglePcsNetWt)"/>
                        </td>
                        <td>
                          <xsl:value-of  select="SinglePcsNetWt*TotalPcs"  />
                        </td>
                        <td>
                          <xsl:value-of select="SinglePcsGrossWt" />
                        </td>
                        <td>
                          <xsl:value-of select="SinglePcsGrossWt*TotalPcs" />
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
                          <xsl:value-of  select="CBM*TotalRoll" />
                        </td>
                      </tr>
                    </rollitem>
                  </xsl:for-each>
                </rolls>
                <tr>
                  <td>
                    Total
                  </td>
                  <td>
                    <xsl:value-of select="number(sum(./Rolls/RollItem/TotalRoll))" />
                  </td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <xsl:value-of select="number(sum(./Rolls/RollItem/TotalPcs))" />
                  <td>
                    <xsl:value-of select="number(sum(./Rolls/RollItem/TotalPcs))" />
                  </td>
                  <td>
                  </td>
                  <td>
                  </td>
                  <td>
                    <xsl:call-template name="TotalAreaFT">
                      <xsl:with-param name="nodeSet" select="./Rolls/RollItem" />
                    </xsl:call-template>
                  </td>
                  <td>
                  </td>
                  <td>
                  </td>
                  <td>
                    <xsl:call-template name="TotalAreaMtr">
                      <xsl:with-param name="nodeSet" select="./Rolls/RollItem" />
                    </xsl:call-template>
                  </td>
                  <td>
                  </td>
                  <td>
                  </td>
                  <td>
                  </td>
                  <td>
                    <xsl:call-template name="TotalNetWt">
                      <xsl:with-param name="nodeSet" select="./Rolls/RollItem" />
                    </xsl:call-template>
                  </td>
                  <td>
                  </td>
                  <td>
                    <xsl:call-template name="TotalGrossWt">
                      <xsl:with-param name="nodeSet" select="./Rolls/RollItem" />
                    </xsl:call-template>
                  </td>
                  <td>
               

                  </td>
                  <td>
                  </td>
                  <td>
                    <xsl:call-template name="TotalCBM">
                      <xsl:with-param name="nodeSet" select="./Rolls/RollItem" />
                    </xsl:call-template>
                  </td>
                </tr>
                <tr>
                  <td colspan="24" class="noBorder"></td>
                </tr>
                <tr>
                  <td colspan="24" class="noBorder"></td>
                </tr>
                <tr>
                  <td colspan="24" class="noBorder"></td>
                </tr>
                <tr>
                  <td colspan="16" valign="middle" class="auto-style4"></td>
                  <td colspan="8" class="auto-style5"></td>
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
        <xsl:value-of select="$tempSum" />
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
        <xsl:value-of select="$tempSum" />
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
        <xsl:value-of select="$tempSum" />
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
        <xsl:value-of select="$tempSum" />
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
        <xsl:value-of select="$tempSum" />
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
