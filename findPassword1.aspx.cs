using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Resources;
using System.IO;

public partial class findPassword1 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void SendMail()
    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("994920937@qq.com");   //发件人的邮箱地址
        msg.Subject = "*找回密码*";  //邮件主题
        msg.Body = "<a>验证码：645978  有效期60分钟</a>";//邮件正文
        msg.To.Add(this.email.Text);
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
    protected void next_Click(object sender, EventArgs e)
    {

        Response.Redirect("findPassword2.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SendMail();
        Button1.Text = "验证码已发送";
       // Response.Write("<script>alert('验证码已发送！');</script>");
    }
}