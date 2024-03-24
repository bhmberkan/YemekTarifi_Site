using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AdminÖneriler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
       
            // durumu true olanları listele 
            SqlCommand komut = new SqlCommand("SELECT * From Tbl_Tarifler WHERE TarifDurum=1", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            // durumu false olanları listele
            SqlCommand komut2 = new SqlCommand("SELECT * From Tbl_Tarifler WHERE TarifDurum=0", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

        


        Panel2.Visible = false;
        Panel4.Visible = false;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;

        Panel2.Visible = true;

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
        Panel2.Visible = true; 
    }
}