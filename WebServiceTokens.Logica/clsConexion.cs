
using System.Configuration;

namespace WebServiceTokens.Logica
{
    public class clsConexion
    {
        public string getConexion()
    {
            return ConfigurationManager.ConnectionStrings["Cnx"].ToString();
    }
    }
}
