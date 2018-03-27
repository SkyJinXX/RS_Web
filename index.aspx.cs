﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Services;
using System.Collections;
using System.Text;

public partial class index : System.Web.UI.Page
{
    //全局变量 用于迭代资讯主键
    int count = 1;
    String str = "";
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

            for (int i = 1; i < 176; i++)
            {
                String paths = "img/Information/" + i + ".jpg";
                //Response.Write("<script>alert('" + paths.ToString() + "')</script>");

                cmd.CommandText = "update News set nimage_url = '" + paths + "' where Nid = '" + (i).ToString() + "'";
                cmd.ExecuteNonQuery();
            }

            conn.Close();
        }
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
    [WebMethod]
    public static void Liking(String nid)
    {
        if (nid != null && nid != "")
        {
            String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("", conn);
            cmd.CommandText = "select uid from u_n where nid = '" + nid + "' and uid = '" + HttpContext.Current.Session["uid"] + "'";
            if (cmd.ExecuteScalar() != null)
            {
                cmd.CommandText = "update u_n set isok = '" + true + "' where  nid = '" + nid + "' and uid = '"
                    + HttpContext.Current.Session["uid"] + "' ";
                cmd.ExecuteScalar();
            }
            else
            {
                TimeSpan ts = new TimeSpan(0, 7, 55);
                cmd.CommandText = "insert into u_n values('" + HttpContext.Current.Session["uid"] + "','" + nid + "','"
                    + ts + "','" + false + "','" + true + "','" + false + "')";
                cmd.ExecuteScalar();
            }
            cmd.CommandText = "select Ngoods from News where Nid = '" + nid + "'";
            String number = Convert.ToString(Convert.ToInt32(cmd.ExecuteScalar().ToString()) + 1);

            cmd.CommandText = "update News set Ngoods = '" + number + "' where Nid = '" + nid + "'";
            cmd.ExecuteNonQuery();

            //id_like.Text = "已点赞 ( " + cmd.ExecuteScalar().ToString() + " ) ";
            //id_like.Enabled = false;
            conn.Close();
        }
        else
        {
            Console.Write("传入的Nid为空错误");
        }
    }

    //点踩事件
    [WebMethod]
    public static void Disliking(string nid)
    {
        if (nid != null && nid != "")
        {
            String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("", conn);
            
            cmd.CommandText = "select uid from u_n where nid = '" + nid + "' and uid = '" + HttpContext.Current.Session["uid"] + "'";
            if (cmd.ExecuteScalar() != null)
            {
                cmd.CommandText = "update u_n set isbad = '" + true + "' where  nid = '" + nid + "' and uid = '"
                    + HttpContext.Current.Session["uid"] + "' ";
                cmd.ExecuteScalar();
            }
            else
            {
                TimeSpan ts = new TimeSpan(0, 10, 15);
                cmd.CommandText = "insert into u_n values('" + HttpContext.Current.Session["uid"] + "','" + nid + "','"
                    + ts + "','" + false + "','" + false + "','" + true + "')";
                cmd.ExecuteScalar();
            }
            cmd.CommandText = "select Nbads from News where Nid = '" + nid + "'";
            String number = Convert.ToString(Convert.ToInt32(cmd.ExecuteScalar().ToString()) + 1);

            cmd.CommandText = "update News set Nbads = '" + number + "' where Nid = '" + nid + "'";
            cmd.ExecuteNonQuery();
            
            //id_dislike.Text = "已点踩 ( " + cmd.ExecuteScalar().ToString() + " ) ";
            //id_dislike.Enabled = false;
            conn.Close();
        }
        else
        {
            Console.Write("传入的Nid为空错误");
        }
    }

    //收藏事件
    [WebMethod]
    public static void Collecting(string nid)
    {
        if (nid != null && nid != "")
        {
            String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("", conn);
            cmd.CommandText = "select uid from u_n where nid = '" + nid + "' and uid = '" + HttpContext.Current.Session["uid"] + "'";
            if (cmd.ExecuteScalar() != null)
            {
                cmd.CommandText = "update u_n set iscollect = '" + true + "' where  nid = '" + nid + "' and uid = '"
                    + HttpContext.Current.Session["uid"] + "' ";
                cmd.ExecuteScalar();
            }
            else
            {
                TimeSpan ts = new TimeSpan(0, 9, 30);
                cmd.CommandText = "insert into u_n values('" + HttpContext.Current.Session["uid"] + "','" + nid + "','"
                    + ts + "','" + true + "','" + false + "','" + false + "')";
                cmd.ExecuteScalar();
            }

            //id_collection.Text = "已收藏^_^ ";
            //id_collection.Enabled = false;
            
            conn.Close();
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

        //Session_Nid_Next(str);

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

    //搜索生成关键字查询的资讯显示序列
    public static ArrayList Search_Nid(TextBox tb)
    {
        ArrayList res = new ArrayList();

        String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();

        SqlCommand cmd = new SqlCommand("", conn);
        cmd.CommandText = "select * from News where Ntitle like '%" + tb.Text + "%' or Nkeyword like '%"
            + tb.Text + "%'";

        if (cmd.ExecuteScalar() == null)
        {
            cmd.CommandText = "select top(4) from News order by goods desc, Nid asc";
        }

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        foreach (DataRow row in ds.Tables[0].Rows)
        {
            res.Add(Convert.ToInt32(row[0].ToString()));
        }
        
        //Console.Write("{0}", s.ToString());
        conn.Close();

        return res;
    }

    //默认生成总的Nid序列
    public static ArrayList Recommand_Nid()
    {
        ArrayList res = new ArrayList();
        for (int i = 1; i < 100; i++) {
            res.Add(i);
        }
        return res;
    }

    //选择某组资讯返回json格式
    public static String Select_News(ArrayList a)
    {
        String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();

        SqlCommand cmd = new SqlCommand("", conn);
        cmd.CommandText = "select Nid,Ntitle,Ncontent,Ntype,Ngoods,Nbads from News where Nid in ('"
                            + a[0] + "','" + a[1] + "','" + a[2] + "','"
                            + a[3] + "')";

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        String s = DatasetToJson(ds);
        //Response.Write("" +s.ToString());
        Console.Write("{0}", s.ToString());

        conn.Close();

        return s;
    }

    //数据集的总的（多表）json格式转化
    public static string DatasetToJson(System.Data.DataSet ds)
    {
        StringBuilder json = new StringBuilder();
        json.Append("{\"Tables\":");
        json.Append("[");
        foreach (System.Data.DataTable dt in ds.Tables)
        {
            json.Append(DataTableToJson(dt));
            json.Append(",");
        }
        json.Remove(json.Length - 1, 1);
        json.Append("]");
        json.Append("}");
        return json.ToString();
    }

    //单表的json格式转化
    public static string DataTableToJson(DataTable dt)
    {
        StringBuilder jsonBuilder = new StringBuilder();
        jsonBuilder.Append("{\"Name\":\"" + dt.TableName + "\",\"Rows");
        jsonBuilder.Append("\":[");
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            jsonBuilder.Append("{");
            for (int j = 0; j < dt.Columns.Count; j++)
            {
                jsonBuilder.Append("\"");
                jsonBuilder.Append(dt.Columns[j].ColumnName);
                jsonBuilder.Append("\":\"");

                if (j == 2)
                {
                    String s = dt.Rows[i][j].ToString();
                    s = s.Substring(0, 110);
                     
                    jsonBuilder.Append(s.Replace("\"", "\\\""));
                }
                else
                {
                    jsonBuilder.Append(dt.Rows[i][j].ToString().Replace("\"", "\\\""));
                }
                jsonBuilder.Append("\",");
            }
            jsonBuilder.Remove(jsonBuilder.Length - 1, 1);
            jsonBuilder.Append("},");
        }
        jsonBuilder.Remove(jsonBuilder.Length - 1, 1);
        jsonBuilder.Append("]");
        jsonBuilder.Append("}");
        return jsonBuilder.ToString();
    }

    //获取前台页面需要显示的资讯的多个属性值
    [WebMethod]
    public static string GetNewsJson(string page)
    {
        int page_int = int.Parse(page);
        int st = page_int * 4;
        int end = (page_int+1) * 4;
        Console.Write("{0}x{1}", st, end);
        ArrayList a = Recommand_Nid();

        ArrayList showlist = new ArrayList();
        for(int i = st; i < end; i++)
        {
            showlist.Add(a[i]);
        }

        String JsonBuilder = Select_News(showlist);

        return JsonBuilder;
    }

}