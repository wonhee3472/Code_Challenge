using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Search : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source=OWNHEEY2WINLAP\\MSSQLSERVER2; Initial Catalog=usersDB; User Id=sa; Password=dPtnsla4fka!");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        c.Open();
        SqlCommand cmd = new SqlCommand("select * from userInfo where WolframID = '" + txtWolframID.Text + "'", c);
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.Read())
        {
            lblMessage.Text = "";
            lblName.Text = dr["Name"].ToString();
            lblAddress.Text = dr["Address"].ToString();
            lblMobile.Text = dr["Mobile"].ToString();
            lblEmail.Text = dr["Email"].ToString();
            lblGender.Text = dr["Gender"].ToString();
            lblFavoriteCity.Text = dr["City"].ToString();
            
        }
        else
        {
            lblName.Text = "";
            lblAddress.Text = "";
            lblMobile.Text = "";
            lblEmail.Text = "";
            lblGender.Text = "";
            lblFavoriteCity.Text = "";
            lblMessage.Text = "Record Not Found";
        }
    }
}