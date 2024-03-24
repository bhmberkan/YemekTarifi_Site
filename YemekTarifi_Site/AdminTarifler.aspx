<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminTarifler.aspx.cs" Inherits="AdminÖneriler" %>

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
                    <asp:Button ID="Button1" runat="server" Height="30px"  Text="AÇ" Width="36px" OnClick="Button1_Click"  />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px"  Text="KAPAT" Width="66px" OnClick="Button2_Click" />
                    </strong></td>
                <td><strong>ONAYLI TARİF&nbsp; LİSTESİ </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="398px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" CssClass="yeniStil1" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td class="auto-style10"><a href='AdminTarifÖnerDetay.aspx?Tarifid=<%# Eval("Tarifid") %>'>
                            <asp:Image ID="Image2" runat="server" Height="33px" ImageUrl="~/iconlar/2720714.png" Width="42px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style8">
        <table class="auto-style1">
            <tr>
                <td><strong>
                    <asp:Button ID="Button5" runat="server" Height="30px" OnClick="Button5_Click" Text="AÇ" Width="36px" />
                    </strong></td>
                <td>
                    <asp:Button ID="Button6" runat="server" Height="30px" OnClick="Button6_Click" Text="KAPAT" Width="66px" />
                </td>
                <td><strong>ONAYSIZ TARİF&nbsp; LİSTESİ </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="398px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" CssClass="yeniStil1" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td class="auto-style10"><a href='AdminTarifÖnerDetay.aspx?Tarifid=<%# Eval("Tarifid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="33px" ImageUrl="~/iconlar/2720714.png" Width="42px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

