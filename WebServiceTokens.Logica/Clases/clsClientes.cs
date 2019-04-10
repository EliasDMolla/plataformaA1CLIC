using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;

namespace WebServiceTokens.Logica.Clases
{
    public class clsClientes
    {
        string stConexion;
        SqlConnection sqlConnection = null;
       // SqlParameter sqlParameter = null;
        SqlCommand sqlCommand = null;
        SqlDataAdapter sqlDataAdapter = null;

        public clsClientes()
        {
            clsConexion obclsConex = new clsConexion();
            stConexion = obclsConex.getConexion();

        }
        public DataSet dsConsultaClientes(int intID)
        {
            try
            {
                DataSet dsConsulta = null;

                sqlConnection = new SqlConnection(stConexion);
                sqlConnection.Open();

                sqlCommand = new SqlCommand("spConsultarClientesXID", sqlConnection);
                sqlCommand.CommandType = CommandType.StoredProcedure;

                sqlCommand.Parameters.Add(new SqlParameter("@pID", intID));
                sqlCommand.ExecuteNonQuery();

                sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                sqlDataAdapter.Fill(dsConsulta);

                return dsConsulta;
            }
            catch (Exception ex) { throw ex; }

        }

    }
}
