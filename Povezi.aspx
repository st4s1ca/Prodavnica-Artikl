<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Povezi.aspx.cs" Inherits="Prodavnica_Artikl.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>&nbsp;</p>
    <p>Prodavnica:</p>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="34px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="92px"></asp:DropDownList>
    <br />
    <br />
    <p>Artikli:</p>
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="20px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="90px"></asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Dodaj" Height="33px" OnClick="Button1_Click" Width="81px" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="-"></asp:Label>
    <br />
</asp:Content>
