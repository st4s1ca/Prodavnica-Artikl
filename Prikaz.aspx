<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prikaz.aspx.cs" Inherits="Prodavnica_Artikl.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Artikli:"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="-"></asp:Label>
</asp:Content>
