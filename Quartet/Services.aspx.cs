using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Services : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }

    protected void btn_hairCuts_Click(object sender, EventArgs e)
    {
        Session["my_cart"] = "Hair Cuts"; 
    }

    protected void btn_straightRaz_Click(object sender, EventArgs e)
    {
        Session["my_cart"] = "Straight Razor Shave";
    }

    protected void btn_LineUp_Click(object sender, EventArgs e)
    {
        Session["my_cart"] = "Line Up";
    }

    protected void btn_shampoo_Click(object sender, EventArgs e)
    {
        Session["my_cart"] = "Shampoo and Conditioning";
    }
}