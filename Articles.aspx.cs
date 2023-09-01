using System;
using System.Data;
using System.Data.SqlClient;


namespace WebApp_Assesment_11
{
    public partial class Articles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("server=MY_PC;database=ContentDB;trusted_connection=true");
                SqlCommand cmd = new SqlCommand("SELECT * FROM Articles", con);
                con.Open();
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dataAdapter.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                Label1.Text = "Number of Articles: " + ds.Tables[0].Rows.Count;
            }
            catch (Exception ex)
            {
                Label1.Text = "Error: " + ex.Message;
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}