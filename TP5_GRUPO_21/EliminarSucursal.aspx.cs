using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_21
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        private Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                ddlProvinciasEliminar.DataSource = conexion.ObtenerTabla("SELECT * FROM Provincia");
                ddlProvinciasEliminar.DataTextField = "DescripcionProvincia";
                ddlProvinciasEliminar.DataValueField = "Id_Provincia";
                ddlProvinciasEliminar.DataBind();

                ddlProvinciasEliminar.Items.Insert(0, new ListItem("-- Seleccione una Provincia --", "0"));
            }
        }
        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid && !string.IsNullOrEmpty(txtIdEliminar.Text))
            {
                string consulta = "DELETE FROM Sucursal WHERE Id_Sucursal = " + txtIdEliminar.Text;

                int filas = conexion.EjecutarConsulta(consulta);
                
                if (filas > 0)
                {
                    lblMensajeEliminar.Text = "La sucursal se ha eliminado con éxito";
                    lblMensajeEliminar.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMensajeEliminar.Text = "El ID ingresado no existe";
                    lblMensajeEliminar.ForeColor = System.Drawing.Color.Red;
                }

                txtIdEliminar.Text = "";
            }
        }

        protected void btnEliminarNombreProvincia_Click(object sender, EventArgs e)
        {
            if (Page.IsValid && !string.IsNullOrEmpty(txtEliminarNombreProvincia.Text))
            {
                string consulta = "DELETE FROM Sucursal WHERE NombreSucursal = '" + txtEliminarNombreProvincia.Text+"' AND Id_ProvinciaSucursal=" + ddlProvinciasEliminar.SelectedValue;

                int filas = conexion.EjecutarConsulta(consulta);

                if (filas > 0)
                {
                    lblEliminarNombreProvincia.Text = "La sucursal se ha eliminado con éxito";
                    lblEliminarNombreProvincia.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblEliminarNombreProvincia.Text = "El Nombre+provincia ingresado no existe";
                    lblEliminarNombreProvincia.ForeColor = System.Drawing.Color.Red;
                }

                txtIdEliminar.Text = "";
            }
        }
    }
}