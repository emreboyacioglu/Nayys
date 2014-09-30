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
            Galery();
            RightLayout();
        }

        private void Galery()
        {
            hlGalery.NavigateUrl = "http://www.google.com";

            DataTable dt = new DataTable();
            dt.Columns.Add("lblGaleryDescription");
            dt.Columns.Add("imgGalery");

            DataRow dr = dt.NewRow();
            dr["lblGaleryDescription"] = "Ya bu şirin şey?";
            dr["imgGalery"] = "http://67.207.159.106/wp-content/uploads/2014/06/cute-puppies1.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["lblGaleryDescription"] = "Isır bunun ağzını burnunu";
            dr["imgGalery"] = "http://cdn.cutestpaw.com/wp-content/uploads/2011/11/Two-Litte-Dog-l.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["lblGaleryDescription"] = "Hamburger!";
            dr["imgGalery"] = "http://images2.fanpop.com/image/photos/13300000/Cute-Puppy-puppies-13379771-1280-800.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["lblGaleryDescription"] = "Pisttttttttttttttt";
            dr["imgGalery"] = "http://shechive.files.wordpress.com/2012/02/kitty-cat-26.jpg";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["lblGaleryDescription"] = "Naber adamım?!";
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