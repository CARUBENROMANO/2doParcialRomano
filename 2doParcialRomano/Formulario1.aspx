<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Formulario1.aspx.cs" Inherits="_2doParcialRomano.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p> Formulario 1 - Registracion</p>
<p> 
    <asp:Label ID="Label1" runat="server" Text="USERNAME"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="NO COMPLETO EL NOMBRE" ForeColor="#3333CC"></asp:RequiredFieldValidator>
</p>
<p> 
    <asp:Label ID="Label2" runat="server" Text="EMAIL"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="NO CORRESPONDE UN EMAIL" ForeColor="#3333CC" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
</p>
<p> 
    <asp:Label ID="Label3" runat="server" Text="EDAD"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="LA EDAD DEBE DER MAYOR QUE 15 AÑOS" ForeColor="#3333CC" MaximumValue="99" MinimumValue="15"></asp:RangeValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="NO COMPLETO LA EDAD" ForeColor="#3333CC"></asp:RequiredFieldValidator>
</p>
<p> 
    <asp:Label ID="Label4" runat="server" Text="CONTRASEÑA"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="NO COMPLETO LA CONTRASEÑA" ForeColor="#3333CC"></asp:RequiredFieldValidator>
</p>
<p> 
    <asp:Label ID="Label5" runat="server" Text="REPETIR CONTRASEÑA"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="LA CONSTRASEÑA NO COINCIDE" ForeColor="#3333CC"></asp:CompareValidator>
</p>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Crear Cookie" OnClick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;
    <p> Nombre de la Session Creada:&nbsp;
        <asp:Label ID="Label6" runat="server"></asp:Label>
</p>
</asp:Content>
