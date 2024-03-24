using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AdminTarifÖnerDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Tarifid"];
      
        //if(Page.IsPostBack)
        //{
            SqlCommand komut = new SqlCommand("SELECT * From Tbl_Tarifler WHERE Tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[5].ToString();
                TextBox5.Text = dr[6].ToString();
            }
           
        //}
        //kategori listesi 
        SqlCommand komut2 = new SqlCommand("SELECT * From Tbl_Kategoriler", bgl.baglanti());
        SqlDataReader dr2 = komut2.ExecuteReader();

        DropDownList1.DataTextField = "KategoriAD";
        DropDownList1.DataValueField = "Kategoriid";

        DropDownList1.DataSource = dr2;
        DropDownList1.DataBind();

        bgl.baglanti().Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand gnc = new SqlCommand("UPDATE  Tbl_Tarifler SET TarifDurum=1 WHERE Tarifid=@p1",bgl.baglanti());
        gnc.Parameters.AddWithValue("@p1",id);
        gnc.ExecuteNonQuery();
       

        //Yemeği Ana sayfaya ekleme
        SqlCommand komut3 = new SqlCommand("INSERT INTO Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) VALUES(@p1,@p2,@p3,@p4)",bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1",TextBox1.Text);
        komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut3.ExecuteNonQuery();

        bgl.baglanti().Close();

        Response.Write("<script> alert('Yemek Ana sayfaya Eklenmiştir.') </script>");


    }
}