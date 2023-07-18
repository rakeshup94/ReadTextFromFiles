<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="WebApplication3.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="frmSite" runat="server">
        <div class="row">
               <div class="col-lg-6">
            <div class="form-group">
                <label>Document Formate :</label>

                <asp:FileUpload ID="flpContent" CssClass="form-control" runat="server" />

            </div>
        </div>
                    <div class="col-lg-6">
                        <asp:TextBox ID="TextBox1" TextMode="MultiLine" Rows="50" runat="server"></asp:TextBox>
                        
                        <asp:LinkButton ID="btnSave" CssClass="btn btn-md btn-black mrl" runat="server" OnClick="btnSave_Click">Save Changes</asp:LinkButton>

                    </div>
                </div>
    </form>
</body>
</html>
