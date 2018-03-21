using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class findPassword2 : System.Web.UI.Page
{
    SqlConnection objConnection = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
    }

    protected void Button_changePassword_Click(object sender, EventArgs e)
    {
        String a = newPassword.Text;
        String b = confirmPassword.Text;
        if (a == b)
        {
            objConnection.Open();
            String Sql = "update Users  set  Upassword ='" + a + "' where  Uusername = '" + (String)Session["username"] + "'";
            SqlCommand cmd = new SqlCommand(Sql, objConnection);
            cmd.CommandText = Sql;
            cmd.ExecuteScalar();
            objConnection.Close();
            Response.Write("<script>alert('密码修改成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('两次密码不一致！');</script>");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Response.Redirect("login.aspx");
      
    }
}