using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

public partial class register : System.Web.UI.Page
{
    SqlConnection objConnection = new SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        objConnection.Open();
        String SelectSql = "";
        SqlCommand cmd2 = new SqlCommand(SelectSql, objConnection);
        cmd2.CommandText = "select max(Uid) from Users";
        int id = 1;
         id = Convert.ToInt32(cmd2.ExecuteScalar()) + 1;
        TextBox1.Text = id.ToString();
        objConnection.Close();
       

    }
    private void SendMail()
    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("994920937@qq.com");   //发件人的邮箱地址
        msg.Subject = "*注册激活*";  //邮件主题
        msg.Body = "<a href='#'>您的账号已经激活</a>";//邮件正文
        msg.To.Add(this.Email.Text);
        msg.IsBodyHtml = true;  //邮件正文是否支持html的值
        SmtpClient sc = new SmtpClient();
        sc.Host = "smtp.qq.com";
        sc.EnableSsl = true;
        sc.UseDefaultCredentials = false;
        sc.Credentials = new System.Net.NetworkCredential("994920937@qq.com", "pmbygbxzmglnbeeg");
        sc.Port = 25;
        NetworkCredential nc = new NetworkCredential("994920937@qq.com", "pmbygbxzmglnbeeg");  //验证凭据 1607977350：是邮箱账号，********：是邮箱密码
        sc.Credentials = nc;
        sc.Send(msg);
    }


    protected void Button_register_Click(object sender, EventArgs e)
    {

        String username = Username.Text;
        String password = Password.Text;
        String confrimpassword = ConfirmPassword.Text;
        String mail = Email.Text;


        objConnection.Open();
        String sql = "Select Uusername from Users Where Uusername = '" + Username.Text + "'";
        SqlCommand cmd = new SqlCommand(sql, objConnection);
        cmd.CommandText = sql;
        String name = (String)cmd.ExecuteScalar();


        if (cmd.ExecuteScalar()!= null)
        {
            Response.Write("<script>alert('用户名已存在');</script>");
        }
        else
        {
           

            if (password == confrimpassword)
            {
                String SqlStr = "Insert into Users(Uid,Uusername,Upassword,Umail) values ('" + TextBox1.Text + "','" + Username.Text + "','" + Password.Text + "','" + Email.Text + "')";
                SqlCommand cmd1 = new SqlCommand(SqlStr, objConnection);
                cmd1.CommandText = SqlStr;
                cmd1.ExecuteScalar();
                 SendMail();
                Response.Write("<script>alert('请前往邮箱激活此账号');</script>");
            }
            else
            {
                Response.Write("<script>alert('两次输入密码不一致');</script>");
            }
        }
        
        
        objConnection.Close();
    }

    protected void sublogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("selectLabels.aspx");
    }

    protected void subregister_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}