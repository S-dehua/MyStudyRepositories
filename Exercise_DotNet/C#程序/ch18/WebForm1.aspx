<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            width: 281px;
            position: relative;
            top: 0px;
            left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="楷体" Font-Size="Small" ForeColor="Blue" 
            Text="数据库名称:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Font-Size="Small"></asp:TextBox>
        <br />    
    </div>
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="黑体" ForeColor="Red" 
            OnClick="Button1_Click" Text="连接" Width="58px" style="height: 21px" />
        <p>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="楷体" Font-Size="Small" 
                ForeColor="#0033CC"></asp:Label>
        </p>
    </form>
</body>
</html>
