using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;    

public partial class Kategoriler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "", islem = ""; 
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack==false)
        {
            id = Request.QueryString["Kategoriid"];
            islem = Request.QueryString["islem"];
        }


        SqlCommand komut = new SqlCommand("SELECT * from Tbl_Kategoriler",bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        Panel2.Visible = false;
        Panel5.Visible = false;    


        // silme islemi
        if(islem=="sil")
        {
            SqlCommand sil = new SqlCommand("DELETE  FROM Tbl_Kategoriler WHERE kategoriid=@p1",bgl.baglanti());
            sil.Parameters.AddWithValue("@p1", id);
            sil.ExecuteNonQuery();
            bgl.baglanti().Close();

            Response.Write("<script> alert('Silme işleminiz gerçekleşti') </script>");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
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

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand komut2 = new SqlCommand("INSERT INTO Tbl_Kategoriler (KategoriAD) VALUES (@p1)", bgl.baglanti()) ;
        komut2.Parameters.AddWithValue("@p1",TextBox1.Text);
        komut2.ExecuteNonQuery();

        bgl.baglanti().Close();

        Response.Write("<script> alert('Yeni Katoegori eklendi.') </script>");

        TextBox1.Text = " "; 
    }
}