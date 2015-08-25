using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ASP_ADMIN_TIENDA.App
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=SYSTEMXHT\SQLEXPRESS; Initial Catalog=asp;Persist Security Info=True; User ID=sa;Password=w9w9dorotea");
            string myInnerJoin = "select p.id,fecha,estado,idproducto,unidades from pedidos as p inner join ventas on p.id = idpedido;select p.id,fecha,estado,idproducto,unidades from pedidos as p inner join ventas on p.id = idpedido where estado='PENDIENTE' ";
            SqlDataAdapter da = new SqlDataAdapter(myInnerJoin, con);
            DataSet ds = new DataSet();
            con.Open();
            da.Fill(ds);
            con.Close();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        
        }
    }
}