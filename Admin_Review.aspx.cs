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
    public string str;
    //页面加载
    SqlConnection objConnection = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('请先登录');window.location.href='login.aspx'</script>");
            return;
        }
            objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            objConnection.Open();
            SqlDataAdapter da;
            DataSet ds = new DataSet();
            String SelectSql = "";
            SqlCommand cmd = new SqlCommand(SelectSql, objConnection);

            cmd.CommandText = "select top 1 Rtitle,Rcontent,Rtype,Rkeyword,Rid from Review where Rcheck = '0'";
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0][1].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0][3].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0][2].ToString();
            Session["Rid"] = ds.Tables[0].Rows[0][4].ToString();

            cmd.CommandText = "select Rtitle from Review where Rcheck = '0'";
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            foreach (DataRow row in ds.Tables[0].Rows)
            {

                str += "<li class=\"nav - right - four_selected\"><a class=\"nav - right - four_a_after\" href=\"#\" id=\"c\" runat=\"server\">" + row[0].ToString() + "</a></li>";
            }

            objConnection.Close();
        
    }

    protected void search_Click(object sender, EventArgs e)
    {

    }

    protected void saveChange_Click(object sender, EventArgs e)
    {

    }
    protected void Finish_Click(object sender, EventArgs e)
    {
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        objConnection.Open();
        String SelectSql = "";
        SqlCommand cmd = new SqlCommand(SelectSql, objConnection);
        string Rid = (string)Session["Rid"];
        cmd.CommandText = "update Review set Rcheck = '1' where Rid = '"+Rid+"'";
        cmd.ExecuteNonQuery();
        objConnection.Close();
        Response.Write("<script>window.location.href='Admin_Review.aspx'</script>");
    }


    protected void Cancel_Click(object sender, EventArgs e)
    {

    }
}