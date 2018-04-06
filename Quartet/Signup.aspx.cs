using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Signup : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyOwnConnectionString"].ConnectionString);
            conn.Open();
            string checkUser = "SELECT COUNT(*) FROM Users WHERE userName='" + userName_txt + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp == 1)
            {
                Response.Write("user already exsists");
            }

            conn.Close();
        }
        //signUpBtn.Click += new EventHandler(this.SignUpBtn_Click);
    }

    protected void SignUpBtn_Click(object sender, EventArgs e)
    {
        try
        { 
        
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyOwnConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "INSERT INTO Users (UserID, UserName, UserPassword, UserEmail, UserContactNumber) VALUES (@UID, @Uname, @password, @email, @contactNum)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            SqlCommand cmd = new SqlCommand("SELECT COUNT(UserID) FROM Users", conn);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            i++;
            com.Parameters.AddWithValue("@UID", i);
            com.Parameters.AddWithValue("@Uname", userName_txt.Text);
            com.Parameters.AddWithValue("@email", email_txt.Text);
            com.Parameters.AddWithValue("@password", password_txt.Text);
            com.Parameters.AddWithValue("@contactNum", contactNumber_txt.Text);

            com.ExecuteNonQuery();
            Response.Redirect("SignupConfirmation.aspx");

            conn.Close();
        }catch (Exception ex){
            Response.Write("Error: " + ex.Message.ToString());
        }

    }


}

  
