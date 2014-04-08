<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Anasayfa.aspx.cs" Inherits="Nayys.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentUp" runat="server">
    <script type="text/javascript">
        $(window).load(function () {
            $(document).ready(function () {
                collage();
                $('.Collage').collageCaption();
            });
        });


        // Here we apply the actual CollagePlus plugin
        function collage() {
            $('.Collage').removeWhitespace().collagePlus(
            {
                'fadeSpeed': 2000,
                'targetHeight': 400,

            }
        );
        };

        // This is just for the case that the browser window is resized
        var resizeTimer = null;
        $(window).bind('resize', function () {
            // hide all the images until we resize them
            $('.Collage .Image_Wrapper').css("opacity", 0);
            // set a timer to re-apply the plugin
            if (resizeTimer) clearTimeout(resizeTimer);
            resizeTimer = setTimeout(collage, 200);
        });

    </script>
    <section class="Collage effect-parent">
        <div class="Image_Wrapper" data-caption="arrrmut">
            <img src="fotolar/1.jpg"  />
        </div>
          <div class="Image_Wrapper" data-caption="">
            <img src="fotolar/2.jpg"  />
        </div>
            <div class="Image_Wrapper" >
            <img src="fotolar/3.jpg"  />
        </div>
          <div class="Image_Wrapper" data-caption="ayşe">
            <img src="fotolar/4.jpg"  />
        </div>
          <div class="Image_Wrapper" data-caption="Kiraz">
            <img src="fotolar/5.jpg"  />
        </div>
         <div class="Image_Wrapper"  data-caption="Kiraz">
            <img src="fotolar/images.jpg" />
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentLeft" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentRight" runat="server">
</asp:Content>
