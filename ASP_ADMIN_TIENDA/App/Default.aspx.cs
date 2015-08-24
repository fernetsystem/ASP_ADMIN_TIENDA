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
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=SYSTEMXHT\SQLEXPRESS; Initial Catalog=asp;Persist Security Info=True; User ID=sa;Password=w9w9dorotea");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM account WHERE email = '" + TextBox1.Text + "' AND pass = '" + TextBox2.Text + "'";
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                Session["email"] = TextBox1.Text;
                Response.Redirect("Menu.aspx");
            }
            else
            {
                //Response.Write("<div class='alert alert-danger' role='alert'>...</div>");
            }
            con.Close();
            /*
                SqlConnection con = new SqlConnection(@"Data Source=SYSTEMXHT\SQLEXPRESS; Initial Catalog=asp;Persist Security Info=True; User ID=sa;Password=w9w9dorotea");
                SqlDataAdapter da = new SqlDataAdapter("select * from account",con);
                DataSet ds = new DataSet();
                con.Open();
                da.Fill(ds);
                con.Close();
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
        
             
             */
        }
    }
}