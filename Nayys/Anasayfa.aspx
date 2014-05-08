﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
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
                'targetHeight': 200,
                'direction': 'vertical'

            }
        );
        };

        

    </script>
    <div class="Collage effect-parent" style="width: 1100px; max-height: 600px;">
        <div class="Image_Wrapper" data-caption="arrrmut">
            <img src="fotolar/1.jpg" />
        </div>
        <div class="Image_Wrapper" data-caption="">
            <img src="fotolar/indir.jpg" />
        </div>
        <div class="Image_Wrapper">
            <img src="fotolar/kedi.jpg" />
        </div>
        <div class="Image_Wrapper" data-caption="ayşe ahmet">
            <img src="fotolar/4.jpg" />
        </div>
        <div class="Image_Wrapper" data-caption="Kiraz">
            <img src="fotolar/5.jpg" />
        </div>
        <div class="Image_Wrapper" data-caption="Kiraz">
            <img src="fotolar/images.jpg" />
        </div>
        <div class="Image_Wrapper" data-caption="Kiraz">
            <img src="fotolar/baby.jpg" />
        </div>
        <div class="Image_Wrapper" data-caption="Kiraz">
            <img src="fotolar/indir2.jpg" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentLeft" runat="server">
    Alan1
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentRight" runat="server">
    Alan2
    <br />
    <br />
    <br />
</asp:Content>