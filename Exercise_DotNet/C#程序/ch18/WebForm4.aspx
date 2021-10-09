<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm4.aspx.cs" Inherits="WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 46%;
        }
        .auto-style2 {
            font-family: 楷体;
            font-size: small;
            color: #0000FF;
            text-align: center;
        }
        .auto-style3 {
            font-family: 楷体;
            font-size: small;
            color: #0000FF;
            font-weight: bold;
            width: 75px;
            text-align: center;
        }
        .auto-style4 {
        }
        .auto-style5 {
            font-size: small;
        }
        .auto-style6 {
            width: 171px;
        }
        .auto-style7 {
            font-family: 黑体;
            font-weight: bold;
            font-size: small;
            color: #FF0000;
        }
        .auto-style8 {
            height: 20px;
        }
        .auto-style9 {
            font-family: 华文隶书;
            font-size: medium;
            color: #800080;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style9" colspan="2">用户登录</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>姓名</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style7" ErrorMessage="姓名必须填写"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">密码</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style7" ErrorMessage="密码必须填写"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">密码确认</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" CssClass="auto-style7" ErrorMessage="两次密码不匹配"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">邮箱</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style5"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" CssClass="auto-style7" ErrorMessage="邮箱格式错误" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="color: #FF0000; font-size: small; font-weight: 700; font-family: 黑体" Text="提交" Width="60px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    <asp:Label ID="Label1" runat="server" style="color: #FF00FF; font-size: small; font-weight: 700; font-family: 楷体"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
