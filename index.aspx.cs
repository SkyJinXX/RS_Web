using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services;

public partial class index : System.Web.UI.Page
{
    [WebMethod]
    public static string getNewsDiv()
    {
        return "这是第条资讯";
    }
    //全局变量 用于迭代资讯主键
    int count = 1;
    String str = "";
    int li = 0, di = 0, co = 0;
    //页面加载
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
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

            cmd.CommandText = "Select Uid From Users Where Uusername = '" + Session["username"] + "'";
            Session["Uid"] = cmd.ExecuteScalar().ToString();

            conn.Close();
        }
    }

    //资讯主键迭代功能
    protected void Session_Nid_Next(String s)
    {
        if (s == "")
        {
            Session["Nid"] = count.ToString();
        }
        else
        {
            //Response.Write("<script>alert('" + s + "')</script>");
            int st = 0, len = 0;
            if (count == 1)
            {
                len = Convert.ToInt32(s.IndexOf('-')) - st;
            }
            else
            {
                int tmp = 0;
                for (int i = 0; i < s.Length; i++)
                {
                    if (s[i] == '-')
                    {
                        tmp++;
                        if (tmp == count - 1)
                        {
                            st = i + 1;
                        }
                        if (tmp == count)
                        {
                            len = i - st;
                            break;
                        }
                    }
                }
            }
            String q = s.Substring(st, len);
            Session["Nid"] = q;
            //Response.Write("<script>alert('" + Session["Nid"].ToString() + "')</script>");
        }
        count++;
    }

    //注销事件
    protected void Button_logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    protected void Button_setting_Click(object sender, EventArgs e)
    {

    }

    //点赞事件 
    protected void Liking(Label id_title, Button id_like)
    {
        if (IsPostBack && li == 1)
        {
            String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("", conn);
            cmd.CommandText = "select nid from news where ntitle = '" + id_title.Text + "'";

            string nid = cmd.ExecuteScalar().ToString();

            if (nid != null)
            {
                cmd.CommandText = "select uid from u_n where nid = '" + nid + "' and uid = '" + Session["uid"] + "'";
                if (cmd.ExecuteScalar() != null)
                {
                    cmd.CommandText = "update u_n set isok = '" + true + "' where  nid = '" + nid + "' and uid = '"
                        + Session["uid"] + "' ";
                    cmd.ExecuteScalar();
                }
                else
                {
                    TimeSpan ts = new TimeSpan(0, 7, 55);
                    cmd.CommandText = "insert into u_n values('" + Session["uid"] + "','" + nid + "','"
                        + ts + "','" + false + "','" + true + "','" + false + "')";
                    cmd.ExecuteScalar();
                }
                cmd.CommandText = "select count(*) from U_N where Nid = '" + nid + "' and isok = '" + true + "'";

                id_like.Text = "已点赞 ( " + cmd.ExecuteScalar().ToString() + " ) ";
                id_like.Enabled = false;
            }
            conn.Close();

            li = 0;
        }
    }

    //点踩事件
    protected void Disliking(Label id_title, Button id_dislike)
    {
        if (IsPostBack && di == 1)
        {
            String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("", conn);
            cmd.CommandText = "select nid from news where ntitle = '" + id_title.Text + "'";

            string nid = cmd.ExecuteScalar().ToString();

            if (nid != null)
            {
                cmd.CommandText = "select uid from u_n where nid = '" + nid + "' and uid = '" + Session["uid"] + "'";
                if (cmd.ExecuteScalar() != null)
                {
                    cmd.CommandText = "update u_n set isbad = '" + true + "' where  nid = '" + nid + "' and uid = '"
                        + Session["uid"] + "' ";
                    cmd.ExecuteScalar();
                }
                else
                {
                    TimeSpan ts = new TimeSpan(0, 10, 15);
                    cmd.CommandText = "insert into u_n values('" + Session["uid"] + "','" + nid + "','"
                        + ts + "','" + false + "','" + false + "','" + true + "')";
                    cmd.ExecuteScalar();
                }
                cmd.CommandText = "select count(*) from U_N where Nid = '" + nid + "' and isbad = '" + true + "'";

                id_dislike.Text = "已点踩 ( " + cmd.ExecuteScalar().ToString() + " ) ";
                id_dislike.Enabled = false;
            }
            conn.Close();

            di = 0;
        }
    }

    //收藏事件
    protected void Collecting(Label id_title, Button id_collection)
    {
        if (IsPostBack && co == 1)
        {
            String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("", conn);
            cmd.CommandText = "select nid from news where ntitle = '" + id_title.Text + "'";

            string nid = cmd.ExecuteScalar().ToString();

            if (nid != null)
            {
                cmd.CommandText = "select uid from u_n where nid = '" + nid + "' and uid = '" + Session["uid"] + "'";
                if (cmd.ExecuteScalar() != null)
                {
                    cmd.CommandText = "update u_n set iscollect = '" + true + "' where  nid = '" + nid + "' and uid = '"
                        + Session["uid"] + "' ";
                    cmd.ExecuteScalar();
                }
                else
                {
                    TimeSpan ts = new TimeSpan(0, 9, 30);
                    cmd.CommandText = "insert into u_n values('" + Session["uid"] + "','" + nid + "','"
                        + ts + "','" + true + "','" + false + "','" + false + "')";
                    cmd.ExecuteScalar();
                }

                id_collection.Text = "已收藏^_^ ";
                id_collection.Enabled = false;
            }
            conn.Close();

            co = 0;
        }
    }

    //热搜事件
    protected String Headlines()
    {
        String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();

        String s = "";
        SqlCommand cmd = new SqlCommand(s, conn);

        Array a = new Array[3];

        cmd.CommandText = "select count(*) from News";
        int len = Convert.ToInt32(cmd.ExecuteScalar().ToString());
        for (int i = 1; i <= len; i++)
        {
            cmd.CommandText = "select count(*) from U_N where Nid = '" + i.ToString() + "' and isok = '" + true + "'";
            int t = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (t > Convert.ToInt32(a.GetValue(0)))
            {
                a.SetValue(t, 0);
            }
            if (t > Convert.ToInt32(a.GetValue(1)))
            {
                a.SetValue(t, 1);
            }
            if (t > Convert.ToInt32(a.GetValue(2)))
            {
                a.SetValue(t, 2);
            }
        }
        conn.Close();

        s = a.GetValue(0).ToString() + "-" + a.GetValue(1).ToString() + "-" + a.GetValue(2).ToString() + "-";

        //Response.Write("<script>alert('无搜索内容，并已为你推荐热搜新闻！')</script>");

        return s;
    }

    //搜索按钮事件
    protected void search_Click(object sender, EventArgs e)
    {
        String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();

        String q = "";
        String s = "";
        SqlCommand cmd = new SqlCommand(s, conn);

        cmd.CommandText = "select * from News where Ntitle like '%" + searchtextbox.Text + "%' or Nkeyword like '%"
            + searchtextbox.Text + "%'";
        if (cmd.ExecuteScalar() == null)
        {
            Response.Write("<script>alert('2333')</script>");
            q = Headlines();
        }
        else
        {
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                q += row[0].ToString() + "-";
            }
            //Response.Write("<script>alert('" + q + "')</script>");
        }
        conn.Close();

        str = q;
    }

    //单条资讯加载
    protected void News_Load(Label id_title, Label id_content, Label id_tag1, Label id_tag2, Button id_like, Button id_dislike, Button id_collection)
    {

        Session_Nid_Next(str);

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

            String s = "";
            SqlCommand cmd = new SqlCommand(s, conn);

            if (nid != "")
            {
                cmd.CommandText = "select Ntitle from News where Nid = '" + nid + "'";
                id_title.Text = cmd.ExecuteScalar().ToString();

                cmd.CommandText = "select Ncontent from News where Nid = '" + nid + "'";
                id_content.Text = "   " + Convert.ToString(cmd.ExecuteScalar());
                if (id_content.Text.Length >= 110)
                {
                    id_content.Text = "   " + id_content.Text.Substring(0, 100) + ".....";
                    //Response.Write("<script>alert('" + id_content.Text+"')</script>");
                }

                cmd.CommandText = "select count(*) from U_N where Nid = '" + nid + "' and isok = '" + true + "'";
                SqlCommand cmd1 = new SqlCommand("", conn);
                cmd1.CommandText = "select Uid from U_N where Nid = '" + nid + "' and isok = '" + true + "'and Uid = '"
                    + Session["Uid"] + "'";

                if (cmd1.ExecuteScalar() != null)
                {
                    id_like.Text = "已点赞 ( " + cmd.ExecuteScalar().ToString() + " ) ";
                    id_like.Enabled = false;
                }
                else
                {
                    id_like.Text = "点赞 ( " + cmd.ExecuteScalar().ToString() + " ) ";
                }

                cmd.CommandText = "select count(*) from U_N where Nid = '" + nid + "' and isbad = '" + true + "'";
                cmd1.CommandText = "select Uid from U_N where Nid = '" + nid + "' and isbad = '" + true + "'and Uid = '"
                    + Session["Uid"] + "'";
                if (cmd1.ExecuteScalar() != null)
                {
                    id_dislike.Text = "已点踩 ( " + cmd.ExecuteScalar().ToString() + " ) ";
                    id_dislike.Enabled = false;
                }
                else
                {
                    id_dislike.Text = "点踩 ( " + cmd.ExecuteScalar().ToString() + " ) ";
                }
                cmd.CommandText = "select Uid from U_N where Nid = '" + nid + "' and iscollect = '" + true + "'and Uid = '"
                    + Session["Uid"] + "'";
                if (cmd.ExecuteScalar() != null)
                {
                    id_collection.Text = "已收藏^_^";
                    id_collection.Enabled = false;
                }
                else
                {
                    id_collection.Text = "收藏";
                }
                cmd.CommandText = "select Sum from N_L where Nid ='" + nid + "'";
                s = cmd.ExecuteScalar().ToString();
            }
            String s1 = "";
            String s2 = "";
            if (s.Length >= 3)
            {
                s1 = s.Substring(0, 3);
            }
            if (s.Length >= 6)
            {
                s2 = s.Substring(3, 3);
            }
            if (s1 != "")
            {
                cmd.CommandText = "select Llablename from Lables where Lid ='" + s1 + "'";
                id_tag1.Text = cmd.ExecuteScalar().ToString();
            }
            if (s2 != "")
            {
                cmd.CommandText = "select Llablename from Lables where Lid ='" + s2 + "'";
                id_tag2.Text = cmd.ExecuteScalar().ToString();
            }
            conn.Close();
        }
    }

    protected void Liking_C(object sender, EventArgs e)
    {
        li = 1;
    }

    protected void Disliking_C(object sender, EventArgs e)
    {
        di = 1;
    }

    protected void Collecting_C(object sender, EventArgs e)
    {
        co = 1;
    }

}