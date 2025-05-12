<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <!--Template definition-->
  <xsl:template name="dots" match="/">
    <!--Html opening tag-->
    <xsl:param name="i" select="0" />
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Emailer</title>
      </head>
      <body>
        <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" style="border:solid 1px #ccc;">
          <xsl:for-each select="BookingResponse">
            <xsl:variable name="max1" select="UsrType" />
            <tr>
              <td bgcolor="#FFFFFF">
                <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td style="font-family: arial; font-size: 14px; float:left; font-style: normal; ">
                      <table width="780px" cellpadding="0" cellspacing="0" style="font-family: arial  ;font-size: 14px;color: #333; ">
                        <tr>
                          <td colspan="2" valign="top" height="25" />
                        </tr>
                        <tr>
                          <xsl:for-each select="TransferBookings/TransferBooking/SubAgent/AgencyInfo">
                            <xsl:if test="Logo!= ''">
                              <td width="220" valign="top">
                                <img height="50" alt="">
                                  <xsl:attribute name="src">
                                    <xsl:value-of select="Logo" />
                                  </xsl:attribute>
                                </img>
                              </td>
                            </xsl:if>
                          </xsl:for-each>
                        
                          <td align="right" valign="top" style="font-family: arial; font-size: 22px; padding-right: 5px; font-style: normal; ">
                            <strong>
                              <xsl:variable name="Status" select="TransferBookings/TransferBooking/BookingStatus" />
                              Transfer <xsl:value-of select="$Status" />
                            </strong>
                          </td>
                        </tr>
                        <tr>
                          <td width="409" valign="top">
                            <table width="369" border="0" cellspacing="0" cellpadding="0" style="font-family: arial; font-size: 15px; float:left; font-style: normal;">
                              <tbody>
                                <tr>
                                  <td style="padding: 3px">
                                    <strong>Agent Details</strong>
                                  </td>
                                </tr>
                                <tr>
                                  <xsl:for-each select="TransferBookings/TransferBooking/SubAgent/AgencyInfo">
                                    <xsl:if test="AgencyName != ''">
                                      <td width="260" valign="top">
                                        <xsl:value-of select="AgencyName" />
                                        <br />
                                        <xsl:if test="AgencyAddress/Address != ''">
                                          <xsl:value-of select="AgencyAddress/Address" />
                                          <xsl:if test="AgencyAddress/City != ''">
                                            ,                                      <xsl:value-of select="AgencyAddress/City" />
                                          </xsl:if>
                                          <xsl:if test="AgencyAddress/State != ''">
                                            ,                                      <xsl:value-of select="AgencyAddress/State" />
                                          </xsl:if>
                                          <xsl:if test="AgencyAddress/Country != ''">
                                            ,                                      <xsl:value-of select="AgencyAddress/Country" />
                                          </xsl:if>
                                          <xsl:if test="AgencyAddresss/PostalCode != ''">
                                            <xsl:value-of select="AgencyAddress/PostalCode" />
                                          </xsl:if>
                                        </xsl:if>
                                        <xsl:if test="Contact != ''">
                                          , <br /><strong>Ph.</strong><xsl:value-of select="Contact" />
                                        </xsl:if>
                                        <xsl:if test="Email != ''">
                                          <br />
                                          <strong>Email: </strong>
                                          <xsl:value-of select="Email" />
                                        </xsl:if>
                                      </td>
                                    </xsl:if>
                                  </xsl:for-each>
                                </tr>
                              </tbody>
                            </table>
                          </td>
                          <td width="369" align="right" valign="top">
                            <xsl:for-each select="TransferBookings/TransferBooking">
                              <table width="369" border="0" align="right" cellpadding="0" cellspacing="0" style="font-family: arial; font-size: 15px; float:left; font-style: normal;">
                                <tbody>
                                  <xsl:if test="BookingDate!=''">
                                    <tr>
                                      <td align="right" style="padding: 3px;">
                                        Booking Date: <strong>
                                          <xsl:value-of select="BookingDate" />
                                        </strong>
                                      </td>
                                    </tr>
                                  </xsl:if>
                                  <xsl:if test="BookingId!=''">
                                    <tr>
                                      <td align="right" style="padding: 3px;">
                                        Booking ID: <strong>
                                          <xsl:value-of select="BookingId" />
                                        </strong>
                                      </td>
                                    </tr>
                                  </xsl:if>
                                  <xsl:if test="VoucherRefNo!=''">
                                    <tr>
                                      <td align="right" style="padding: 3px;">
                                        Reservation Ref No: <strong>
                                          <xsl:value-of select="VoucherRefNo" />
                                        </strong>
                                      </td>
                                    </tr>
                                  </xsl:if>
                                  <xsl:if test="AgentRefNo!=''">
                                    <tr>
                                      <td align="right" style="padding: 3px;">
                                        TA Ref No: <strong>
                                          <xsl:value-of select="AgentRefNo" />
                                        </strong>
                                      </td>
                                    </tr>
                                  </xsl:if>
                                </tbody>
                              </table>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </table>
                    </td>
                  </tr>
                  <tr>
                    <td height="5" />
                  </tr>
                  <tr>
                    <td style="font-family: arial; font-size: 14px; float:left; font-style: normal;  line-height: 20px;">
                      <xsl:for-each select="TransferBookings/TransferBooking/TransferDetails/ItineraryInfo/Itinerary">
                        <xsl:variable name="gstAdult" select="@Adults" />
                        <xsl:variable name="gstChild" select="@Children" />
                        <table width="780" border="0" cellspacing="0" cellpadding="0">
                          <tbody>
                            <xsl:if test="@Type='IN'">
                              <xsl:for-each select="GuestDetails/GuestInfo">
                                <xsl:if test="@FName!='' and @IsLead='true'">
                                  <tr>
                                    <td colspan="2" style="color:#fff !important;  padding: 8px;font-size: 20px;background-color:#059055 !important">Pax Details</td>
                                  </tr>
                                  <tr>
                                    <td width="114" style="padding: 2px">Lead Passenger:</td>
                                    <td width="666" style="padding: 2px">
                                      <xsl:if test="@Title!='' and @Title!='None' ">
                                        <xsl:value-of select="@Title" /> 
                                      </xsl:if>
                                      <xsl:if test="@FName!=''">
                                        <xsl:value-of select="@FName" /> 
                                      </xsl:if>
                                      <xsl:if test="@MName!=''">
                                        <xsl:value-of select="@MName" /> 
                                      </xsl:if>
                                      <xsl:if test="@LName!=''">
                                        <xsl:value-of select="@LName" />
                                      </xsl:if>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td width="114" style="padding: 2px">Mob. No.:</td>
                                    <td width="666" style="padding: 2px">
                                      <xsl:choose>
                                        <xsl:when test="@ContactNo !=''">
                                          <xsl:value-of select="@ContactNo" />
                                        </xsl:when>
                                        <xsl:otherwise>                                            -------                                          </xsl:otherwise>
                                      </xsl:choose>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td width="114" style="padding: 2px">Email Id:</td>
                                    <td width="666" style="padding: 2px">
                                      <xsl:choose>
                                        <xsl:when test="@Email !=''">
                                          <xsl:value-of select="@Email" />
                                        </xsl:when>
                                        <xsl:otherwise>                                            -------                                          </xsl:otherwise>
                                      </xsl:choose>
                                    </td>
                                  </tr>
                                </xsl:if>
                              </xsl:for-each>
                              <tr>
                                <td width="114" style="padding: 2px">No. of Pax:</td>
                                <td width="666" style="padding: 2px">
                                  <xsl:value-of select="$gstAdult" /> adults,<xsl:value-of select="$gstChild" /> children                                                                            <xsl:choose>
                                    <xsl:when test="$gstChild !=0">
                                      (<xsl:for-each select="GuestDetails/GuestInfo">
                                        <xsl:if test="@GuestType='Child'">
                                          <xsl:value-of select="@Age" />,
                                        </xsl:if>
                                      </xsl:for-each> yrs)
                                    </xsl:when>
                                  </xsl:choose>
                                </td>
                              </tr>
                            </xsl:if>
                          </tbody>
                        </table>
                      </xsl:for-each>
                    </td>
                  </tr>
                  <tr>
                    <td height="5" />
                  </tr>
                  <tr>
                    <td style="font-family: arial; font-size: 14px; float:left; font-style: normal;  line-height: 20px;">
                      <table width="780px" cellpadding="0" cellspacing="0" style="font-family: arial;font-size: 14px;color: #333;">
                        <tr>
                          <td colspan="4" style="color:#fff !important;  padding: 8px;font-size: 20px;background-color:#428bca !important">Transfer Details</td>
                        </tr>
                        <tr>
                          <td width="117" valign="top" style="color:#333 !important;  padding: 5px;border:solid 1px #eee;font-family: arial;font-size: 14px;">Vehicle</td>
                          <td width="157" valign="top" style="color:#333 !important; border:solid 1px #eee;padding: 5px;font-family: arial;font-size: 14px;"> Date/Time</td>
                          <td width="243" valign="top" style="color:#333 !important; border:solid 1px #eee;padding: 5px;font-family: arial;font-size: 14px;">From</td>
                          <td width="261" valign="top" style="color:#333 !important; border:solid 1px #eee;padding: 5px;font-family: arial;font-size: 14px;">To</td>
                        </tr>
                        <xsl:for-each select="TransferBookings/TransferBooking/TransferDetails/ItineraryInfo/Itinerary">
                          <tr>
                            <td width="180" valign="top" style="color:#333 !important;padding: 8px;border:solid 1px #eee;text-align: left;">
                              <strong>
                                <xsl:value-of select="VehicalList/Vehical" />
                              </strong>
                            </td>
                            <td width="157" valign="top" style="color:#333 !important;  border:solid 1px #eee;padding: 5px;font-family: arial;font-size: 14px;">
                              <xsl:choose>
                                <xsl:when test="@SuplPickUpTime !=''">
                                  <strong>
                                    <xsl:value-of select="@SuplTravelDate" />
                                  </strong><br/>Pick Up Time : <strong>
                                    <xsl:value-of select="@SuplPickUpTime" />
                                  </strong>
                                </xsl:when>
                                <xsl:otherwise>
                                  <strong>
                                    <xsl:value-of select="@Date" />
                                  </strong>                                    <br/>Pick Up Time : <strong>
                                    <xsl:value-of select="@PickUpTime" />
                                  </strong>
                                </xsl:otherwise>
                              </xsl:choose>
                            </td>
                            <td width="243" valign="top" style="color:#333 !important; border:solid 1px #eee;padding: 5px;font-family: arial;font-size: 14px;">
                              <strong>
                                <xsl:value-of select="PickUpPoint/@Name" />
                              </strong>
                              <xsl:if test="PickUpPoint/@PickUpType ='Airport'">
                                <br />Flight No : <strong>
                                  <xsl:value-of select="PickUpPoint/@EssentialNo" />
                                  <xsl:if test="PickUpPoint/@Detail!= ''">
                                    / <xsl:value-of select="PickUpPoint/@Detail" />
                                  </xsl:if>
                                </strong><br /> Flight Arrival Time :<strong>
                                  <xsl:value-of select="@PickUpTime" /> h.
                                </strong>
                              </xsl:if>
                              <xsl:if test="PickUpPoint/@PickUpType ='Accomodation'">
                                <br />
                                <xsl:if test="PickUpPoint/@Detail!= ''">
                                  <xsl:value-of select="PickUpPoint/@Detail" />
                                </xsl:if>
                              </xsl:if>
                            </td>
                            <td width="261" valign="top" style="color:#333 !important; border:solid 1px #eee;padding: 5px;font-family: arial;font-size: 14px;">
                              <strong>
                                <xsl:value-of select="DropOffPoint/@Name" />
                              </strong>
                              <xsl:if test="DropOffPoint/@DropOffType ='Airport'">
                                <br />Flight No : <strong>
                                  <xsl:value-of select="DropOffPoint/@EssentialNo" />
                                  <xsl:if test="DropOffPoint/@Detail != ''">
                                    / <xsl:value-of select="DropOffPoint/@Detail" />
                                  </xsl:if>
                                </strong><br /> Flight Departure Time :<strong>
                                  <xsl:value-of select="@DropOffTime" /> h.
                                </strong>
                              </xsl:if>
                              <xsl:if test="DropOffPoint/@DropOffType ='Accomodation'">
                                <br />
                                <xsl:if test="DropOffPoint/@Detail!= ''">
                                  <xsl:value-of select="DropOffPoint/@Detail" />
                                </xsl:if>
                              </xsl:if>
                            </td>
                          </tr>
                        </xsl:for-each>
                      </table>
                    </td>
                  </tr>
                  <tr>
                    <td height="12">
                      <xsl:if test="not(TransferBookings/TransferBooking/web) = '' and TransferBookings/TransferBooking/web != ''  ">
                        <tr>
                          <td height="10px" valign="top" style="text-align:center;color:#000 !important;  padding: 5px;font-size: 15px;font-family: arial;background-color:#e8ebec !important">
                            <xsl:variable name="WebURL" select="TransferBookings/TransferBooking/web/text()" />      Your pick-up time will be available <xsl:value-of select="TransferBookings/TransferBooking/web/@webTime" /> hours prior to your departure.<br /><span style="font-style: italic;">
                              Please access <a style="color:#0c8be8" target="_blank" href="{$WebURL}">
                                <u>
                                  <xsl:value-of select="$WebURL" />
                                </u>
                              </a>   to check this information.
                            </span>
                          </td>
                        </tr>
                      </xsl:if>
                    </td>
                  </tr>
                  <tr>
                    <td height="12" />
                  </tr>
                  <tr>
                    <td valign="top">
                      <table width="780px" cellpadding="0" cellspacing="0" style="font-family: arial;font-size: 14px;color: #333; line-height: 20px">
                        <tr>
                          <td style="color:#fff !important;  padding: 8px;font-size: 20px;background-color:#f2994b !important">Meeting Point and Emergency Contact information</td>
                        </tr>
                        <tr>
                          <td valign="top" style="color:#333 !important;  padding: 5px;border:solid 1px #eee;">
                            <xsl:for-each select="TransferBookings/TransferBooking/TransferDetails/ItineraryInfo/Itinerary">
                              <strong>
                                <xsl:value-of select="PickUpPoint/@Name" />
                              </strong>  - <strong>
                                <xsl:value-of select="DropOffPoint/@Name" />
                              </strong>           <br /><p style="margin-block-start: 5px; margin-block-end:5px; margin-bottom: 10px;">
                                <strong>Emergency Contact Number(s):</strong>
                                <xsl:variable name="EmergencyNo" select="ContactInfoList/ContactInfo/PhoneNumber[1]" />
                                <xsl:for-each select="ContactInfoList/ContactInfo">
                                  <xsl:variable name="EmNo" select="PhoneNumber" />                             <a style="color:#0c8be8" href="javascript:void(0)">
                                    <u>
                                      <xsl:value-of select="$EmNo" />
                                    </u>
                                  </a>
                                </xsl:for-each>
                              </p>          <p style="margin-block-start: 5px; margin-block-end:5px;margin-bottom: 10px;">
                                <xsl:value-of select="MeetingPoint" />
                              </p>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </table>
                    </td>
                  </tr>
                  <tr>
                    <td height="12">
                      <xsl:if test="TransferBookings/TransferBooking/Remark!= ''">
                        <tr>
                          <td height="10px" valign="top" style="color:#fff !important;  padding: 5px;font-size: 20px;background-color:#7e9fa9 !important">Special Request</td>
                        </tr>
                        <tr>
                          <td height="10" />
                        </tr>
                        <tr>
                          <td style="padding-left: 15px; margin-top: 10px;font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal;" valign="top">
                            1. <xsl:value-of select="TransferBookings/TransferBooking/Remark" />
                          </td>
                        </tr>
                      </xsl:if>
                    </td>
                  </tr>
                  <tr>
                    <td height="12" />
                  </tr>
                  <tr>
                    <td valign="top">
                      <xsl:if test="TransferBookings/TransferBooking/TransferDetails/TransferPolicy!=''">
                        <table width="780px" cellpadding="0" cellspacing="0" style="font-family: arial;font-size: 14px;color: #333; line-height: 20px">
                          <tr>
                            <td style="color:#fff !important;  padding: 8px;font-size: 20px;background-color:#5bc0de !important">Terms and conditions</td>
                          </tr>
                          <tr>
                            <td valign="top" style="color:#333 !important;  padding: 5px;border:solid 1px #eee;">
                              <strong>
                                bookable and payable by  <xsl:value-of select="TransferBookings/TransferBooking/VoucherRemark" />
                              </strong>
                            </td>
                          </tr>
                          <tr>
                            <td valign="top" style="color:#333 !important;  padding: 5px;border:solid 1px #eee;">
                              <xsl:variable name="status1" select="TransferBookings/TransferBooking/BookingType" />
                              <xsl:if test="$status1='Online'">
                                <xsl:for-each select="TransferBookings/TransferBooking/TransferDetails/ItineraryInfo/Itinerary">
                                  <xsl:if test="WaitingTime!='null'">
                                    <ul style="margin-bottom:0px;">
                                      <li>
                                        <strong>
                                          Waiting Time             <xsl:choose>
                                            <xsl:when test="@Type ='IN'">                                            (Outward)                                          </xsl:when>
                                            <xsl:when test="@Type ='OUT'">                                            (Return)                                          </xsl:when>
                                            <xsl:otherwise />
                                          </xsl:choose>                                                                                 :
                                        </strong>
                                        <ol>
                                          <xsl:if test="WaitingTime/@Domestic!=''">
                                            <li>
                                              <strong>
                                                Maximum waiting time for drivers in                                                                                            <xsl:if test="PickUpPoint/@PickUpType='Airport'">                                                     domestic arrivals                                                                                 </xsl:if>                                                    <xsl:if test="PickUpPoint/@PickUpType='Accomodation'">                                                                                      departures                                                  </xsl:if>                                                                                                                                                                                                -
                                              </strong>
                                              <xsl:value-of select="WaitingTime/@Domestic" />
                                            </li>
                                          </xsl:if>
                                          <xsl:if test="WaitingTime/@International!=''">
                                            <li>
                                              <strong>
                                                Maximum waiting time for drivers in                                                                               <xsl:if test="PickUpPoint/@PickUpType='Airport'">                                                                                international arrivals                                                  </xsl:if>                                                                                        <xsl:if test="PickUpPoint/@PickUpType='Accomodation'">                                                    departures                                                      </xsl:if>                                                                                                            -
                                              </strong>
                                              <xsl:value-of select="WaitingTime/@International" />
                                            </li>
                                          </xsl:if>
                                          <xsl:if test="WaitingTime/@Common!=''">
                                            <li>
                                              <strong> Maximum client waiting time - </strong>
                                              <xsl:value-of select="WaitingTime/@Common" />
                                            </li>
                                          </xsl:if>
                                        </ol>
                                      </li>
                                    </ul>
                                  </xsl:if>
                                </xsl:for-each>
                              </xsl:if>
                              <xsl:value-of select="TransferBookings/TransferBooking/TransferDetails/TransferPolicy" disable-output-escaping="yes" />
                            </td>
                          </tr>
                        </table>
                      </xsl:if>
                    </td>
                  </tr>
                </table>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>










    <html lang="en">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Transfer Voucher</title>
        <style>
          body {
          font-family: Arial, sans-serif;
          line-height: 1.6;
          color: #333333;
          background-color: #e9e9e9;
          margin: 0;
          padding: 0;
          }

          .email-container {
          max-width: 620px;
          margin: 0 auto;
          /*background: #ffffff;*/
          }

          .header {
          padding: 20px;
          border-bottom: 2px solid #f0f0f0;
          }

          .content {
          padding: 20px;
          }

          .section {
          margin-bottom: 25px;
          }

          .section-title {
          color: #2c3e50;
          font-size: 18px;
          font-weight: bold;
          margin-bottom: 10px;
          }

          .info-row {
          margin-bottom: 8px;
          }

          .urgent {
          background-color: #fff8e6;
          padding: 15px;
          border-left: 4px solid #ffc107;
          margin: 20px 0;
          font-weight: bold;
          }

          .contact-info {
          background-color: #f9f9f9;
          padding: 15px;
          border-radius: 5px;
          }

          .footer {
          padding: 20px;
          font-size: 14px;
          color: #777777;
          text-align: center;
          }
        </style>
      </head>
      <body>
        <xsl:for-each select="BookingResponse">

          <table class="email-container" width="100%" cellpadding="0" cellspacing="0" border="0">
          <tr>
            <td style="padding:20px 0;">
              <table style="background-color:#fff" width="100%" cellpadding="0" cellspacing="0" border="0">
                <tr>
                  <td class="" style="background-color: #175a87;padding: 12px 8px 12px 8px;">
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td align="center">
                          <h6 style="margin: 0;font-family: Arial, Helvetica, sans-serif;font-size: 20px;color: #fff;font-weight: 600;">

                            <xsl:variable name="Status" select="TransferBookings/TransferBooking/BookingStatus" />
                            Transfer <xsl:value-of select="$Status" />
                          
                          </h6>
                        </td>
                      </tr>
                      <tr>
                        <td style="" align="center">
                          <p style="margin:0;padding:0;font-family: Arial, Helvetica, sans-serif;font-size: 12px;color: #a8dafb;font-weight: 600;">
                            Booking ID:        <xsl:value-of select="TransferBookings/TransferBooking/BookingId" />
                          </p>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td valign="top" style="background-color: #eef8ff;border-bottom: 1px solid #b6cede;">
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td width="50%" valign="top" style="border-right: 1px solid #b6cede;padding: 10px;">
                          <table width="100%" cellpadding="0" cellspacing="0" border="0">
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px;color: #33393d;font-weight: 600;padding-bottom: 6px;">Agent Details</td>
                            </tr>
                            <tr>
                              <td>
                                <img src="logonew-1.png" height="50" style="max-height:50px" />
                              </td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">4Beacons</td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">Al mathar alshamali KSA , Riyadh , Saudi Arabia ,</td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                <b>Ph.</b> 966112472588
                              </td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                <b>Email:</b> Ali.basheer@4beacons.net
                              </td>
                            </tr>
                          </table>
                        </td>
                        <td width="50%" valign="top" style="padding: 10px;">
                          <table width="100%" cellpadding="0" cellspacing="0" border="0">
                            <tr>
                              <td align="right" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px;color: #33393d;font-weight: 600;padding-bottom: 6px;">Booking Summary</td>
                            </tr>
                            <tr>
                              <td align="right" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                Booking Date:<b> 06-05-2025</b>
                              </td>
                            </tr>
                            <tr>
                              <td align="right" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                Booking ID: <b>BEUEATF25BK000005</b>
                              </td>
                            </tr>
                            <tr>
                              <td align="right" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                Reservation Ref No: <b>207-14310868</b>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td class="">
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td style="border-top: 1px solid #ebebeb;padding: 12px 8px 12px 8px;">
                          <table>
                            <tr>
                              <td>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tbody>
                                    <tr>
                                      <td width="230">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td class="paxDtl" style="letter-spacing: 0px !important;border-left:8px solid #175a87;padding-left:10px;font-family:Arial;font-style:normal;font-weight:700;font-size:13px;line-height:18px;text-transform:uppercase;color:#4a4a4a">
                                                Passenger Details
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                      <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td style="border-top:1px solid #e7e7e7"></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td style="padding: 0 8px 12px 30px;">
                          <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                Lead Passenger:
                              </td>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                Mr Adarsh Tripath
                              </td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                Mobile Number:
                              </td>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                09027972157
                              </td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                Email
                              </td>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                Ali.basheer@4beacons.net
                              </td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                Number of Passengers:
                              </td>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                1 adults, 0 children
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>

                      <tr>
                        <td style="border-top: 1px solid #ebebeb;padding: 12px 8px 12px 8px;">
                          <table>
                            <tr>
                              <td>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tbody>
                                    <tr>
                                      <td width="230">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td class="paxDtl" style="letter-spacing: 0px !important;border-left:8px solid #175a87;padding-left:10px;font-family:Arial;font-style:normal;font-weight:700;font-size:13px;line-height:18px;text-transform:uppercase;color:#4a4a4a">
                                                Transfer Details
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                      <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td style="border-top:1px solid #e7e7e7"></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td style="padding: 0 10px 12px 30px;">
                          <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif;font-size: 12px;color: #6e6e6e;font-weight: 600;">
                                Transfer Details
                              </td>
                            </tr>
                            <tr>
                              <td style="border: 1px solid #e7e7e7;background-color:#fff;border-radius:6px;">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tr>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;">
                                      <span style="font-size: 12px;font-weight: 500;color: #707070;">Vehicle </span><br />
                                      Shuttle
                                    </td>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-left:1px solid #e7e7e7;border-right:1px solid #e7e7e7">
                                      <span style="font-size: 12px;font-weight: 500;color: #707070;">Date/Time</span><br />
                                      18-09-2025
                                    </td>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-right:1px solid #e7e7e7">
                                      <span style="font-size: 12px;font-weight: 500;color: #707070;">From</span><br />
                                      Rome Ciampino Airport
                                    </td>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;">
                                      <span style="font-size: 12px;font-weight: 500;color: #707070;">To</span><br />
                                      Sistina
                                    </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                            <tr>
                              <td height="20"></td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif;font-size: 12px;color: #6e6e6e;font-weight: 600;">
                                Flight Details
                              </td>
                            </tr>
                            <tr>
                              <td style="border: 1px solid #e7e7e7;background-color:#fff;border-radius:6px;">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tr>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;">
                                      <span style="font-size: 12px;font-weight: 500;color: #707070;">Flight No. </span><br />
                                      A58724
                                    </td>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-left:1px solid #e7e7e7;border-right:1px solid #e7e7e7">
                                      <span style="font-size: 12px;font-weight: 500;color: #707070;">Flight Name</span><br />
                                      Air India
                                    </td>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-right:1px solid #e7e7e7">
                                      <span style="font-size: 12px;font-weight: 500;color: #707070;">Flight Pickup Time</span><br />
                                      10:15 AM
                                    </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td style="background-color:#fff3e0">
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td style="padding: 12px 8px 12px 8px;">
                          <table>
                            <tr>
                              <td>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tbody>
                                    <tr>
                                      <td width="230">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td class="paxDtl" style="letter-spacing: 0px !important;border-left:8px solid #9e8763;padding-left:10px;font-family:Arial;font-style:normal;font-weight:700;font-size:13px;line-height:18px;text-transform:uppercase;color:#897047">
                                                Special Request
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                      <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td style="border-top:1px solid #e7e7e7"></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td style="padding: 0 8px 12px 30px;">
                          <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                jasjasl
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td>
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td style="border-top: 1px solid #ebebeb;padding: 12px 8px 12px 8px;">
                          <table>
                            <tr>
                              <td>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tbody>
                                    <tr>
                                      <td width="300">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td class="paxDtl" style="letter-spacing: 0px !important;border-left:8px solid #175a87;padding-left:10px;font-family:Arial;font-style:normal;font-weight:700;font-size:13px;line-height:18px;text-transform:uppercase;color:#4a4a4a">
                                                Meeting Point and Emergency Contact information
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                      <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td style="border-top:1px solid #e7e7e7"></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td style="padding: 0 10px 10px 10px">
                          <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif;font-size: 14px;color: #444444;font-weight: 600;">
                                Rome Ciampino Airport → Sistina
                              </td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color:#444444;">
                                FINDING YOUR DRIVER EXIT the arrivals hall where your driver/representative will be waiting on the steps, holding a sign
                                with your name on it. Identify yourself by showing your voucher to the Supplier, for whom we act as a booking agent. There
                                may be a wait for your shuttle at the airport as they run on a schedule. (Maximum wait time 1 hour from the moment you
                                meet the driver/representative). In event you are delayed during the arrival process you must contact the supplier. Please
                                note shuttles will not stop at private addresses/villas and may not offer a door to door service. IF YOU CAN'T LOCATE
                                YOUR DRIVER, please contact them directly by clicking on this link https://checkpickup.com. You will need an internet or
                                mobile phone connection to be able to call/message your driver. Please don't attempt to contact your driver until you are at
                                the agreed meeting point as, with the best intentions of providing you with the most efficient service, driver information is
                                subject to change. DISCLAIMER HolidayTaxis Group Limited (part of HBX Group) processes your personal data for the
                                purpose of providing you with contracted travel services. For more information about how we process your personal data,
                                please refer to the Privacy Policy.You have the right to access, rectify, delete, and restrict the processing of your data, as
                                well as other rights recognized by applicable law. You can exercise these rights by contacting us at
                                dataprotection@holidaytaxis.com

                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td style="padding: 10px 10px;background-color: #fbfbfb;">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                      <tr>
                        <td colspan="3" align="center" style="font-family: Arial, Helvetica, sans-serif;font-size: 14px;color: #444444;font-weight: 600;border-bottom: 1px solid #e7e7e7;padding-bottom: 4px;">
                          Supplier Information
                        </td>
                      </tr>
                      <tr>
                        <td width="45%" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;">
                          <span style="font-size: 12px;font-weight: 500;color: #707070;">Supplier Name </span><br />
                          HolidayTaxis Group Limited
                        </td>
                        <td width="25%" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-left:1px solid #e7e7e7;border-right:1px solid #e7e7e7">
                          <span style="font-size: 12px;font-weight: 500;color: #707070;">Phone No.</span>
                          <br />
                          <a href="tel:+44-123-456-7890" style="color: #464646;text-decoration: none;">+44-123-456-7890</a>
                        </td>
                        <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;">
                          <span style="font-size: 12px;font-weight: 500;color: #707070;">Email ID</span>
                          <br />
                          <a href="mailto:help.supplier@xyz.com" style="color: #464646;text-decoration: none;">help.supplier@xyz.com</a>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td style="padding:10px 10px;background-color: #c4052b;">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                      <tr>
                        <td align="center">
                          <span style="font-family: Arial, Helvetica, sans-serif;font-size: 14px;font-weight: 600;color: #ffd0d9;">Emergency Contact No.</span>
                          <br />
                          <a href="tel:+971 568288896" style="font-family: Arial, Helvetica, sans-serif;font-size: 14px;font-weight: 600;text-decoration:none;color:#fff">+971 568288896</a>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td style="background-color:#fff3e0">
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td style="padding: 12px 8px 12px 8px;">
                          <table>
                            <tr>
                              <td>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tbody>
                                    <tr>
                                      <td width="230">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td class="paxDtl" style="letter-spacing: 0px !important;border-left:8px solid #9e8763;padding-left:10px;font-family:Arial;font-style:normal;font-weight:700;font-size:13px;line-height:18px;text-transform:uppercase;color:#897047">
                                                Terms and Conditions
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                      <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td style="border-top:1px solid #e7e7e7"></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td style="padding: 0 8px 12px 30px;">
                          <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;padding-right:10px;">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tr>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">Waiting Time (Outward): 55</td>
                                  </tr>
                                  <tr>
                                    <td>
                                      <ul style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;margin: 0;padding: 0 0 0 15px;">
                                        <li>80 min. Estimated journey time</li>
                                        <li>1 passenger(s) minimum</li>
                                        <li>99 passenger(s) maximum</li>
                                        <li>suitcases permitted</li>
                                      </ul>
                                    </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>

                <tr>
                  <td>
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td class="footer">
                          <p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color:#939393;margin:0;">
                            <strong>Agent Details</strong>
                          </p>
                          <p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color:#939393;margin:0;">4Beacons, Al mathar alshamali KSA, Riyadh, Saudi Arabia</p>
                          <p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color:#939393;margin:0;">
                            Phone: +966112472588 | Email: <a href="mailto:Ali.basheer@4beacons.net" style="color:#939393;text-decoration:none">Ali.basheer@4beacons.net</a>
                          </p>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        </xsl:for-each>
        <table class="email-container" width="100%" cellpadding="0" cellspacing="0" border="0">
          <tr>
            <td style="padding:20px 0;">
              <table style="background-color:#fff" width="100%" cellpadding="0" cellspacing="0" border="0">
                <tr>
                  <td class="" style="background-color: #175a87;padding: 12px 8px 12px 8px;">
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td align="center">
                          <h6 style="margin: 0;font-family: Arial, Helvetica, sans-serif;font-size: 20px;color: #fff;font-weight: 600;">TRANSFER VOUCHER</h6>
                        </td>
                      </tr>
                      <tr>
                        <td style="" align="center">
                          <p style="margin:0;padding:0;font-family: Arial, Helvetica, sans-serif;font-size: 12px;color: #a8dafb;font-weight: 600;">Booking ID: BEUEATF25BK000005</p>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td valign="top" style="background-color: #eef8ff;border-bottom: 1px solid #b6cede;">
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td width="50%" valign="top" style="border-right: 1px solid #b6cede;padding: 10px;">
                          <table width="100%" cellpadding="0" cellspacing="0" border="0">
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px;color: #33393d;font-weight: 600;padding-bottom: 6px;">Agent Details</td>
                            </tr>
                            <tr>
                              <td>
                                <img src="logonew-1.png" height="50" style="max-height:50px" />
                              </td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">4Beacons</td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">Al mathar alshamali KSA , Riyadh , Saudi Arabia ,</td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                <b>Ph.</b> 966112472588
                              </td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                <b>Email:</b> Ali.basheer@4beacons.net
                              </td>
                            </tr>
                          </table>
                        </td>
                        <td width="50%" valign="top" style="padding: 10px;">
                          <table width="100%" cellpadding="0" cellspacing="0" border="0">
                            <tr>
                              <td align="right" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px;color: #33393d;font-weight: 600;padding-bottom: 6px;">Booking Summary</td>
                            </tr>
                            <tr>
                              <td align="right" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                Booking Date:<b> 06-05-2025</b>
                              </td>
                            </tr>
                            <tr>
                              <td align="right" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                Booking ID: <b>BEUEATF25BK000005</b>
                              </td>
                            </tr>
                            <tr>
                              <td align="right" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                Reservation Ref No: <b>207-14310868</b>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td class="">
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td style="border-top: 1px solid #ebebeb;padding: 12px 8px 12px 8px;">
                          <table>
                            <tr>
                              <td>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tbody>
                                    <tr>
                                      <td width="230">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td class="paxDtl" style="letter-spacing: 0px !important;border-left:8px solid #175a87;padding-left:10px;font-family:Arial;font-style:normal;font-weight:700;font-size:13px;line-height:18px;text-transform:uppercase;color:#4a4a4a">
                                                Passenger Details
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                      <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td style="border-top:1px solid #e7e7e7"></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td style="padding: 0 8px 12px 30px;">
                          <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                Lead Passenger:
                              </td>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                Mr Adarsh Tripath
                              </td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                Mobile Number:
                              </td>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                09027972157
                              </td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                Email
                              </td>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                Ali.basheer@4beacons.net
                              </td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                Number of Passengers:
                              </td>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                1 adults, 0 children
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>

                      <tr>
                        <td style="border-top: 1px solid #ebebeb;padding: 12px 8px 12px 8px;">
                          <table>
                            <tr>
                              <td>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tbody>
                                    <tr>
                                      <td width="230">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td class="paxDtl" style="letter-spacing: 0px !important;border-left:8px solid #175a87;padding-left:10px;font-family:Arial;font-style:normal;font-weight:700;font-size:13px;line-height:18px;text-transform:uppercase;color:#4a4a4a">
                                                Transfer Details
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                      <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td style="border-top:1px solid #e7e7e7"></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td style="padding: 0 10px 12px 30px;">
                          <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif;font-size: 12px;color: #6e6e6e;font-weight: 600;">
                                Transfer Details
                              </td>
                            </tr>
                            <tr>
                              <td style="border: 1px solid #e7e7e7;background-color:#fff;border-radius:6px;">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tr>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;">
                                      <span style="font-size: 12px;font-weight: 500;color: #707070;">Vehicle </span><br />
                                      Shuttle
                                    </td>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-left:1px solid #e7e7e7;border-right:1px solid #e7e7e7">
                                      <span style="font-size: 12px;font-weight: 500;color: #707070;">Date/Time</span><br />
                                      18-09-2025
                                    </td>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-right:1px solid #e7e7e7">
                                      <span style="font-size: 12px;font-weight: 500;color: #707070;">From</span><br />
                                      Rome Ciampino Airport
                                    </td>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;">
                                      <span style="font-size: 12px;font-weight: 500;color: #707070;">To</span><br />
                                      Sistina
                                    </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                            <tr>
                              <td height="20"></td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif;font-size: 12px;color: #6e6e6e;font-weight: 600;">
                                Flight Details
                              </td>
                            </tr>
                            <tr>
                              <td style="border: 1px solid #e7e7e7;background-color:#fff;border-radius:6px;">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tr>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;">
                                      <span style="font-size: 12px;font-weight: 500;color: #707070;">Flight No. </span><br />
                                      A58724
                                    </td>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-left:1px solid #e7e7e7;border-right:1px solid #e7e7e7">
                                      <span style="font-size: 12px;font-weight: 500;color: #707070;">Flight Name</span><br />
                                      Air India
                                    </td>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-right:1px solid #e7e7e7">
                                      <span style="font-size: 12px;font-weight: 500;color: #707070;">Flight Pickup Time</span><br />
                                      10:15 AM
                                    </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td style="background-color:#fff3e0">
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td style="padding: 12px 8px 12px 8px;">
                          <table>
                            <tr>
                              <td>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tbody>
                                    <tr>
                                      <td width="230">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td class="paxDtl" style="letter-spacing: 0px !important;border-left:8px solid #9e8763;padding-left:10px;font-family:Arial;font-style:normal;font-weight:700;font-size:13px;line-height:18px;text-transform:uppercase;color:#897047">
                                                Special Request
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                      <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td style="border-top:1px solid #e7e7e7"></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td style="padding: 0 8px 12px 30px;">
                          <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                jasjasl
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td>
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td style="border-top: 1px solid #ebebeb;padding: 12px 8px 12px 8px;">
                          <table>
                            <tr>
                              <td>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tbody>
                                    <tr>
                                      <td width="300">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td class="paxDtl" style="letter-spacing: 0px !important;border-left:8px solid #175a87;padding-left:10px;font-family:Arial;font-style:normal;font-weight:700;font-size:13px;line-height:18px;text-transform:uppercase;color:#4a4a4a">
                                                Meeting Point and Emergency Contact information
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                      <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td style="border-top:1px solid #e7e7e7"></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td style="padding: 0 10px 10px 10px">
                          <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif;font-size: 14px;color: #444444;font-weight: 600;">
                                Rome Ciampino Airport → Sistina
                              </td>
                            </tr>
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color:#444444;">
                                FINDING YOUR DRIVER EXIT the arrivals hall where your driver/representative will be waiting on the steps, holding a sign
                                with your name on it. Identify yourself by showing your voucher to the Supplier, for whom we act as a booking agent. There
                                may be a wait for your shuttle at the airport as they run on a schedule. (Maximum wait time 1 hour from the moment you
                                meet the driver/representative). In event you are delayed during the arrival process you must contact the supplier. Please
                                note shuttles will not stop at private addresses/villas and may not offer a door to door service. IF YOU CAN'T LOCATE
                                YOUR DRIVER, please contact them directly by clicking on this link https://checkpickup.com. You will need an internet or
                                mobile phone connection to be able to call/message your driver. Please don't attempt to contact your driver until you are at
                                the agreed meeting point as, with the best intentions of providing you with the most efficient service, driver information is
                                subject to change. DISCLAIMER HolidayTaxis Group Limited (part of HBX Group) processes your personal data for the
                                purpose of providing you with contracted travel services. For more information about how we process your personal data,
                                please refer to the Privacy Policy.You have the right to access, rectify, delete, and restrict the processing of your data, as
                                well as other rights recognized by applicable law. You can exercise these rights by contacting us at
                                dataprotection@holidaytaxis.com

                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td style="padding: 10px 10px;background-color: #fbfbfb;">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                      <tr>
                        <td colspan="3" align="center" style="font-family: Arial, Helvetica, sans-serif;font-size: 14px;color: #444444;font-weight: 600;border-bottom: 1px solid #e7e7e7;padding-bottom: 4px;">
                          Supplier Information
                        </td>
                      </tr>
                      <tr>
                        <td width="45%" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;">
                          <span style="font-size: 12px;font-weight: 500;color: #707070;">Supplier Name </span><br />
                          HolidayTaxis Group Limited
                        </td>
                        <td width="25%" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-left:1px solid #e7e7e7;border-right:1px solid #e7e7e7">
                          <span style="font-size: 12px;font-weight: 500;color: #707070;">Phone No.</span>
                          <br />
                          <a href="tel:+44-123-456-7890" style="color: #464646;text-decoration: none;">+44-123-456-7890</a>
                        </td>
                        <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;">
                          <span style="font-size: 12px;font-weight: 500;color: #707070;">Email ID</span>
                          <br />
                          <a href="mailto:help.supplier@xyz.com" style="color: #464646;text-decoration: none;">help.supplier@xyz.com</a>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td style="padding:10px 10px;background-color: #c4052b;">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                      <tr>
                        <td align="center">
                          <span style="font-family: Arial, Helvetica, sans-serif;font-size: 14px;font-weight: 600;color: #ffd0d9;">Emergency Contact No.</span>
                          <br />
                          <a href="tel:+971 568288896" style="font-family: Arial, Helvetica, sans-serif;font-size: 14px;font-weight: 600;text-decoration:none;color:#fff">+971 568288896</a>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
                <tr>
                  <td style="background-color:#fff3e0">
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td style="padding: 12px 8px 12px 8px;">
                          <table>
                            <tr>
                              <td>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tbody>
                                    <tr>
                                      <td width="230">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td class="paxDtl" style="letter-spacing: 0px !important;border-left:8px solid #9e8763;padding-left:10px;font-family:Arial;font-style:normal;font-weight:700;font-size:13px;line-height:18px;text-transform:uppercase;color:#897047">
                                                Terms and Conditions
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                      <td>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                          <tbody>
                                            <tr>
                                              <td style="border-top:1px solid #e7e7e7"></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </td>
                                    </tr>
                                  </tbody>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td style="padding: 0 8px 12px 30px;">
                          <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                              <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;padding-right:10px;">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                  <tr>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">Waiting Time (Outward): 55</td>
                                  </tr>
                                  <tr>
                                    <td>
                                      <ul style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;margin: 0;padding: 0 0 0 15px;">
                                        <li>80 min. Estimated journey time</li>
                                        <li>1 passenger(s) minimum</li>
                                        <li>99 passenger(s) maximum</li>
                                        <li>suitcases permitted</li>
                                      </ul>
                                    </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>

                <tr>
                  <td>
                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                      <tr>
                        <td class="footer">
                          <p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color:#939393;margin:0;">
                            <strong>Agent Details</strong>
                          </p>
                          <p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color:#939393;margin:0;">4Beacons, Al mathar alshamali KSA, Riyadh, Saudi Arabia</p>
                          <p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color:#939393;margin:0;">
                            Phone: +966112472588 | Email: <a href="mailto:Ali.basheer@4beacons.net" style="color:#939393;text-decoration:none">Ali.basheer@4beacons.net</a>
                          </p>
                        </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </body>
    </html>
  
  
  
  
  
  
  
  
  
  </xsl:template>
</xsl:stylesheet>