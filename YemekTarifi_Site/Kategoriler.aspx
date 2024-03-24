<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            margin-bottom: 0px;
            background-color: #FFCCCC;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            background-color: #FF9999;
        }
        .auto-style12 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="auto-style9">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
            <table class="auto-style1">
                <tr>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="AÇ" Width="36px" />
                        </strong></td>
                    <td><strong>
                        <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="KAPAT" Width="66px" />
                        </strong></td>
                    <td><strong>KATEGORİ LİSTESİ</strong></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="398px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" CssClass="yeniStil1" Text='<%# Eval("KategoriAD") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td class="auto-style10" style="width: auto">
                               <a href="Kategoriler.aspx?Kategoriid=<%# Eval("Kategoriid") %>&islem=sil"> <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/iconlar/delete.png" Width="90px" /></a>
                            </td>
                            <td class="auto-style10">
                              <a href="KategoriDüzenle.aspx?Kategoriid=<%# Eval("Kategoriid") %>">  <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/iconlar/update.jpg" Width="70px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" CssClass="auto-style11">
            <asp:Panel ID="Panel4" runat="server" CssClass="auto-style8">
                <table class="auto-style1">
                    <tr>
                        <td><strong>
                            <asp:Button ID="Button3" runat="server" Height="30px" Text="AÇ" Width="36px" OnClick="Button3_Click" />
                            </strong></td>
                        <td><strong>
                            <asp:Button ID="Button4" runat="server" Height="30px"  Text="KAPAT" Width="66px" OnClick="Button4_Click" />
                            </strong></td>
                        <td><strong>KATEGORİ EKLEME</strong></td>
                    </tr>
                </table>
            </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server">
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>KATEGORİ AD:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>KATEGORİ İKON :</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><strong>
                        <asp:Button ID="Button5" runat="server" CssClass="auto-style12" Text="EKLE" OnClick="Button5_Click" />
                       

                        </strong></td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

