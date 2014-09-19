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
            LeftLayout();
            RightLayout();
            LeftSecondLayout(); 
            MiddleLayout();
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

        private void LeftSecondLayout()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("TextHeader");
            dt.Columns.Add("TextDescription");
            dt.Columns.Add("Image");


            DataRow dr = dt.NewRow();
            dr["TextHeader"] = "Çift kale maça hazır mısın?!";
            dr["TextDescription"] = "Atlamadan edemedik, aburcubur tarifleri için eşsiz bir başlangıç";
            dr["Image"] = "http://www.kiss925.com/files/Superbowl-snack-2.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextHeader"] = "Şerefine Tayyip";
            dr["TextDescription"] = "Çarşı grubunun Gezi eylemlerimde yarattığı eşsiz tezahuratları duyunca gülmekten kırılacaksınız..";
            dr["Image"] = "http://media2.ntvmsnbc.com/j/NTVMSNBC/Components/ArtAndPhoto-Fronts/SectionsThumbnails-TSM-Colorbox/_Cover/130516_alkol.hlarge.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextHeader"] = "Şampiyon Galatasaray!";
            dr["TextDescription"] = "Herkesin bir aşkı vardır, aşkı galatasaray olanlar buraya!";
            dr["Image"] = "http://img.webme.com/pic/k/kapakresmi/gs41.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextHeader"] = "Aşıklar Şehri Budapeşte ve Prag!";
            dr["TextDescription"] = "Romantik bir tatil için sevgilinize süpriz yapıp onunla beraber bu eşsiz yerleri mutlaka görün.";
            dr["Image"] = "http://vanhaberleri.com.tr/wp-content/uploads/2014/06/Prag-Nerede-Nerenin-Ba%C5%9Fkenti-Hangi-%C3%BClkede-Hangi-K%C4%B1tada.-642x320.jpg";
            dt.Rows.Add(dr);

            leftRepeaterSecond.DataSource = dt;
            leftRepeaterSecond.DataBind();
        }
        
            
        private void MiddleLayout()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("TextHeaderMiddle");
            dt.Columns.Add("ImageMiddle");

            DataRow dr = dt.NewRow();
            dr["TextHeaderMiddle"] = "20 ilginç bilgi";
            dr["ImageMiddle"] = "http://www.newconceptmandarin.com/storage/article/image/201406/20140623115921_37869.jpeg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextHeaderMiddle"] = "Hayatınızı kolaylaştıracak 10 bilgi";
            dr["ImageMiddle"] = "http://rayhigdon.com/wp-content/uploads/2014/03/yes-man1.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextHeaderMiddle"] = "Yaratıcı ressamlardan resimler";
            dr["ImageMiddle"] = "http://www.fludit.com/images/stories/Inspiration/Creative-Artwork-by-Ben-Heine-Pencil-vs-Camera/Creative-Artwork-by-Ben-Heine-Pencil-vs-Camera-9.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextHeaderMiddle"] = "İstanbuldaki mükemmel restorantlar";
            dr["ImageMiddle"] = "http://img.gecce.com/2013/01/07/beyti-develi-104553G8.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextHeaderMiddle"] = "Bebekler!";
            dr["ImageMiddle"] = "http://www.bebekgazetesi.com/uploads/bebek_banyo.jpg";
            dt.Rows.Add(dr);
        
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}