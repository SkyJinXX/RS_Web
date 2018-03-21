using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection objConnection = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_login_Click(object sender, EventArgs e)
    {
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        objConnection.Open();

        String Sqlpwd = "Select Upassword From Users Where Uusername = '" + Username.Text + "'";
        SqlCommand cmd = new SqlCommand(Sqlpwd, objConnection);
        cmd.CommandText = Sqlpwd;
        cmd.ExecuteScalar();

        String pwd = (String)cmd.ExecuteScalar();

     
        if (cmd.ExecuteScalar() == null)
        {
            Response.Write("<script>alert('用户名错误!');window.location.href ='login.aspx'</script>");
        }
        else if(pwd != Password.Text)
        {
            Response.Write("<script>alert('密码错误!');window.location.href ='login.aspx'</script>");
        }
        else
        {
            String user = Username.Text;

            Session["username"] = user;
            Response.Redirect("index.aspx");
        }
        objConnection.Close();

    }

    protected void sublogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    protected void subregister_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }

}