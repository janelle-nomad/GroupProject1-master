using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Inventory_Stock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            FillGridView();

        }

    }
    private void FillGridView()
    {

        BooksBLL ebll = new BooksBLL();//Instance
        GridView1.DataSource = ebll.Select_Book();
        GridView1.DataBind();
        ebll = null;

    }
 /*     protected void Button1_Click(object sender, EventArgs e)
       {
       BooksBLL ebll = new BooksBLL();
       ebll.BooksTitle = ((TextBox)GridView1.FooterRow.FindControl("TextBox1")).Text;
      ebll.BooksIsbn = ((TextBox)GridView1.FooterRow.FindControl("TextBox2")).Text;
     ebll.BooksAuthor = ((TextBox)GridView1.FooterRow.FindControl("TextBox3")).Text;
    ebll.Insert_Book(ebll);
     insertedLabel.Text = "Book inserted successfully!";
        ebll = null;
       FillGridView();
}
    */
protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


}