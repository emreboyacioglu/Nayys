using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Nayys
{
    public partial class Kategori : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LeftLayout();
            RightLayout();
        }

        private void RightLayout()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("TextHeaderRight");
            dt.Columns.Add("ImageRight");

            DataRow dr = dt.NewRow();
            dr["TextHeaderRight"] = "Vizesiz gidebileceğiniz 50 ülke";
            dr["ImageRight"] = "http://techmeetups.com/wp-content/uploads/2012/10/Budapest-Weather.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextHeaderRight"] = "Unutulmayan türk filmi replikleri";
            dr["ImageRight"] = "http://img1.img10.com/cicek-abbas-atisma-sahnesi-yesilcam-klasikleri.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextHeaderRight"] = "Gereksiz geyikler listesi";
            dr["ImageRight"] = "http://media.tumblr.com/tumblr_ljlcrxhtsq1qzexgu.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextHeaderRight"] = "Yaz aylarında yenmesi gereken mükemmel lezzetler";
            dr["ImageRight"] = "http://www.diyetcim.net/wp-content/uploads/kiraz.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextHeaderRight"] = "Gülümseten kareler";
            dr["ImageRight"] = "http://funnyanimalz.com/blog/wp-content/uploads/2013/03/funny-animal-captions-Time-for-tickles.jpg";
            dt.Rows.Add(dr);

            rightRepeater.DataSource = dt;
            rightRepeater.DataBind();

        }

        private void LeftLayout()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("TextHeader");
            dt.Columns.Add("TextDescription");
            dt.Columns.Add("Image");


            DataRow dr = dt.NewRow();
            dr["TextHeader"] = "Kedilerin ruh sağlığı hakkında bilmeniz gerekenler!";
            dr["TextDescription"] = "Her 5 evin birinde bulunan ve hayatımıza renk katan bu şirin canlılar kuyruklarıyla size neler anlatmak istediklerini duyunca şaşıracaksınız..";
            dr["Image"] = "http://www.putur.com/wp-content/uploads/2013/10/yavru-kedi-resimleri-38.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextHeader"] = "Çıtır Çıtır pizzaların ne zaman keşfeldiğini bilmek istemez misiniz?";
            dr["TextDescription"] = "Birçok kişinin bayıldığı ve hergün şikayet etmeden yiyebileceği pizzaların ilk yapılışı çok eski tarihlere dayanmaktadır..";
            dr["Image"] = "http://hd.wallpaperswide.com/thumbs/delicious_pizza-t2.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextHeader"] = "Bir çok ülke hakkında bilmeniz gerekler!";
            dr["TextDescription"] = "Her yıl milyonlarca turist alan ve güzellikleriyle büyüleyen şehirler hakkında bilmek isteyecekleriniz..";
            dr["Image"] = "http://media.cdn.t24.com.tr/media/stories/2013/08/page_ispanya-ve-ingiltere-arasinda-50-euro-krizi_863686396.jpg";
            dt.Rows.Add(dr);

            leftRepeater.DataSource = dt;
            leftRepeater.DataBind();
        }

    }
}