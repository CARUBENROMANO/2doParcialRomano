<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Formulario2.aspx.cs" Inherits="_2doParcialRomano.Formulario2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Formulario 2 - Gestion de Archivos</p>
    <p>
        <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Nombre de Usuario"></asp:Label>
&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="33px" OnClick="Button1_Click" Text="Cargar" Width="90px" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Descargar" HeaderText="Descargar" ShowHeader="True" Text="Botón" />
            </Columns>
        </asp:GridView>
    </p>
    <p>&nbsp;</p>



</asp:Content>
