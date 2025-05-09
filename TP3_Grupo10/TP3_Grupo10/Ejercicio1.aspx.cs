﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_Grupo10
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        string Contraseña = "";
        string RepContraseña = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void cvLocalidad_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string nuevaLocalidad = args.Value.Trim(); // Lo que hay escrito en TextBox
            bool existe = false;

            // Recorreo los ítems del DropDownList
            foreach (ListItem item in ddlLocalidades.Items)
            {
                if (item.Text.Equals(nuevaLocalidad, StringComparison.OrdinalIgnoreCase))
                {
                    existe = true;
                    break;
                }
            }

            // Si existe, no es válido (error)
            args.IsValid = !existe;
        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {

            if (Page.IsValid) // Solo si pasó el CustomValidator
            {
                string nuevaLocalidad = txtNombreLocalidad.Text.Trim();
                ddlLocalidades.Items.Add(new ListItem(nuevaLocalidad));
                txtNombreLocalidad.Text = ""; // Limpiar el textbox
            }
            else
            {

            }

            restaurarContraseña();
        }

        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
   
                string nombreUsuario = txtNombreUsuario.Text.Trim();


                lblBienvenidaUser.Text = $"¡Bienvenida, {nombreUsuario}! 🙌";

            }
            else
            {
                restaurarContraseña();

            }

        }

        protected void restaurarContraseña()
        {

            Contraseña = txtContraseña.Text;
            RepContraseña = txtRepetirContraseña.Text;
            txtContraseña.Attributes["value"] = Contraseña;
            txtRepetirContraseña.Attributes["value"] = RepContraseña;
        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
                Response.Redirect("~/inicio.aspx");
        }
    }
}