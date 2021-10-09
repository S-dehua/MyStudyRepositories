﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm9.aspx.cs" Inherits="WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="学号" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" SortExpression="学号" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                <asp:BoundField DataField="民族" HeaderText="民族" SortExpression="民族" />
                <asp:BoundField DataField="班号" HeaderText="班号" SortExpression="班号" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" DeleteCommand="DELETE FROM student WHERE (学号 = ?) OR (学号 IS NULL) AND (? IS NULL)" InsertCommand="INSERT INTO [student] ([学号], [姓名], [性别], [民族], [班号]) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT [学号], [姓名], [性别], [民族], [班号] FROM [student]" UpdateCommand="UPDATE student SET 姓名 = ?, 性别 = ?, 民族 = ?, 班号 = ? WHERE (学号 = ?) OR (学号 IS NULL) AND (? IS NULL)">
            <DeleteParameters>
                <asp:Parameter Name="学号" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="学号" Type="String" />
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="性别" Type="String" />
                <asp:Parameter Name="民族" Type="String" />
                <asp:Parameter Name="班号" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="姓名" Type="String" />
                <asp:Parameter Name="性别" Type="String" />
                <asp:Parameter Name="民族" Type="String" />
                <asp:Parameter Name="班号" Type="String" />
                <asp:Parameter Name="学号" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="学号" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="50px" style="position: relative; top: 0px; left: 0px; width: 291px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" SortExpression="学号" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" />
                <asp:BoundField DataField="民族" HeaderText="民族" SortExpression="民族" />
                <asp:BoundField DataField="班号" HeaderText="班号" SortExpression="班号" />
                <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
    </form>
</body>
</html>
