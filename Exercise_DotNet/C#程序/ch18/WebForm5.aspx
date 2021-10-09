<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm5.aspx.cs" Inherits="WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" PostBackUrl="~/WebForm2.aspx">转向WebForm2</asp:LinkButton>
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/pic.bmp" PostBackUrl="~/WebForm3.aspx" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Harlow Solid Italic" Font-Size="Medium" ForeColor="#FF0066" NavigateUrl="~/WebForm4.aspx">转向WebForm4</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
