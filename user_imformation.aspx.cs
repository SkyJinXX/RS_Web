using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class user_imformation : System.Web.UI.Page
{
    //页面加载
    SqlConnection objConnection = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('请先登录');window.location.href='login.aspx'</script>");

        }
        if (!Page.IsPostBack)
        {
            objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            objConnection.Open();
            String SelectSql = "";
            SqlCommand cmd = new SqlCommand(SelectSql, objConnection);

            cmd.CommandText = "select Uusername from Users where Uusername = '" + (String)Session["username"] + "'";
            TextBox_Username.Text = (String)cmd.ExecuteScalar();
            TextBox_Username.Enabled = false;

            cmd.CommandText = "select Uname from Users where Uusername = '" + (String)Session["username"] + "'";
           cmd.ExecuteScalar();
            if (cmd.ExecuteScalar()== DBNull.Value)
            {
                TextBox_Nickname.Text = "";
            }               
            else{
                TextBox_Nickname.Text = (String)cmd.ExecuteScalar();
                user_name.Text = cmd.ExecuteScalar().ToString();
            }

            cmd.CommandText = "select Uimage_url From Users where Uusername = '" + Session["username"] + "'";
            User_HeaderImager.Src = cmd.ExecuteScalar().ToString();

            cmd.CommandText = "select Umail from Users where Uusername = '" + (String)Session["username"] + "'";
            TextBox_Email.Text = (String)cmd.ExecuteScalar();

            cmd.CommandText = "select Uage from Users where Uusername = '" + (String)Session["username"] + "'";
          cmd.ExecuteScalar();
            if (cmd.ExecuteScalar()== DBNull.Value)
            {
                TextBox_Age.Text = "";
            }
            else{
                TextBox_Age.Text = (String)cmd.ExecuteScalar();
            }
                

            cmd.CommandText = "select Usex from Users where Uusername = '" + (String)Session["username"] + "'";
           // TextBox_Sex.Text = (String)cmd.ExecuteScalar();

             if (cmd.ExecuteScalar() == DBNull.Value)
            {
                TextBox_Sex.Text = "";
            }
            else
            {
                TextBox_Sex.Text = (String)cmd.ExecuteScalar();
            }


            objConnection.Close();
        }
    }

    protected void Button_logout_Click(object sender, EventArgs e)
    {

    }

    protected void Button_setting_Click(object sender, EventArgs e)
    {

    }

    protected void Button_cancel_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('已放弃修改！');window.location.href='user_imformation.aspx'</script>");
    }

    protected void Button_confirm_Click(object sender, EventArgs e)
    {
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        objConnection.Open();

        String SelectSql = "";
        SqlCommand cmd = new SqlCommand(SelectSql, objConnection);

        cmd.CommandText = "update Users set Uname='"+ TextBox_Nickname.Text + "' where Uusername = '" + (String)Session["username"] + "'";
        cmd.ExecuteScalar();

        cmd.CommandText = "update Users set Umail='" + TextBox_Email.Text + "' where Uusername = '" + (String)Session["username"] + "'";
        cmd.ExecuteScalar();

        cmd.CommandText = "update Users set Uage='" + TextBox_Age.Text + "' where Uusername = '" + (String)Session["username"] + "'";
        cmd.ExecuteScalar();

        cmd.CommandText = "update Users set Usex='" + TextBox_Sex.Text + "' where Uusername = '" + (String)Session["username"] + "'";
        cmd.ExecuteScalar();


        objConnection.Close();
        Response.Write("<script>alert('信息修改成功！');window.location.href='user_imformation.aspx'</script>");
    }


    protected void search_Click(object sender, EventArgs e)
    {

    }

    protected void saveChange_Click(object sender, EventArgs e)
    {

    }
}