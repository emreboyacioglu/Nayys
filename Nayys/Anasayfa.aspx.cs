using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Nayys
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Text");
            dt.Columns.Add("Image");


            DataRow dr = dt.NewRow();
            dr["Text"] = "Kedilerin ruh sağlığı hakkında bilmeniz gerekenler!";
            dr["Image"] = "http://www.putur.com/wp-content/uploads/2013/10/yavru-kedi-resimleri-38.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["Text"] = "Çıtır Çıtır pizzaların ne zaman keşfeldiğini bilmek istemez misiniz?";
            dr["Image"] = "http://hd.wallpaperswide.com/thumbs/delicious_pizza-t2.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["Text"] = "Bir çok ülke hakkında bilmeniz gerekler!";
            dr["Image"] = "http://media.cdn.t24.com.tr/media/stories/2013/08/page_ispanya-ve-ingiltere-arasinda-50-euro-krizi_863686396.jpg";
            dt.Rows.Add(dr);

            repeater.DataSource = dt;
            repeater.DataBind();

        }
    }
}