using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class FeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btn_Feedback_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyOwnConnectionString"].ConnectionString);
        conn.Open();
        string isFeedBack = "INSERT INTO FeedBack (FeedBackID, FeedBackName, FeedBackComment, FeedBackRating) VALUES (@Val1, @Val2, @Val3, @Val4)";
        SqlCommand cmd = new SqlCommand("SELECT COUNT(UserID) FROM Users", conn);
        
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;
        cmd.Parameters.AddWithValue("@Val1", i);
        cmd.Parameters.AddWithValue("@Val2", txt_feedback_name.Text);
        cmd.Parameters.AddWithValue("@Val3", txt_feedback_comment.Text);
        cmd.Parameters.AddWithValue("@Val4", rbl_rating.SelectedValue);

        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("FeedBackConfirmation.aspx");
    }
}