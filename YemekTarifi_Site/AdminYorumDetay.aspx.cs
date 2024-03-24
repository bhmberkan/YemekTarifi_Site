using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AdminYorumDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    string id = ""; 
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yorumid"];

        if(Page.IsPostBack==false)
        {
            SqlCommand komut = new SqlCommand("SELECT YorumAdSoyad,YorumMail,Yorumicerik,YemekAd FROM Tbl_Yorumlar INNER JOIN Tbl_Yemekler ON Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid WHERE Yorumid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtAD.Text = dr[0].ToString();
                TxtMail.Text = dr[1].ToString();
                Txtİçerik.Text = dr[2].ToString();
                TxtYemek.Text = dr[3].ToString(); // inner joinle yapcaz 

            }
            bgl.baglanti().Close();
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlCommand gnc = new SqlCommand("UPDATE Tbl_Yorumlar SET Yorumicerik=@p1, YorumOnay=@p2 Where Yorumid=@p3 ", bgl.baglanti());
        gnc.Parameters.AddWithValue("@p1",Txtİçerik.Text);
        gnc.Parameters.AddWithValue("@p2", true);
        gnc.Parameters.AddWithValue("@p3", id);
        gnc.ExecuteNonQuery();
        

        Response.Redirect("AdminYorumlar.aspx");

        bgl.baglanti().Close();
    }
}