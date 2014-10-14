using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Nayys
{
    public partial class Galeri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Reklam();
            Galery();
            Suggestions();
            RightLayout();
        }

        private void Suggestions()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("TextSuggestion");
            dt.Columns.Add("imgSuggestion");

            DataRow dr = dt.NewRow();
            dr["TextSuggestion"] = "Küçükken korktuğumuz hayvanların orjinal listesi";
            dr["imgSuggestion"] = "http://www.graphics99.com/wp-content/uploads/2012/06/elephant-bathing-under-waterfall.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextSuggestion"] = "Tipsiz 10 Hayvan";
            dr["imgSuggestion"] = "http://i.telegraph.co.uk/multimedia/archive/02585/MONKEY_2585151b.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["TextSuggestion"] = "En Tatlı Yaratıklar";
            dr["imgSuggestion"] = "http://img.izismile.com/img/img5/20120517/640/these_funny_animals_640_41.jpg";
            dt.Rows.Add(dr);

            rptSuggestions.DataSource = dt;
            rptSuggestions.DataBind();
        }

        private void Reklam()
        {
            imgReklam.ImageUrl = "http://volkanca.net/wp-content/uploads/2014/02/kalp-pizza.jpg";
        }

        private void Galery()
        {
            hlGalery.NavigateUrl = "http://www.google.com";

            DataTable dt = new DataTable();
            dt.Columns.Add("lblGaleryDescription");
            dt.Columns.Add("imgGalery");

            DataRow dr = dt.NewRow();
            dr["lblGaleryDescription"] = "1-) Ya bu şirin şey?";
            dr["imgGalery"] = "http://67.207.159.106/wp-content/uploads/2014/06/cute-puppies1.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["lblGaleryDescription"] = "2-) Isır bunun ağzını burnunu";
            dr["imgGalery"] = "http://cdn.cutestpaw.com/wp-content/uploads/2011/11/Two-Litte-Dog-l.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["lblGaleryDescription"] = "3-) Hamburger!";
            dr["imgGalery"] = "http://images2.fanpop.com/image/photos/13300000/Cute-Puppy-puppies-13379771-1280-800.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["lblGaleryDescription"] = "4-) Pisttttttttttttttt";
            dr["imgGalery"] = "http://humorguru.hu/wp-content/uploads/2013/02/funny-kitty-norwegian-forest-cats_1920x1200_71116.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["lblGaleryDescription"] = "5-) Naber adamım?!";
            dr["imgGalery"] = "http://viralquake.com/wp-content/uploads/2014/03/imagesbackgrounds.in_.jpg";
            dt.Rows.Add(dr);

            rptGalery.DataSource = dt;
            rptGalery.DataBind();
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
    }
}