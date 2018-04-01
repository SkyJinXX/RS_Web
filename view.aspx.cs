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
using System.Collections;
using System.Text;
public partial class view : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>alert('请先登录!');window.location.href ='login.aspx'</script>");
            }

            String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();

            Session["Nid"] = 1;

            String s = "Select Uname From Users Where Uusername = '" + Session["username"] + "'";
            SqlCommand cmd = new SqlCommand(s, conn);
            cmd.CommandText = s;
            //user_name.Text = cmd.ExecuteScalar().ToString();

            cmd.CommandText = "select Cid,Ccontent from Comments where Nid = '" + Session["Nid"] + "' order by Cid";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet("Com");
            da.Fill(ds);

            ds.Tables["Com"].Columns.Add("FromName")

            conn.Close();
        }
    }
    

    [WebMethod]
    public static String MessageShow()
    {
        String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("", conn);

        String nid = HttpContext.Current.Session["nid"].ToString();

        cmd.CommandText = "Select Nid,Ntitle,Ncontent,Ntime,Ngoods,Nbads,Ntype,Nimage_url From News Where Nid = '" + nid + "'";
        //if (cmd.ExecuteScalar() == null)
        //{
        //    Response.Write("<script>alert('未知错误!');window.location.href ='index.aspx'</script>");
        //}

        ArrayList res = new ArrayList();

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        String s = DatasetToJson(ds);
        conn.Close();

        Console.Write(s);

        return s;
    }

    [WebMethod]
    public static String CommentShow()
    {
        String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();

        String nid = HttpContext.Current.Session["nid"].ToString();

        SqlCommand cmd = new SqlCommand("", conn); 
        //cmd.CommandText = "select Cid as Id,Ccontent as Content,Uname as Fromname,Uname as Toname from Comments, User where Nid = '" + nid 
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        String s = DatasetToJson(ds);

        conn.Close();

        return s;
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

            conn.Close();
        }
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
                jsonBuilder.Append(dt.Rows[i][j].ToString().Replace("\"", "\\\""));
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

}