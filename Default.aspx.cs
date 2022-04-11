using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source=OWNHEEY2WINLAP\\MSSQLSERVER2; Initial Catalog=usersDB; User Id=sa; Password=dPtnsla4fka!");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        c.Open();
        SqlCommand cmd = new SqlCommand("insert into userInfo values('" + txtWolframID.Text + "','" + txtPassword.Text + "','" + txtName.Text + "','" + txtAddress.Text + "','" + txtMobile.Text + "','" + txtEmail.Text + "')", c);
        cmd.ExecuteNonQuery();
        lblMessage.Text = "Record submitted successfully";
        c.Close();
    }
}