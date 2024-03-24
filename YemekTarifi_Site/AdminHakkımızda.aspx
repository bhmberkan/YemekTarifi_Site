<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminHakkımızda.aspx.cs" Inherits="AdminHakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">




        .auto-style8 {
            margin-bottom: 0px;
            background-color: #FFCCCC;
        }
        
        .auto-style9 {
        text-align: center;
    }
    .auto-style10 {
        font-size: large;
        font-weight: bold;
        font-style: italic;
    }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style1">
            <tr>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px"  Text="AÇ" Width="36px" OnClick="Button1_Click"   />
                    </strong></td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px"  Text="KAPAT" Width="66px" OnClick="Button2_Click"  />
                    </strong></td>
                <td><strong>HAKKIMIZDA</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="385px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong><em>
                <asp:Button ID="Button3" runat="server" CssClass="auto-style10" Text="Güncelle" Width="200px" OnClick="Button3_Click" />
                </em></strong></td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

