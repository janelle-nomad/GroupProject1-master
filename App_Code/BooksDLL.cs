using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for BooksDLL
/// </summary>
public class BooksDLL
{
 
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;


  public BooksDLL()
    {
 
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    }


    public DataSet Select_Book() {

        da = new SqlDataAdapter("Select * from books", cn);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
   
  


    public void Delete_Book(int eid) {

        cmd = new SqlCommand("Delete from books WHERE ISBN=@isbn",cn);
        cmd.Parameters.AddWithValue("@isbn",eid);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
    }
}




