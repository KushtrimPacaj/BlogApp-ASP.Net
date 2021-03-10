<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BlogApp.login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <br /><br />
<table>
    <tr>
        <td>Email:&nbsp;&nbsp;</td>
        <td><input id="txtUserName" type="text" runat="server"></td>
        <td><ASP:RequiredFieldValidator ControlToValidate="txtUserName"
            Display="Static" ErrorMessage="*" runat="server" 
            ID="vUserName" /></td>
    </tr>
    <tr><td>.</td></tr>
    <tr>
        <td>Password:&nbsp;&nbsp;</td>
        <td><input id="txtUserPass" type="password" runat="server"></td>
        <td><ASP:RequiredFieldValidator ControlToValidate="txtUserPass"
        Display="Static" ErrorMessage="*" runat="server"
        ID="vUserPass" />
        </td>
    </tr>
   
</table>

    <br />
<asp:Button id="cmdLogin" runat="server" OnClick="cmdLogin_ServerClick" Text="Login"/><p></p>
            

<asp:Label id="lblMsg" ForeColor="red" Font-Name="Verdana" Font-Size="10" runat="server" />
</asp:Content>
