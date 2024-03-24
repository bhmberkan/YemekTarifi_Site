using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriAdminDetay : System.Web.UI.Page
{

    sqlsinif bagla = new sqlsinif();
    string id; 
    protected void Page_Load(object sender, EventArgs e)
    {


        id = Request.QueryString["Kategoriid"]; // diğer sayfadan kateogori id yı alıyoruz
        
        if(Page.IsPostBack==false)
        {
            SqlCommand komut = new SqlCommand("SELECT * from Tbl_Kategoriler Where kategoriid=@p1", bagla.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
            }
            bagla.baglanti().Close();

        }
        bagla.baglanti().Close();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut2 = new SqlCommand("UPDATE Tbl_Kategoriler Set KategoriAD=@p1, KategoriAdet=@p2 WHERE Kategoriid=@p3",bagla.baglanti());
        komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut2.Parameters.AddWithValue("@p2", TextBox2.Text);

        komut2.Parameters.AddWithValue("@p3", id);
        komut2.ExecuteNonQuery();
       

        TextBox1.Text = " ";
        TextBox2.Text = " ";


        bagla.baglanti().Close();
       Response.Write("<script> alert('Tarifiniz Alınmışır.') </script>");
    }
}