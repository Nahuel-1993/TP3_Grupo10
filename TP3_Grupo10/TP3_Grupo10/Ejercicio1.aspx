<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP3_Grupo10.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 144px;
        }
        .auto-style4 {
            width: 144px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 144px;
            height: 8px;
        }
        .auto-style9 {
            height: 8px;
        }
        .auto-style10 {
            width: 244px;
        }
        .auto-style11 {
            height: 23px;
            width: 244px;
        }
        .auto-style12 {
            height: 8px;
            width: 244px;
        }
        .auto-style13 {
            width: 13px;
        }
        .auto-style14 {
            height: 23px;
            width: 13px;
        }
        .auto-style15 {
            height: 8px;
            width: 13px;
        }
        .auto-style16 {
            width: 144px;
            height: 30px;
        }
        .auto-style17 {
            width: 13px;
            height: 30px;
        }
        .auto-style18 {
            width: 244px;
            height: 30px;
        }
        .auto-style19 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" EnableViewState="true">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td style="font-weight: 700" class="auto-style10">Localidades</td>
                    <td style="font-weight: 700">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Nombre de Localidad:</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtNombreLocalidad" runat="server" Width="215px" ValidationGroup="grupoLocalidades"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvNombreLocalidad" runat="server" ControlToValidate="txtNombreLocalidad" ValidationGroup="grupoLocalidades">* Ingrese la localidad</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>
                        <asp:RegularExpressionValidator ID="revNombreLocalidad" runat="server" ControlToValidate="txtNombreLocalidad" ValidationExpression="^(?!\.)(?!.*\.\.)[A-Za-zÁÉÍÓÚáéíóúÑñ0-9\s.]+$" ValidationGroup="grupoLocalidades">* Solo se permiten letras, números, puntos, y espacios de nombres bien formulados</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Button ID="btnGuardarLocalidad" runat="server" Text="Guardar Localidad" Width="222px" OnClick="btnGuardarLocalidad_Click" ValidationGroup="grupoLocalidades" />

                    </td>
                    <td>
                        <asp:CustomValidator ID="cvLocalidad" runat="server" ControlToValidate="txtNombreLocalidad" OnServerValidate="cvLocalidad_ServerValidate" ValidationGroup="grupoLocalidades">* La localidad ya existe en la lista</asp:CustomValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style14"></td>
                    <td style="font-weight: 700" class="auto-style11">Usuarios</td>
                    <td style="font-weight: 700" class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Nombre Usuario:</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtNombreUsuario" runat="server" ValidationGroup="grupoUsuarios"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombreUsuario" runat="server" ControlToValidate="txtNombreUsuario" ErrorMessage="Complete el campo &quot;Nombre de usuario&quot;" ValidationGroup="grupoUsuarios">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Contraseña:</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" ValidationGroup="grupoUsuarios"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Complete el campo &quot;Contraseña&quot;" ValidationGroup="grupoUsuarios">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="re_Contraseña" runat="server" ControlToValidate="txtContraseña" ErrorMessage="La contraseña debe tener al menos 8 caracteres, una mayúscula, un número y un carácter especial." ValidationExpression="^(?=.{8,})(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&amp;*()_+=\[\]{};':&quot;\\|,.&lt;&gt;/?~-]).*$" ValidationGroup="grupoUsuarios">*</asp:RegularExpressionValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style16">Repetir Contraseña:</td>
                    <td class="auto-style17"></td>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtRepetirContraseña" runat="server" TextMode="Password" ValidationGroup="grupoUsuarios"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvRepetirContraseña" runat="server" ControlToValidate="txtRepetirContraseña" ErrorMessage="Complete el campo &quot;Repetir contraseña&quot;" ValidationGroup="grupoUsuarios">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareV_Contraseña" runat="server" ControlToCompare="txtRepetirContraseña" ControlToValidate="txtContraseña" ErrorMessage="Los Campos de &quot;Contraseña&quot; y &quot;Repertir Contraseña&quot; no coinciden." ValidationGroup="grupoUsuarios">*</asp:CompareValidator>
                    </td>
                    <td class="auto-style19">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Correo electrónico:</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtCorreoElectronico" runat="server" ValidationGroup="grupoUsuarios"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCorreoElectronico" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="Complete el campo &quot;Correo electronico&quot;" ValidationGroup="grupoUsuarios">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCorreoElectronico" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="Formato de correo electrónico no válido" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{3,}$" ValidationGroup="grupoUsuarios">*</asp:RegularExpressionValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">CP:</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtCodigoPostal" runat="server" ValidationGroup="grupoUsuarios"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtCodigoPostal" ValidationGroup="grupoUsuarios" ErrorMessage="Complete el campo &quot;CP&quot; (Código Postal)">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCodigoPostal" runat="server" ControlToValidate="txtCodigoPostal" ErrorMessage="El código postal debe ser igual a exactamente cuatro números" ValidationExpression="^\d{4}$" ValidationGroup="grupoUsuarios">*</asp:RegularExpressionValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Localidades:</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="ddlLocalidades" runat="server" Height="21px" Width="158px" ValidationGroup="grupoUsuarios">
                            <asp:ListItem Value="0">-- Elija una localidad --</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvLocalidades" runat="server" ControlToValidate="ddlLocalidades" ErrorMessage="Complete el campo &quot;Localidades&quot;" InitialValue="0" ValidationGroup="grupoUsuarios">*</asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" ValidationGroup="grupoUsuarios" OnClick="btnGuardarUsuario_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblBienvenidaUser" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style15"></td>
                    <td class="auto-style12">
                        <asp:ValidationSummary ID="ValSummary_Usuarios" runat="server" ValidationGroup="grupoUsuarios" ShowMessageBox="True" ShowSummary="False" />
                        <br />
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnInicio" runat="server" Text="Ir a inicio .aspx" Width="163px" OnClick="btnInicio_Click" />
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
