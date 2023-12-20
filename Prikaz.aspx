<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prikaz.aspx.cs" Inherits="Prodavnica_Artikl.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" style="height: 310px">
        
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="40px" BackColor="#FFCCCC" Width="80px"></asp:DropDownList>
        
        <br />
        
        <br />
        
        <br />
    <asp:Label ID="Label1" runat="server" Text="Artikli:"></asp:Label>
        <br />
        <br />
        
    <asp:Label ID="Label2" runat="server" Text="-"></asp:Label>
        
    </div>

</asp:Content>
