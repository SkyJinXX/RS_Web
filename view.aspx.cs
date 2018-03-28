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
            String connstr = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();

            if (Session["username"] == null)
            {
                Response.Write("<script>alert('请先登录!');window.location.href ='login.aspx'</script>");
            }

            Session["Nid"] = "1";

            String nid = Session["Nid"].ToString();

            String s = "Select Uname From Users Where Uusername = '" + Session["username"] + "'";
            SqlCommand cmd = new SqlCommand(s, conn);
            cmd.CommandText = s;
            user_name.Text = cmd.ExecuteScalar().ToString();

            //标题
            cmd.CommandText = "Select Ntitle,Ncontent,Ntime,Ngoods,Nbads,Ntype From News Where Nid = '" + nid + "'";
            if (cmd.ExecuteScalar() == null)
            {
                cmd.CommandText = "select top(4) from News order by Ngoods desc, Nid asc";
            }

            ArrayList res = new ArrayList();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            String ntitle = ds.Tables[0].Rows[0][0].ToString();
            String ncontent = ds.Tables[0].Rows[0][1].ToString();
            String ntime = ds.Tables[0].Rows[0][2].ToString();
            String ngoods = ds.Tables[0].Rows[0][3].ToString();
            String nbads = ds.Tables[0].Rows[0][4].ToString();
            String ntype = ds.Tables[0].Rows[0][5].ToString();

            Response.Write("<script>alert('" + ntime +"')</script>");
            Response.Write("<script>alert('" + ntime.Length + "')</script>");
            //Response.Write("<script>alert('" + ntitle +"')</script>");
            //Response.Write("<script>alert('" + ntype +"')</script>");
            //Response.Write("<script>alert('" + ngoods + nbads + "')</script>");

            cmd.CommandText = "select Cid,Ccontent,Cfrom_Uid,Cto_Uid from Comments where Nid = '" + nid + "'";
            SqlDataAdapter da1 = new SqlDataAdapter(cmd);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);

            Response.Write("<script>alert('" + ds.Tables[0].Rows[0][0].ToString() + "')</script>");
            Response.Write("<script>alert('" + ds1.Tables[0].Rows[1][1].ToString() + "')</script>");

            conn.Close();
        }
    }

    protected void search_Click(object sender, EventArgs e)
    {

    }
}