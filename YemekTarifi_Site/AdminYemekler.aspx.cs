using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminYemekler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    string islem = " ", id =" ";


    protected void Page_Load(object sender, EventArgs e)
    {

        Panel2.Visible = false;
        Panel5.Visible = false;

        if (Page.IsPostBack== false )
        {

            id = Request.QueryString["Yemekid"];
            islem = Request.QueryString["islem"];

            // kategori listesi
            SqlCommand komut2 = new SqlCommand("SELECT * From Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAD";
            DropDownList1.DataValueField = "Kategoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }
        
        //yemek listesi
        SqlCommand komut = new SqlCommand("SELECT * From Tbl_Yemekler",bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        if(islem== "sil")
        {// yemek id nin sytaxını görmüyor nasıl olabilir ki
            try
            {
                SqlCommand sil = new SqlCommand("DELETE FROM Tbl_Yemekler Where Yemekid=@p1", bgl.baglanti());
                sil.Parameters.AddWithValue("@p1", id);
                sil.ExecuteNonQuery();

                Response.Write("<script> alert(' Seçtiğiniz yemek Silinmiştir.') </script>");
                bgl.baglanti().Close();
            }
            catch (Exception hata)
            {
                Response.Redirect(hata.Message); 
                
            }
            
            
        }
       


    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel5.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel5.Visible = false;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        // yemek ekleme
        SqlCommand ekle = new SqlCommand("INSERT into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) VALUES (@p1,@p2,@p3,@p4)",bgl.baglanti());
        ekle.Parameters.AddWithValue("@p1", TextBox1.Text);
        ekle.Parameters.AddWithValue("@p2", TextBox2.Text);
        ekle.Parameters.AddWithValue("@p3", TextBox3.Text);
        ekle.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

        ekle.ExecuteNonQuery();
        bgl.baglanti().Close();

        Response.Write("<script> alert('Yemek Eklenmiştir.') </script>");

        // kategori sayısı arttırma

        SqlCommand arttır = new SqlCommand("UPDATE Tbl_Kategoriler SET KategoriAdet=KategoriAdet+1 Where Kategoriid=@p1",bgl.baglanti());
        arttır.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);

        arttır.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}