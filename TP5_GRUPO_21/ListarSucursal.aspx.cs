using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_21
{
    public partial class ListarSucursal : System.Web.UI.Page
    {
        private Conexion conexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                listaSucursales.DataSource = conexion.ObtenerTabla("SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, (SELECT DescripcionProvincia FROM Provincia WHERE Id_Provincia = Sucursal.Id_ProvinciaSucursal) AS Provincia, DireccionSucursal FROM Sucursal");

                listaSucursales.DataBind();



            }
        }
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtIdSucursal.Text))
            {
                string consulta = "SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, (SELECT DescripcionProvincia FROM Provincia WHERE Id_Provincia = Sucursal.Id_ProvinciaSucursal) AS Provincia, DireccionSucursal FROM Sucursal WHERE Id_Sucursal = " + txtIdSucursal.Text;

                listaSucursales.DataSource = conexion.ObtenerTabla(consulta);
                listaSucursales.DataBind();




                txtIdSucursal.Text = "";
            }
        }

        protected void listaSucursales_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}