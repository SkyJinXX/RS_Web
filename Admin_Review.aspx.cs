using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class user_imformation : System.Web.UI.Page
{
    //页面加载
    SqlConnection objConnection = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('请先登录');window.location.href='login.aspx'</script>");
            return;
        }
        if (!Page.IsPostBack)
        {
            objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            objConnection.Open();

            String SelectSql = "";
            SqlCommand cmd = new SqlCommand(SelectSql, objConnection);
            cmd.CommandText = "select top 1 Rtitle,Rcontent,Rtype,Rkeyword from Review where Rcheck = '0'";

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0][1].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0][3].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0][2].ToString();

            objConnection.Close();


            objConnection.Close();
        }
    }

    protected void search_Click(object sender, EventArgs e)
    {

    }

    protected void saveChange_Click(object sender, EventArgs e)
    {

    }

    protected void Finish_Click(object sender, EventArgs e)
    {

    }
}