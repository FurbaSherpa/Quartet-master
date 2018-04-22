using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
       
        if (Session["New"] == null)
        {
            lbl_cart.Text = "Please Login to continue";
        }
        if (Session["New"] != null && Session["my_cart"] == null)
        {
            lbl_cart.Text = "Your cart is empty. Head over to our Services page.";
        }
    }

}