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
    public partial class MyProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=SYSTEMXHT\SQLEXPRESS; Initial Catalog=asp;Persist Security Info=True; User ID=sa;Password=w9w9dorotea");
            SqlDataAdapter da = new SqlDataAdapter("select * from prendas", con);
            DataSet ds = new DataSet();
            con.Open();
            da.Fill(ds);
            con.Close();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
 
        }
    }
}