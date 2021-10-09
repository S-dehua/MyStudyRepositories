<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm3.aspx.cs" Inherits="WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 78px;
        }
        .auto-style2 {
            height: 78px;
            width: 149px;
        }
        .auto-style3 {
        }
        .auto-style4 {
            height: 20px;
            text-align: center;
        }
        .auto-style5 {
            height: 33px;
        }
        .auto-style6 {
            height: 27px;
            text-align: center;
        }
        .auto-style7 {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style7">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
        <table style="width: 30%; background-color: #FFFF99;">
            <tr>
                <td class="auto-style5" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton1" runat="server" Font-Bold="True" 
                        Font-Names="楷体" Font-Size="Small" ForeColor="Blue" GroupName="sex" Text="男" />
&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Bold="True" Font-Names="楷体" 
                        Font-Size="Small" ForeColor="Blue" GroupName="sex" Text="女" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Bold="True" 
                        Font-Names="楷体" Font-Size="Small" ForeColor="Blue">
                        <asp:ListItem>小于18</asp:ListItem>
                        <asp:ListItem>18-22</asp:ListItem>
                        <asp:ListItem>大于22</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style1">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" Font-Bold="True" Font-Names="楷体" 
                        Font-Size="Small" ForeColor="#9900FF">
                        <asp:ListItem>足球</asp:ListItem>
                        <asp:ListItem>看书</asp:ListItem>
                        <asp:ListItem>游泳</asp:ListItem>
                        <asp:ListItem>武术</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">&nbsp;<asp:CheckBox ID="CheckBox1" runat="server" 
                    Font-Bold="True" Font-Names="楷体" Font-Size="Small" ForeColor="#CC6600" Text="是否三好生" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="黑体" 
                        Font-Size="Small" ForeColor="#FF3300" OnClick="Button1_Click" Text="提交" Width="53px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="楷体" 
                        Font-Size="Small" ForeColor="Fuchsia"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
