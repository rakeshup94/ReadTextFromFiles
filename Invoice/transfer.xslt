<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <!--Template definition-->
  <xsl:template name="dots" match="/">
    <!--Html opening tag-->
    <xsl:param name="i" select="0" />

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
          <xsl:variable name="transferBoking" select="TransferBookings/TransferBooking" />
          <xsl:for-each select="$transferBoking/TransferDetails/ItineraryInfo/Itinerary">
            <xsl:variable name="gstAdult" select="@Adults" />
            <xsl:variable name="gstChild" select="@Children" />
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
                                Transfer <xsl:value-of select="$transferBoking/BookingStatus" />
                              </h6>
                            </td>
                          </tr>
                          <tr>
                            <td style="" align="center">
                              <p style="margin:0;padding:0;font-family: Arial, Helvetica, sans-serif;font-size: 12px;color: #a8dafb;font-weight: 600;">
                                Booking ID:        <xsl:value-of select="$transferBoking/BookingId" />
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
                              <xsl:for-each select="$transferBoking/SubAgent/AgencyInfo">
                                <xsl:if test="AgencyName != ''">
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
                                      <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                        <xsl:value-of select="AgencyName" />
                                      </td>
                                    </tr>
                                    <tr>
                                      <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">

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

                                      </td>
                                    </tr>
                                    <tr>
                                      <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                        <b>Ph.</b>
                                        <xsl:if test="Contact != ''">
                                          <xsl:value-of select="Contact" />
                                        </xsl:if>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                        <b>Email:</b>
                                        <xsl:if test="Email != ''">

                                          <xsl:value-of select="Email" />
                                        </xsl:if>
                                      </td>
                                    </tr>
                                  </table>
                                </xsl:if>
                              </xsl:for-each>
                            </td>
                            <td width="50%" valign="top" style="padding: 10px;">
                              <xsl:for-each select="$transferBoking">
                                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                  <tr>
                                    <td align="right" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px;color: #33393d;font-weight: 600;padding-bottom: 6px;">Booking Summary</td>
                                  </tr>
                                  <tr>
                                    <td align="right" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                      Booking Date:<b>
                                        <xsl:if test="BookingDate!=''">
                                          <xsl:value-of select="BookingDate" />
                                        </xsl:if>
                                      </b>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td align="right" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                      Booking ID: <b>
                                        <xsl:if test="BookingId!=''">

                                          <xsl:value-of select="BookingId" />

                                        </xsl:if>
                                      </b>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td align="right" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                      Reservation Ref No: <b>
                                        <xsl:if test="VoucherRefNo!=''">
                                          <xsl:value-of select="VoucherRefNo" />
                                        </xsl:if>
                                      </b>
                                    </td>
                                  </tr>
                                  <xsl:if test="AgentRefNo!=''">
                                    <tr>
                                      <td align="right" style="font-family: Arial, Helvetica, sans-serif; font-size: 13px;color: #33393d;">
                                        TA Ref No: <strong>
                                          <xsl:value-of select="AgentRefNo" />
                                        </strong>
                                      </td>
                                    </tr>
                                  </xsl:if>
                                </table>
                              </xsl:for-each>
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
                                <xsl:for-each select="GuestDetails/GuestInfo">
                                  <xsl:if test="@FName!='' and @IsLead='true'">

                                    <tr>
                                      <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                        Lead Passenger:
                                      </td>
                                      <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
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
                                      <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                        Mobile Number:
                                      </td>
                                      <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                        <xsl:choose>
                                          <xsl:when test="@ContactNo !=''">
                                            <xsl:value-of select="@ContactNo" />
                                          </xsl:when>
                                          <xsl:otherwise>                                            -------                                          </xsl:otherwise>
                                        </xsl:choose>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                        Email
                                      </td>
                                      <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
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
                                  <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
                                    Number of Passengers:
                                  </td>
                                  <td style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#444444;">
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
                                          <span style="font-size: 12px;font-weight: 500;color: #707070;">Vehicle </span>
                                          <br />
                                          <xsl:value-of select="VehicalList/Vehical" />
                                        </td>
                                        <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-left:1px solid #e7e7e7;">
                                          <span style="font-size: 12px;font-weight: 500;color: #707070;">Service Date</span>
                                          <br />
                                          <xsl:value-of select="@Date" />
                                        
                                        </td>



                                        

                                        <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-left:1px solid #e7e7e7;border-right:1px solid #e7e7e7">
                                          <span style="font-size: 12px;font-weight: 500;color: #707070;">Pick-up time</span>
                                          <br />
                                     
                                          <xsl:value-of select="@PickUpTime" />
                                        </td>



                                        <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-right:1px solid #e7e7e7">
                                          <span style="font-size: 12px;font-weight: 500;color: #707070;">From</span>
                                          <br />
                                          <xsl:value-of select="PickUpPoint/@Name" />
                                        </td>
                                        <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;">
                                          <span style="font-size: 12px;font-weight: 500;color: #707070;">To</span>
                                          <br />
                                          <xsl:value-of select="DropOffPoint/@Name" />
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
                                        <xsl:if test="PickUpPoint/@PickUpType ='IATA'">

                                          <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-right:1px solid #e7e7e7">
                                            <span style="font-size: 12px;font-weight: 500;color: #707070;">Flight Name</span>
                                            <br />
                                            <xsl:value-of select="PickUpPoint/@Detail" />
                                          </td>

                                          <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;">
                                            <span style="font-size: 12px;font-weight: 500;color: #707070;">Flight No. </span>
                                            <br />
                                            <xsl:value-of select="PickUpPoint/@EssentialNo" />
                                          </td>


                                        </xsl:if>
                                        <xsl:if test="DropOffPoint/@DropOffType ='IATA'">
                                          <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-left:1px solid #e7e7e7;border-right:1px solid #e7e7e7">
                                            <span style="font-size: 12px;font-weight: 500;color: #707070;">Flight Name</span>
                                            <br />
                                            <xsl:value-of select="DropOffPoint/@Detail" />
                                          </td>

                                          <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;">
                                            <span style="font-size: 12px;font-weight: 500;color: #707070;">Flight No. </span>
                                            <br />
                                            <xsl:value-of select="DropOffPoint/@EssentialNo" />
                                          </td>

                                        </xsl:if>
                                        <td style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color:#444444;font-weight:600;padding:4px 8px;border-left:1px solid #e7e7e7">
                                          <span style="font-size: 12px;font-weight: 500;color: #707070;">Flight Time</span>
                                          <br />
                                          <xsl:value-of select="@FlightTime" />
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
                                    <xsl:value-of select="$transferBoking/Remark" />
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
                                                    Pickup Information
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
                                    <xsl:value-of select="PickUpPoint/@Name" /> →   <xsl:value-of select="DropOffPoint/@Name" />
                                  </td>
                                </tr>
                                <tr>
                                  <td style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color:#444444;">
                                    <p>
                                      <xsl:value-of select="MeetingPoint" />
                                    </p>
                                  </td>
                                </tr>
                              </table>
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
                              <xsl:variable name="EmNo"   select="ContactInfo/@PhoneNumber" />
                              <a style="font-family: Arial, Helvetica, sans-serif;font-size: 14px;font-weight: 600;text-decoration:none;color:#fff">
                                <xsl:value-of select="$EmNo" />
                              </a>
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
                                        <td>
                                          <xsl:value-of select="$transferBoking/TransferDetails/TransferPolicy" disable-output-escaping="yes" />
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






                              <xsl:for-each select="$transferBoking/SubAgent/AgencyInfo">
                                <xsl:if test="AgencyName != ''">



                                  <p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color:#939393;margin:0;">
                                    <xsl:value-of select="AgencyName" />,  <xsl:if test="AgencyAddress/Address != ''">
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
                                  </p>
                                  <p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color:#939393;margin:0;">
                                    Phone:   <xsl:if test="Contact != ''">
                                      <xsl:value-of select="Contact" />
                                    </xsl:if> | Email: <a  style="color:#939393;text-decoration:none">
                                      <xsl:if test="Email != ''">

                                        <xsl:value-of select="Email" />
                                      </xsl:if>
                                    </a>
                                  </p>
                                </xsl:if>
                              </xsl:for-each>
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
        </xsl:for-each>
      </body>
    </html>









  </xsl:template>
</xsl:stylesheet>