<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminTarifÖnerDetay.aspx.cs" Inherits="AdminTarifÖnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            text-align: right;
            font-size: medium;
        }
        .auto-style12 {
            text-align: right;
            font-size: large;
        }
        .auto-style13 {
            font-size: large;
            font-weight: bold;
            background-color: #339933;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <strong class="yeniStil1">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Ad Soyad: </strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>Yapılış:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Tarif Resim:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="205px" />
                </td>
            </tr>
            <strong>
            <tr>
                <td class="auto-style11"><strong><span class="yeniStil1">Tarif öneren:</span></strong></td>
                <strong class="yeniStil1">
                <td><strong class="yeniStil1">
                    <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="200px"></asp:TextBox>
                    </strong></td>
                </strong>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Tarif Mail :</strong></td>
                <td><strong class="yeniStil1">
                    <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="200px"></asp:TextBox>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>KATEGORİ:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td><strong class="yeniStil1"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style13" OnClick="Button2_Click" Text="ONAYLA" Width="200px" />
                    </strong></strong></td>
            </tr>
            </strong>
           
        </table>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

