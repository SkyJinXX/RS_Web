using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class allInformation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();


        if (Session["username"] == null)
        {
            Session["username"] = "1202";
        }

        Session["Nid"] = "1";

        String s = "Select Uname From Users Where Uusername = '" + Session["username"] + "'";
        SqlCommand cmd = new SqlCommand(s, conn);
        cmd.CommandText = s;
        user_name.Text = cmd.ExecuteScalar().ToString();

        conn.Close();

    }

    protected void Button_logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    protected void Button_setting_Click(object sender, EventArgs e)
    {

    }

    protected void search_Click(object sender, EventArgs e)
    {

    }


    //单条资讯加载
    protected void News_Load(Label id_title, Label id_content, Label id_tag1, Label id_tag2)
    {
        if (Session["Nid"] == null)
        {
            Response.Write("<script>alert('资讯主键问题!');window.location.href ='login.aspx'</script>");
        }
        else
        {
            String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();

            String nid = Session["Nid"].ToString();

            //String t = Request.Form.Get(id_title.ToString());

            String s = "";
            SqlCommand cmd = new SqlCommand(s, conn);
            cmd.CommandText = "select Ntitle from News where Nid = '" + nid + "'";
            id_title.Text = cmd.ExecuteScalar().ToString();

            cmd.CommandText = "select Ncontent from News where Nid = '" + nid + "'";
            id_content.Text = cmd.ExecuteScalar().ToString();

            cmd.CommandText = "select Sum from N_L where Nid ='" + nid + "'";
            s = cmd.ExecuteScalar().ToString();
            String s1 = s.Substring(0, 3);
            String s2 = s.Substring(3, 3);

            if (s1 != null)
            {
                cmd.CommandText = "select Llablename from Lables where Lid ='" + s1 + "'";
                id_tag1.Text = cmd.ExecuteScalar().ToString();
            }
            if (s2 != null)
            {
                cmd.CommandText = "select Llablename from Lables where Lid ='" + s2 + "'";
                id_tag2.Text = cmd.ExecuteScalar().ToString();

            }
            conn.Close();

            Session["Nid"] = Convert.ToString(Convert.ToInt32(nid) + 1);
        }
    }

}