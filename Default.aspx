<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Prodavnica_Artikl._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="height: 307px">
        
        <table style="border: thin solid #FF9999; width:100%; padding:2.5px; background-color: #FFCCCC; position: top;">
            <tr>
                <td style="padding: 2px; border: thin solid #FF9999;">
        <asp:Label ID="Label1" runat="server" Text="Artikl:"></asp:Label>
                </td>
                <td style="padding: 2px; border: thin solid #FF9999;">
                    &nbsp;</td>
                <td style="padding: 2px; border: thin solid #FF9999;">
        <asp:Label ID="Label2" runat="server" Text="Prodavnica:"></asp:Label>
                </td>
                <td style="padding: 2px; border: thin solid #FF9999;">&nbsp;</td>
            </tr>
            <tr>
                <td style="padding: 2px; border: thin solid #FF9999;">
        <asp:Label ID="Label3" runat="server" Text="Naziv"></asp:Label>
                </td>
                <td style="padding: 2px; border: thin solid #FF9999;">
        <asp:TextBox ID="txtNazArt" runat="server" Height="16px" Width="106px"></asp:TextBox>
                </td>
                <td style="padding: 2px; border: thin solid #FF9999;">
        <asp:Label ID="Label6" runat="server" Text="Naziv"></asp:Label>
                </td>
                
                <td style="padding: 2px; border: thin solid #FF9999;">
        <asp:TextBox ID="tbNazivProd" runat="server" Height="16px" Width="105px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding: 2px; border: thin solid #FF9999;">
        <asp:Label ID="Label4" runat="server" Text="Kolicina"></asp:Label>
                </td>
                <td style="padding: 2px; border: thin solid #FF9999;">
        <asp:TextBox ID="tbKolArt" runat="server" Height="17px" Width="105px"></asp:TextBox>
                </td>
                <td style="padding: 2px; border: thin solid #FF9999;">
        <asp:Label ID="Label7" runat="server" Text="Adresa"></asp:Label>
                </td>                
                <td style="padding: 2px; border: thin solid #FF9999;">
        <asp:TextBox ID="tbAdresa" runat="server" Height="16px" Width="104px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding: 2px; border: thin solid #FF9999;">
        <asp:Label ID="Label5" runat="server" Text="Cena"></asp:Label>
                </td>
                <td style="padding: 2px; border: thin solid #FF9999;">
        <asp:TextBox ID="tbCenaArt" runat="server" Height="16px" Width="104px"></asp:TextBox>
                </td>
                <td style="padding: 2px; border: thin solid #FF9999;">&nbsp;</td>
                <td style="padding: 2px; border: thin solid #FF9999;">&nbsp;</td>
            </tr>
            <tr>
                <td style="padding: 2px; border: thin solid #FF9999;">
        <asp:Button ID="Button1" runat="server" Text="Unesi artikl" OnClick="Button1_Click" />
                </td>
                <td style="padding: 2px; border: thin solid #FF9999;">&nbsp;</td>
                <td style="padding: 2px; border: thin solid #FF9999;">
                    &nbsp;</td>
                <td style="padding: 2px; border: thin solid #FF9999;">
        <asp:Button ID="Button2" runat="server" Text="Unesi prodavnicu" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
        
        <br />
        <asp:Label ID="Label8" runat="server" Text="*"></asp:Label>
        <br />
        <br />
        
    </div>

</asp:Content>
