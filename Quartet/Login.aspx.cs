using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyOwnConnectionString"].ConnectionString);
        conn.Open();
        string checkEmail = "SELECT COUNT(*) FROM Users WHERE UserEmail='" + loginEmail_txt.Text + "'";
        SqlCommand com = new SqlCommand(checkEmail, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "SELECT UserPassword FROM Users where userEmail='" + loginEmail_txt.Text + "'";
            SqlCommand Passcom = new SqlCommand(checkPasswordQuery, conn);
            string password = Passcom.ExecuteScalar().ToString().Replace(" ", "");
            if (password == passwordLogin_txt.Text)
            {

                Response.Redirect("LoginConfirmation.aspx");
            }
            else
            {
                Response.Write("Incorrect Login Information");
            }
        }
        else
        {
            Response.Write("Incorrect Login Information");
        }

    }
}