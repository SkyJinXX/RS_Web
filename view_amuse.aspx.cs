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
                return;
            }

            String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();

            String s = "Select Uname From Users Where Uusername = '" + Session["username"] + "'";
            SqlCommand cmd = new SqlCommand(s, conn);
            cmd.CommandText = s;
            user_name.Text = cmd.ExecuteScalar().ToString();

            cmd.CommandText = "select Uimage_url From Users where Uusername = '" + Session["username"] + "'";
            User_HeaderImager.Src = cmd.ExecuteScalar().ToString();

            a.HRef = "view_amuse.aspx?aid=1";


            //cmd.CommandText = "Select top 2 Aname from Amuse order by Agoods";
            //b.InnerText = TopString(cmd.ExecuteScalar().ToString(), 15);
            //cmd.CommandText = "Select top 2 Aid from Amuse order by Agoods";
            //string b1 = cmd.ExecuteScalar().ToString();
            b.HRef = "view_amuse.aspx?aid=10";

            //cmd.CommandText = "Select top 3 Aname from Amuse order by Agoods";
            //c.InnerText = TopString(cmd.ExecuteScalar().ToString(), 15);
            //cmd.CommandText = "Select top 3 Aid from Amuse order by Agoods";
            //string c1 = cmd.ExecuteScalar().ToString();
            c.HRef = "view_amuse.aspx?aid=12";

            //cmd.CommandText = "Select top 4 Aname from Amuse order by Agoods";
            //d.InnerText = TopString(cmd.ExecuteScalar().ToString(), 15);
            //cmd.CommandText = "Select top 4 Aid from Amuse order by Agoods";
            //string d1 = cmd.ExecuteScalar().ToString();
            d.HRef = "view_amuse.aspx?aid=13";

            //cmd.CommandText = "Select top 5 Aname from Amuse order by Agoods";
            //h.InnerText = TopString(cmd.ExecuteScalar().ToString(), 15);
            //cmd.CommandText = "Select top 5 Aid from Amuse order by Agoods";
            //string h1 = cmd.ExecuteScalar().ToString();
            h.HRef = "view_amuse.aspx?aid=14";

            //cmd.CommandText = "Select top 6  Aname from Amuse order by Agoods";
            //f.InnerText = TopString(cmd.ExecuteScalar().ToString(), 15);
            //cmd.CommandText = "Select top 6 Aid from Amuse order by Agoods";
            //string f1 = cmd.ExecuteScalar().ToString();
            f.HRef = "view_amuse.aspx?aid=15";

            conn.Close();
        }
    }

    private string TopString(string text, int length)
    {
        if (text.Length <= length)
            return text;
        else
            return text.Substring(0, length);
    }


    [WebMethod]
    public static String MessageShow(String aid)
    {
        String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("", conn);

        HttpContext.Current.Session["aid"] = aid; 

        cmd.CommandText = "select aid,aname,aaddress,afeature,atime,atype,agoods,aphone,aimage_url from amuse Where aid = '" + aid + "'";
        //if (cmd.ExecuteScalar() == null)
        //{
        //    Response.Write("<script>alert('未知错误!');window.location.href ='index.aspx'</script>");
        //}
        

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

        String aid = HttpContext.Current.Session["aid"].ToString();

        SqlCommand cmd = new SqlCommand("", conn); 
        cmd.CommandText = "select Cid as Id,Ccontent as Content,u1.Uname as Fromname,u1.Uimage_url as Fromurl,u2.Uname as Toname" +
                           ",u2.Uimage_url as Tourl from Comments, Users u1, Users u2 where id = '" + aid +
                           "' and u1.Uid = Cfrom_Uid and u2.Uid = Cto_Uid and type = 'A' order by Cid ";

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        String s = DatasetToJson(ds);
        conn.Close();

        Console.Write(s);

        return s;
    }

    //点赞事件 
    [WebMethod]
    public static void Liking(String aid)
    {
        if (aid != null && aid != "")
        {
            String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("", conn);
            cmd.CommandText = "select uid from u_a where aid = '" + aid + "' and uid = '" + HttpContext.Current.Session["uid"] + "'";
            if (cmd.ExecuteScalar() != null)
            {
                cmd.CommandText = "update u_a set isok = '" + true + "' where  aid = '" + aid + "' and uid = '"
                    + HttpContext.Current.Session["uid"] + "' ";
                cmd.ExecuteScalar();
            }
            else
            {
                TimeSpan ts = new TimeSpan(0, 7, 55);
                cmd.CommandText = "insert into u_a values('" + HttpContext.Current.Session["uid"] + "','" + aid + "','"
                    + ts + "','" + false + "','" + true + "','" + false + "')";
                cmd.ExecuteScalar();
            }
            cmd.CommandText = "select agoods from amuse where aid = '" + aid + "'";
            String number = Convert.ToString(Convert.ToInt32(cmd.ExecuteScalar().ToString()) + 1);

            cmd.CommandText = "update amuse set agoods = '" + number + "' where aid = '" + aid + "'";
            cmd.ExecuteNonQuery();

            //id_like.Text = "已点赞 ( " + cmd.ExecuteScalar().ToString() + " ) ";
            //id_like.Enabled = false;
            conn.Close();
        }
        else
        {
            Console.Write("传入的Aid为空错误");
        }
    }

    //收藏事件
    [WebMethod]
    public static void Collecting(string aid)
    {
        if (aid != null && aid != "")
        {
            String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("", conn);
            cmd.CommandText = "select uid from u_a where aid = '" + aid + "' and uid = '" + HttpContext.Current.Session["uid"] + "'";
            if (cmd.ExecuteScalar() != null)
            {
                cmd.CommandText = "update u_a set iscollect = '" + true + "' where  aid = '" + aid + "' and uid = '"
                    + HttpContext.Current.Session["uid"] + "' ";
                cmd.ExecuteScalar();
            }
            else
            {
                TimeSpan ts = new TimeSpan(0, 9, 30);
                cmd.CommandText = "insert into u_a values('" + HttpContext.Current.Session["uid"] + "','" + aid + "','"
                    + ts + "','" + true + "','" + false + "','" + false + "')";
                cmd.ExecuteScalar();
            }

            //id_collection.Text = "已收藏^_^ ";
            //id_collection.Enabled = false;

            conn.Close();
        }
    }

    //回复功能
    [WebMethod]
    public static void Replying(String id,String Con)
    {
        String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();

        SqlCommand cmd = new SqlCommand("", conn);
        cmd.CommandText = "select Cfrom_uid from Comments where Cid = '" + id + "'";
        String Toid = cmd.ExecuteScalar().ToString();
        String Fromid = HttpContext.Current.Session["uid"].ToString();
        String Comment_id = HttpContext.Current.Session["aid"].ToString();
        cmd.CommandText = "select Count(*) from Comments";
        String Cid = (Convert.ToInt32(cmd.ExecuteScalar().ToString()) + 1).ToString();

        bool s = true;
        while(s)
        {
            cmd.CommandText = "select Cid from Comments where Cid = '" + Cid + "'";
            if(cmd.ExecuteScalar()!=null)
            {
                Cid = (Convert.ToInt32(Cid) + 1).ToString();
            }
            else
            {
                break;
            }
        }
        

        String Content = Con.ToString();

        Console.Write(Content);
        cmd.CommandText = "insert into Comments values('" + Cid + "','" + Comment_id + "','" + Content + "','" + Fromid + "','" + Toid + "','A')";
        cmd.ExecuteScalar();

        conn.Close();
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