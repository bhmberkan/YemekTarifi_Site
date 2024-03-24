<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminYorumlar.aspx.cs" Inherits="AdminYorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style8 {
            margin-bottom: 0px;
            background-color: #FFCCCC;
        }
        
        .auto-style10 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
            <table class="auto-style1">
                <tr>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" Height="30px"  Text="AÇ" Width="36px" OnClick="Button1_Click" />
                        </strong></td>
                    <td><strong>
                        <asp:Button ID="Button2" runat="server" Height="30px"  Text="KAPAT" Width="66px" OnClick="Button2_Click" />
                        </strong></td>
                    <td><strong>ONAYLI YORUMLAR</strong></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="398px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" CssClass="yeniStil1" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td class="auto-style10" style="width: auto"><%--<a href="Kategoriler.aspx?Kategoriid=<%# Eval("Kategoriid") %>&islem=sil">--%>
                                <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/iconlar/delete.png" Width="90px" />
                            </td>
                            <td class="auto-style10"><%--<a href="KategoriDüzenle.aspx?Kategoriid=<%# Eval("Kategoriid") %>">  --%>
                                <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/iconlar/update.jpg" Width="70px" />
                                <%--</a>--%></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style8">
            <table class="auto-style1">
                <tr>
                    <td><strong>
                        <asp:Button ID="Button3" runat="server" Height="30px"  Text="AÇ" Width="36px" OnClick="Button3_Click" />
                        </strong></td>
                    <td><strong>
                        <asp:Button ID="Button4" runat="server" Height="30px"  Text="KAPAT" Width="66px" OnClick="Button4_Click"  />
                        </strong></td>
                    <td><strong>ONAYSIZ YORUMLAR</strong></td>
                </tr>
            </table>
        </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="398px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" CssClass="yeniStil1" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td class="auto-style10" style="width: auto"><%--<a href="Kategoriler.aspx?Kategoriid=<%# Eval("Kategoriid") %>&islem=sil">--%>
                                <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/iconlar/delete.png" Width="90px" />
                            </td>
                            <td class="auto-style10"><a href="AdminYorumDetay.aspx?Yorumid=<%# Eval("Yorumid") %>">
                                <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/iconlar/update.jpg" Width="70px" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

