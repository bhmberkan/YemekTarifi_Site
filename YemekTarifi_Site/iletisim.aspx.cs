using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class iletisim : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("INSERT into Tbl_Mesajlar (MesajGönderen,MesajMail,MesajBaslik,Mesajicerik) VALUES (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", Txtgönderen.Text);
        komut.Parameters.AddWithValue("@p2", TxtMail.Text);
        komut.Parameters.AddWithValue("@p3", Txtkonu.Text);
        komut.Parameters.AddWithValue("@p4", Txticerik.Text);
        komut.ExecuteNonQuery();

        bgl.baglanti().Close();
        Response.Write("<script> alert('Mesajınız Alınmışır.') </script>");

        Txtgönderen.Text = "";
        Txticerik.Text = "";
        Txtkonu.Text = "";
        TxtMail.Text = "";
    }
}