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
                Response.Write("<script>alert('请先登录!');window.location.href ='login.aspx'</script>");
                return;
            }

            String s = "Select Uname From Users Where Uusername = '" + Session["username"] + "'";
            SqlCommand cmd = new SqlCommand(s, conn);
            cmd.CommandText = s;
            user_name.Text = cmd.ExecuteScalar().ToString();

            cmd.CommandText = "Select Uid From Users Where Uusername = '" + Session["username"] + "'";
            Session["Uid"] = cmd.ExecuteScalar().ToString();


            cmd.CommandText = "select Uimage_url From Users where Uusername = '" + Session["username"] + "'";
            User_HeaderImager.Src = cmd.ExecuteScalar().ToString();


            //cmd.CommandText = "Select top 1 Dtitle from Duanzi order by Dgoods";
            //a.InnerText = TopString(cmd.ExecuteScalar().ToString(), 15);
            //cmd.CommandText = "Select top 1 Did from Duanzi order by Dgoods";
            //string a1 = cmd.ExecuteScalar().ToString();
            a.HRef = "view_duanzi.aspx?did=1";


            //cmd.CommandText = "Select top 2 Dtitle from Duanzi order by Dgoods";
            //b.InnerText = TopString(cmd.ExecuteScalar().ToString(), 15);
            //cmd.CommandText = "Select top 2 Did from Duanzi order by Dgoods";
            //string b1 = cmd.ExecuteScalar().ToString();
            b.HRef = "view_duanzi.aspx?did=2" ;

            //cmd.CommandText = "Select top 3 Dtitle from Duanzi order by Dgoods";
            //c.InnerText = TopString(cmd.ExecuteScalar().ToString(), 15);
            //cmd.CommandText = "Select top 3 Did from Duanzi order by Dgoods";
            //string c1 = cmd.ExecuteScalar().ToString();
            c.HRef = "view_duanzi.aspx?did=3" ;

            //cmd.CommandText = "Select top 4 Dtitle from Duanzi order by Dgoods";
            //d.InnerText = TopString(cmd.ExecuteScalar().ToString(), 15);
            //cmd.CommandText = "Select top 4 Did from Duanzi order by Dgoods";
            //string d1 = cmd.ExecuteScalar().ToString();
            d.HRef = "view_duanzi.aspx?did=4";

            //cmd.CommandText = "Select top 5 Dtitle from Duanzi order by Dgoods";
            //h.InnerText = TopString(cmd.ExecuteScalar().ToString(), 15);
            //cmd.CommandText = "Select top 5 Did from Duanzi order by Dgoods";
            //string h1 = cmd.ExecuteScalar().ToString();
            h.HRef = "view_duanzi.aspx?did=5" ;

            //cmd.CommandText = "Select top 6 Dtitle from Duanzi order by Dgoods";
            //f.InnerText = TopString(cmd.ExecuteScalar().ToString(), 15);
            //cmd.CommandText = "Select top 6 Did from Duanzi order by Dgoods";
            //string f1 = cmd.ExecuteScalar().ToString();
            f.HRef = "view_duanzi.aspx?did=20" ;

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
    public static void Liking(String did)
    {
        if (did != null && did != "")
        {
            String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("", conn);
            cmd.CommandText = "select uid from u_d where did = '" + did + "' and uid = '" + HttpContext.Current.Session["uid"] + "'";
            if (cmd.ExecuteScalar() != null)
            {
                cmd.CommandText = "update u_d set isok = '" + true + "' where  did = '" + did + "' and uid = '"
                    + HttpContext.Current.Session["uid"] + "' ";
                cmd.ExecuteScalar();
            }
            else
            {
                TimeSpan ts = new TimeSpan(0, 7, 55);
                cmd.CommandText = "insert into u_d values('" + HttpContext.Current.Session["uid"] + "','" + did + "','"
                    + ts + "','" + false + "','" + true + "','" + false + "')";
                cmd.ExecuteScalar();
            }
            cmd.CommandText = "select dgoods from duanzi where did = '" + did + "'";
            String number = Convert.ToString(Convert.ToInt32(cmd.ExecuteScalar().ToString()) + 1);

            cmd.CommandText = "update duanzi set dgoods = '" + number + "' where did = '" + did + "'";
            cmd.ExecuteNonQuery();

            //id_like.Text = "已点赞 ( " + cmd.ExecuteScalar().ToString() + " ) ";
            //id_like.Enabled = false;
            conn.Close();
        }
        else
        {
            Console.Write("传入的Did为空错误");
        }
    }

    //收藏事件
    [WebMethod]
    public static void Collecting(string did)
    {
        if (did != null && did != "")
        {
            String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("", conn);
            cmd.CommandText = "select uid from u_d where did = '" + did + "' and uid = '" + HttpContext.Current.Session["uid"] + "'";
            if (cmd.ExecuteScalar() != null)
            {
                cmd.CommandText = "update u_d set iscollect = '" + true + "' where  did = '" + did + "' and uid = '"
                    + HttpContext.Current.Session["uid"] + "' ";
                cmd.ExecuteScalar();
            }
            else
            { 
                TimeSpan ts = new TimeSpan(0, 9, 30);
                cmd.CommandText = "insert into u_d values('" + HttpContext.Current.Session["uid"] + "','" + did + "','"
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
        cmd.CommandText = "select did,dtitle,dcontent,dtime,dtype,dcount,dgoods,dimage_url from duanzi where dtype = '"
            + s + "' order by dgoods desc";

        if (cmd.ExecuteScalar() == null)
        {
            cmd.CommandText = "select top 4 * from duanzi order by dgoods desc, did asc";
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
        cmd.CommandText = "select did,dtitle,dcontent,dtime,dtype,dcount,dgoods,dimage_url from duanzi where dtitle like '%"
            + s + "%'or dkeyword like '%" + s + "%' order by dgoods desc";

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
        for (int i = 1; i < 34; i++)
        {
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
        cmd.CommandText = "select did,dtitle,dcontent,dtime,dtype,dcount,dgoods,dimage_url from duanzi where did in ('" + a[0];
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