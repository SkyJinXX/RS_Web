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
using System.Web.Script.Serialization;

public partial class index : System.Web.UI.Page
{
    //全局变量 用于迭代资讯主键
    public const int maxSize = 6;
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


            cmd.CommandText = "select Uimage_url From Users where Uusername = '" + Session["username"] + "'";
            User_HeaderImager.Src = cmd.ExecuteScalar().ToString();
            
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

    //左边分类框显示的类别资讯
    [WebMethod]
    public static List<int> Type_Nid(string type)
    {
        List<int> res = new List<int>();
        String s = type;
        String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();

        SqlCommand cmd = new SqlCommand("", conn);
        cmd.CommandText = "select Nid,Ntitle,Ncontent,Ntime,Ntype,Ngoods,Nbads,Nimage_url from News where Ntype = '" 
            + s + "' order by Ngoods desc";

        if (cmd.ExecuteScalar() == null)
        {
            cmd.CommandText = "select top 4 * from News order by Ngoods desc, Nid asc";
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

    //搜索生成关键字查询的资讯显示序列  搜索按钮事件
    [WebMethod]
    public static List<int> Search_Nid(string keyword)
    {
        List<int> res = new List<int>();
        String s = keyword;
        String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();

        SqlCommand cmd = new SqlCommand("", conn);
        cmd.CommandText = "select Nid,Ntitle,Ncontent,Ntime,Ntype,Ngoods,Nbads,Nimage_url from News where Ntitle like '%" 
            + s + "%' or Nkeyword like '%" + s + "%' order by Ngoods desc";

        if (cmd.ExecuteScalar() == null)
        {
            return Recommand_Nid();
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
    public static List<int> Recommand_Nid()
    {
        List<int> random_res;
        List<int> base_res = new List<int>();
        for (int i = 1; i < 143; i++) {
            base_res.Add(i);
        } 
        random_res = base_res.OrderBy(x => Guid.NewGuid()).ToList();
        return random_res;
    }

    //选择某组资讯返回json格式
    public static String Select_News(List<int> a)
    {
        String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();

        SqlCommand cmd = new SqlCommand("", conn);
        cmd.CommandText = "select Nid,Ntitle,Ncontent,Ntime,Ntype,Ngoods,Nbads,Nimage_url from News where Nid in ('" + a[0];
        for(int i = 0; i < a.Count; i++)
        {
            cmd.CommandText = cmd.CommandText + "','" + a[i]; 
        }
        cmd.CommandText += "')";
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
    public static string GetNewsJson(String page, String SourseType, String keyWord)
    {
        int page_int = int.Parse(page);
        int st = page_int * maxSize;
        int end = (page_int + 1) * maxSize;
        Console.Write("{0}x{1}", st, end);

        List<int> a = null;
        switch (SourseType)
        {
            case "Recommand":
                a = Recommand_Nid();
                break;
            case "Search":
                a = Search_Nid(keyWord);
                break;
            case "Type":
                a = Type_Nid(keyWord);
                break;
        }
        if (a.Count < end)
        {
            end = a.Count;
            //st = 0;
        }

        List<int> showlist = new List<int>();
        for(int i = st; i < end; i++)
        {
            showlist.Add(a[i]);
        }

        String JsonBuilder = Select_News(showlist);

        return JsonBuilder;
    }
}