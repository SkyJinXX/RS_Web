using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class interests : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_setting_Click(object sender, EventArgs e)
    {

    }

    protected void Button_logout_Click(object sender, EventArgs e)
    {

    }

    protected void Chart1_Load(object sender, EventArgs e)
    {
        List<string> xData = new List<string>() { "科技", "游戏", "体育", "汽车" ,"搞笑"};
        List<int> yData = new List<int>() { 10, 10, 30, 40,10 };
        Chart1.Series[0]["PieLabelStyle"] = "Outside";//将文字移到外侧
        Chart1.Series[0]["PieLineColor"] = "Black";//绘制黑色的连线。
        Chart1.Series[0].Points.DataBindXY(xData, yData);
    }

    protected void search_Click(object sender, EventArgs e)
    {

    }
}