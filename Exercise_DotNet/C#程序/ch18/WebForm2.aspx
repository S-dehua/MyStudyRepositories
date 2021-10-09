<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm2.aspx.cs" Inherits="WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="楷体" Font-Size="Small" ForeColor="Blue" Text="姓名"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Font-Size="Small" Height="16px" Width="104px">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="楷体" Font-Size="Small" ForeColor="Blue" Text="班号"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" Font-Bold="True" Font-Size="Small" Height="16px" Width="101px">
        </asp:DropDownList>
        <br />
        <br />
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="黑体" Font-Size="Small" ForeColor="Red" OnClick="Button1_Click" Text="提交" Width="60px" />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="楷体" Font-Size="Small" ForeColor="#CC00FF"></asp:Label>
    
    </div>
    </form>
</body>
</html>
