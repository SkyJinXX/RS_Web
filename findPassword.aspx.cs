using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class findPassword : System.Web.UI.Page
{
    SqlConnection objConnection = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        objConnection.ConnectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
       
    }

    protected void next_Click(object sender, EventArgs e)
    {
        objConnection.Open();
        String sql = "Select Uusername from Users Where Uusername = '" + identity .Text+ "'";
        SqlCommand cmd = new SqlCommand(sql, objConnection);
        cmd.CommandText = sql;
        String  name = (String)cmd.ExecuteScalar();
        //identity.Text = name;
        if (cmd.ExecuteScalar()!=null)
        {
            if (Session["CheckCode"] != null)
            {
                string checkcode = Session["CheckCode"].ToString();
                if (this.identifyingcode.Text != checkcode)
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('验证码输入错误!')", true);
                }
                else
                {
                    Session["username"] = identity.Text;
                    Response.Redirect("findPassword1.aspx");
                }
            }


        }
        else
        {
            Response.Write("<script>alert('用户名不存在！');</script>");
        }
        objConnection.Close();
       
    }
}