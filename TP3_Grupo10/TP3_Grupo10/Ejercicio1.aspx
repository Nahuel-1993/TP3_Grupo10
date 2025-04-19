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
        .auto-style2 {
            width: 41px;
        }
        .auto-style3 {
            width: 247px;
        }
        .auto-style4 {
            width: 247px;
            height: 23px;
        }
        .auto-style5 {
            width: 41px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 247px;
            height: 8px;
        }
        .auto-style8 {
            width: 41px;
            height: 8px;
        }
        .auto-style9 {
            height: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td style="font-weight: 700">Localidades</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Nombre de Localidad:</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtNombreLocalidad" runat="server" Width="215px" ValidationGroup="grupoLocalidades"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombreLocalidad" runat="server" ControlToValidate="txtNombreLocalidad" ErrorMessage="Complete el campo &quot;Nombre de Localidad&quot;" ValidationGroup="grupoLocalidades">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="cvLocalidad" runat="server" ControlToValidate="txtNombreLocalidad" OnServerValidate="cvLocalidad_ServerValidate" ValidationGroup="grupoLocalidades">La localidad ya existe en la lista</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnGuardarLocalidad" runat="server" Text="Guardar Localidad" Width="222px" OnClick="btnGuardarLocalidad_Click" ValidationGroup="grupoLocalidades" />

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td style="font-weight: 700" class="auto-style6">Usuarios</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Nombre Usuario:</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtNombreUsuario" runat="server" ValidationGroup="grupoUsuarios"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombreUsuario" runat="server" ControlToValidate="txtNombreUsuario" ErrorMessage="Complete el campo &quot;Nombre de usuario&quot;" ValidationGroup="grupoUsuarios">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Contraseña:</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" ValidationGroup="grupoUsuarios"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Complete el campo &quot;Contraseña&quot;" ValidationGroup="grupoUsuarios">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revContraseña" runat="server" ControlToValidate="txtContraseña" ErrorMessage="La contraseña debe tener al menos 8 caracteres, incluir una mayúscula, un número y un carácter especial (@$!%*?&amp;)." ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&amp;])[A-Za-z\d@$!%*?&amp;]{8,}$&quot;" ValidationGroup="grupoUsuarios">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Repetir Contraseña:</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtRepetirContraseña" runat="server" TextMode="Password" ValidationGroup="grupoUsuarios"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvRepetirContraseña" runat="server" ControlToValidate="txtRepetirContraseña" ErrorMessage="Complete el campo &quot;Repetir contraseña&quot;" ValidationGroup="grupoUsuarios">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareV_Contraseña" runat="server" ControlToCompare="txtRepetirContraseña" ControlToValidate="txtContraseña" ErrorMessage="Los Campos de &quot;Contraseña&quot; y &quot;Repertir Contraseña&quot; no coinciden." ValidationGroup="grupoUsuarios">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Correo electrónico:</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtCorreoElectronico" runat="server" ValidationGroup="grupoUsuarios"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCorreoElectronico" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="Complete el campo &quot;Correo electronico&quot;" ValidationGroup="grupoUsuarios">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">CP:</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtCodigoPostal" runat="server" ValidationGroup="grupoUsuarios"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtCodigoPostal" ValidationGroup="grupoUsuarios" ErrorMessage="Complete el campo &quot;CP&quot;">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Localidades:</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:DropDownList ID="ddlLocalidades" runat="server" Height="21px" Width="158px" ValidationGroup="grupoUsuarios">
                            <asp:ListItem Value="0">-- Elija una localidad --</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvLocalidades" runat="server" ControlToValidate="ddlLocalidades" ErrorMessage="Complete el campo &quot;Localidades&quot;" InitialValue="0" ValidationGroup="grupoUsuarios">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" ValidationGroup="grupoUsuarios" OnClick="btnGuardarUsuario_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:ValidationSummary ID="ValSummary_Usuarios" runat="server" ValidationGroup="grupoUsuarios" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnInicio" runat="server" Text="Ir a inicio .aspx" Width="163px" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
