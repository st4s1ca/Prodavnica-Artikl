<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prodavnica_Artikl._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
        <br />
        <table style="width:100%; padding:2.5px;">
            <tr>
                <td>
        <asp:Label ID="Label1" runat="server" Text="Artikl:"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
        <asp:Label ID="Label2" runat="server" Text="Prodavnica:"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 20px">
        <asp:Label ID="Label3" runat="server" Text="Naziv"></asp:Label>
                </td>
                <td style="height: 20px">
        <asp:TextBox ID="txtNazArt" runat="server" Height="16px" Width="106px"></asp:TextBox>
                </td>
                <td style="height: 20px">
        <asp:Label ID="Label6" runat="server" Text="Naziv"></asp:Label>
                </td>
                
                <td>
        <asp:TextBox ID="tbNazivProd" runat="server" Height="16px" Width="105px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label4" runat="server" Text="Kolicina"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="tbKolArt" runat="server" Height="17px" Width="105px"></asp:TextBox>
                </td>
                <td>
        <asp:Label ID="Label7" runat="server" Text="Adresa"></asp:Label>
                </td>                
                <td>
        <asp:TextBox ID="tbAdresa" runat="server" Height="16px" Width="104px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label5" runat="server" Text="Cena"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="tbCenaArt" runat="server" Height="16px" Width="104px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="Button1" runat="server" Text="Unesi artikl" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
                <td>
        <asp:Button ID="Button2" runat="server" Text="Unesi prodavnicu" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
        <br />
        <asp:Label ID="Label8" runat="server" Text="*"></asp:Label>
        <br />
        <br />
        
    </div>

</asp:Content>
