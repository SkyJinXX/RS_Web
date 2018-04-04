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
using System.IO;

public partial class announceview : System.Web.UI.Page
{

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
            /*
            Session["Nid"] = "1";
            */

            String s = "Select Uname From Users Where Uusername = '" + Session["username"] + "'";
            SqlCommand cmd = new SqlCommand(s, conn);
            //cmd.CommandText = s;
           // user_name.Text = cmd.ExecuteScalar().ToString();

            /*
            cmd.CommandText = "Select Uid From Users Where Uusername = '" + Session["username"] + "'";
            Session["Uid"] = cmd.ExecuteScalar().ToString();
            */


            //String  sql1 = "Select top 1 Ntitle from News order by Ngoods";
            cmd.CommandText = "Select top 1 Ntitle from News order by Ngoods";
            a.InnerText = cmd.ExecuteScalar().ToString();
            cmd.CommandText = "Select top 1 Nid from News order by Ngoods";
            string a1 = cmd.ExecuteScalar().ToString();
            a.HRef = "view.aspx? Nid = '" + a1 + "'";


            cmd.CommandText = "Select top 2 Ntitle from News order by Ngoods";
            b.InnerText = cmd.ExecuteScalar().ToString();
            cmd.CommandText = "Select top 2 Nid from News order by Ngoods";
            string b1 = cmd.ExecuteScalar().ToString();
            b.HRef = "view.aspx? Nid = '" + b1 + "'";

            cmd.CommandText = "Select top 3 Ntitle from News order by Ngoods";
            c.InnerText = cmd.ExecuteScalar().ToString();
            cmd.CommandText = "Select top 1 Nid from News order by Ngoods";
            string c1 = cmd.ExecuteScalar().ToString();
            c.HRef = "view.aspx? Nid = '" + c1 + "'";

            cmd.CommandText = "Select top 4 Ntitle from News order by Ngoods";
            d.InnerText = cmd.ExecuteScalar().ToString();
            cmd.CommandText = "Select top 1 Nid from News order by Ngoods";
            string d1 = cmd.ExecuteScalar().ToString();
            d.HRef = "view.aspx? Nid = '" + d1 + "'";

            cmd.CommandText = "Select top 5 Ntitle from News order by Ngoods";
            h.InnerText = cmd.ExecuteScalar().ToString();
            cmd.CommandText = "Select top 1 Nid from News order by Ngoods";
            string h1 = cmd.ExecuteScalar().ToString();
            h.HRef = "view.aspx? Nid = '" + h1 + "'";

            cmd.CommandText = "Select top 6 Ntitle from News order by Ngoods";
            f.InnerText = cmd.ExecuteScalar().ToString();
            cmd.CommandText = "Select top 1 Nid from News order by Ngoods";
            string f1 = cmd.ExecuteScalar().ToString();
            f.HRef = "view.aspx? Nid = '" + f1 + "'";

            cmd.CommandText = "Select top 7 Ntitle from News order by Ngoods";
            g.InnerText = cmd.ExecuteScalar().ToString();
            cmd.CommandText = "Select top 1 Nid from News order by Ngoods";
            string g1 = cmd.ExecuteScalar().ToString();
            g.HRef = "view.aspx? Nid = '" + g1 + "'";


            cmd.CommandText = "select Ntitle from News where Nid='200'";
            if (cmd.ExecuteScalar() != null)
            {
                Label3.Text = cmd.ExecuteScalar().ToString();
            }
            else
            {
                Label3.Text = "";
            }
           

            conn.Close();
        }
    }
   
    


    protected void Button1_Click(object sender, EventArgs e)
    {
     

        string strName = FileUpload1.PostedFile.FileName;//使用fileupload控件获取上传文件的文件名
        if (strName != "")//如果文件名存在
        {
            bool fileOK = false;
            int i = strName.LastIndexOf(".");//获取。的索引顺序号，在这里。代表图片名字与后缀的间隔
            string kzm = strName.Substring(i);//获取文件扩展名的另一种方法 string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
            string newName = Guid.NewGuid().ToString();//生成新的文件名，保证唯一性
            string juedui = Server.MapPath("~\\img\\information\\");//设置文件保存的本地目录绝对路径，对于路径中的字符“＼”在字符串中必须以“＼＼”表示，因为“＼”为特殊字符。或者可以使用上一行的给路径前面加上＠
            string newFileName = juedui + strName;
            if (FileUpload1.HasFile)//验证 FileUpload 控件确实包含文件
            {
                String[] allowedExtensions = { ".jpg" };
                for (int j = 0; j < allowedExtensions.Length; j++)
                {
                    if (kzm == allowedExtensions[j])
                    {
                        fileOK = true;
                    }
                }
            }
            if (fileOK)
            {
                try
                {
                    // 检查文件是否存在
                    if (File.Exists(newFileName))
                    {
                        HttpContext.Current.Response.Write("<script>alert('图片已存在，请重新上传。');</script>");
                    }
                    else
                    {
                        FileUpload1.SaveAs(newFileName);
                        HttpContext.Current.Response.Write("<script>alert('已成功提交。');</script>");

                        String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
                        SqlConnection conn = new SqlConnection(connstr);
                     

                        conn.Open();
                        // String rr = GetWordContent(newFileName);
                        String a = TextBox1.Text;
                        string t = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                        string url = juedui + strName;
                        String Nid = "200";
                        String type = "读者";
                        String good = "0";
                        String bad = "0";
                        String keyword = "读者自编";
                        String sql = "insert into News values ('" + Nid+ "','" +TextBox1.Text+ "', '" + TextBox2.Text + "','" + t + "','"+type+"','"+good+"','"+bad+"','"+keyword+"','" + strName+ "')";
                        SqlCommand cmd1 = new SqlCommand(sql, conn);
                        cmd1.CommandText = sql;
                        cmd1.ExecuteScalar();
                        // string result = (string)cmd1.ExecuteScalar();

                       

                        conn.Close();

                        


                    }
                }
                catch
                {

                }
            }
            else
            {
                Response.Write("<script>alert('不能上传该类型文件')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('请选择文件')</script>");
        }

  

    }
    
}