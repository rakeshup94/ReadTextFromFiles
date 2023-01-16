<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XSLTransform.aspx.cs" Inherits="WebApplication3.XSLTransform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div style="vertical-align: central;border-top:1px solid #ccc;">
            <h3>XML Transformation in ASP.NET</h3>

            <asp:Xml ID="Xml1" runat="server" Visible="false"></asp:Xml>
            <asp:Literal ID="ltlTutorial" runat="server" Visible="false"></asp:Literal>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Transform with XML Control" OnClick="Button1_Click" />
            &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Transform without XML control" OnClick="Button2_Click" />
            <img src="Images/signature/client-42.png" />
            <br />
              <img src="D:\Rakesh\DharamJi\Testing\XSLTranformation\Images\signature\client-42.png" />
            <br />
              <img src="D:\Rakesh\DharamJi\Testing\XSLTranformation\Images\signature\client-42.png" />
            <br />            
        </div>k
            </center>
    </form>
</body>
</html>
