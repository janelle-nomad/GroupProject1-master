using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Inventory_Stock : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=NEOLUTION\SQLEXPRESS;Initial Catalog=Inventory;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Insert into books VALUES('" + TextBoxBookName.Text + "','" + TextBoxIsbn.Text + "','" + TextBoxAuthor.Text + "','" + TextBoxPub.Text + "','" + TextBoxCategory.Text + "','" + TextBoxQuant.Text + "','" + TextBoxPrice.Text + "','" + TextBoxRetail.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
    }
}