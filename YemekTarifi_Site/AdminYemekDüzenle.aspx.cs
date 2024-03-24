using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminYemekDüzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"]; // diğer sayfadan kateogori id yı alıyoruz

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("SELECT * from Tbl_Yemekler Where Yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();

        }
        bgl.baglanti().Close();


        if (Page.IsPostBack == false)
        {

            // kategori listesi
            SqlCommand komut2 = new SqlCommand("SELECT * From Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAD";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }




    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        FileUpload1.SaveAs(Server.MapPath("./Resimler/" + FileUpload1.FileName));

        SqlCommand güncelle = new SqlCommand("UPDATE Tbl_Yemekler Set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4, YemekResim=@p5 WHERE  Yemekid=@p6",bgl.baglanti());
        güncelle.Parameters.AddWithValue("@p1", TextBox1.Text);
        güncelle.Parameters.AddWithValue("@p2", TextBox2.Text);
        güncelle.Parameters.AddWithValue("@p3", TextBox3.Text);
        güncelle.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        güncelle.Parameters.AddWithValue("@p5", "./Resimler/" + FileUpload1.FileName);
        güncelle.Parameters.AddWithValue("@p6", id);
        güncelle.ExecuteNonQuery();

        bgl.baglanti().Close();

        Response.Write("<script> alert('Yemek Yorumunuz Alınmışır.') </script>");

        // boş bırakılırsa uyarı vermesi için yazdım
        //if(String.IsNullOrEmpty(TextBox1.Text) && String.IsNullOrEmpty(TextBox2.Text) && String.IsNullOrEmpty(TextBox3.Text))
        //{
        //    TextBox1.Text = " ";
        //    TextBox2.Text = " ";
        //    TextBox3.Text = " "; 
        //}
    }



  


    protected void Button2_Click(object sender, EventArgs e)
    {
        // tüm yemeklerin durumunu false yaptık
        SqlCommand komut2 = new SqlCommand("UPDATE Tbl_Yemekler SET Durum=0", bgl.baglanti());
        komut2.ExecuteNonQuery();
        //bgl.baglanti().Close();
        //Response.Write("<script> alert('hepsi false oldu .') </script>");


        // günün yemeği için ıd ye göre durumu true yapalım
        SqlCommand komut3 = new SqlCommand("UPDATE Tbl_Yemekler SET Durum=1 WHERE Yemekid=@p1",bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1",id);
        komut3.ExecuteNonQuery();

        Response.Write("<script> alert('Günün Yemeği Seçildi') </script>");
        bgl.baglanti().Close();
    }
}