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
    <form runat="server">
    <asp:Repeater ID="repeater" runat="server">
        <HeaderTemplate>
            <div>
                <asp:Literal runat="server">Ortaya Karışık</asp:Literal>
            </div>
        </HeaderTemplate>
        <ItemTemplate>
            <table class="repeater">
                <tr>
                    <td>
                        <asp:Image Style=" max-width: 150px; max-height: 150px;" runat="server" ImageUrl='<% #DataBinder.Eval(Container.DataItem, "Image") %>' />
                    </td>
                    <td style="float:left; margin-left:10px;width:450px;">
                        <asp:Literal runat="server" Text='<% #DataBinder.Eval(Container.DataItem, "Text") %>'></asp:Literal>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:Repeater>
    <br />
    <br />
    <br />
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentRight" runat="server">
    Alan2
    <br />
    <br />
    <br />
</asp:Content>
