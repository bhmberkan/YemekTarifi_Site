using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class GununYemegiaspx : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Select * from Tbl_GununYemegi", bgl.baglanti()); ;
        SqlDataReader oku = komut.ExecuteReader();
        DataList3.DataSource = oku;
        DataList3.DataBind();
    }
}