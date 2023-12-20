<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Povezi.aspx.cs" Inherits="Prodavnica_Artikl.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="height: 311px">
        
    <p>Prodavnica:</p>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="34px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="92px" BackColor="#FFCCCC"></asp:DropDownList>
        <br />
        <br />
    <p>Artikli:</p>
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="20px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="90px" BackColor="#FFCCCC"></asp:DropDownList>
        <br />
        <br />
        
    <asp:Button ID="Button1" runat="server" Text="Dodaj" Height="33px" OnClick="Button1_Click" Width="81px" BackColor="#FFCCCC" BorderColor="#FF9999" />
        <br />
    <asp:Label ID="Label1" runat="server" Text="-"></asp:Label>
        
    </div>
</asp:Content>
