using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class passwordChange : System.Web.UI.Page
{
    SqlConnection objConnection = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
    }

    protected void Button_changePassword_Click(object sender, EventArgs e)
    {
        try
        {
            objConnection.Open();
            String sql = "Select Upassword From Users Where Uusername = '" + (String)Session["username"] + "'";
            SqlCommand cmd = new SqlCommand(sql,objConnection);
            cmd.CommandText = sql;
            String oldpassword = (String)cmd.ExecuteScalar();
            if(oldpassword==oldPassword.Text)
            {
                String newpassword =newPassword.Text;
                String cpassword = confirmPassword.Text;
                if (cpassword == newpassword)
                {
                    String Sql = "update Users  set  Upassword ='" + newpassword + "' where  Uusername = '" + (String)Session["username"] + "'";
                    SqlCommand cmd1 = new SqlCommand(Sql, objConnection);
                    cmd1.CommandText = Sql;
                    cmd1.ExecuteScalar();
                    Response.Write("<script>alert('密码修改成功！');</script>");

                }
                else
                {
                    Response.Write("<script>alert('两次密码输入不一致！');</script>");

                }
                
            }
           
            else{
                Response.Write("<script>alert('旧密码错误！');</script>");
            }
            objConnection.Close();
        }
        catch
        {
            Response.Write("<script>alert('密码修改失败！');</script>");
        }
        

        
    }
}