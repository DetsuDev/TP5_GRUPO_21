using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_21
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        private Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                dpProvincias.DataSource = conexion.ObtenerTabla("SELECT * FROM Provincia");
                dpProvincias.DataTextField = "DescripcionProvincia"; 
                dpProvincias.DataValueField = "Id_Provincia"; 
                dpProvincias.DataBind();

                dpProvincias.Items.Insert(0, new ListItem("-- Seleccione una Provincia --", "0"));
            }
        }
        
        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if (!Page.IsValid)
            {
                return;
            }
            int filasAfectadas = conexion.EjecutarConsulta("INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) VALUES ('" + txtNombre.Text + "', '" + txtDescripcion.Text + "'," + dpProvincias.SelectedValue + ",'" + txtDireccion.Text + "')");

            if (filasAfectadas > 0)
            {
                lblMensaje.Text = "La sucursal se ha agregado con éxito";

                txtNombre.Text = "";
                txtDescripcion.Text = "";
                txtDireccion.Text = "";
                dpProvincias.SelectedIndex = 0;
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int filas = conexion.EjecutarEscalar(
                "SELECT COUNT(1) FROM Sucursal WHERE NombreSucursal='" + txtNombre.Text + "' AND Id_ProvinciaSucursal=" +dpProvincias.SelectedValue
            );

            args.IsValid = filas == 0;
        }
    }

}