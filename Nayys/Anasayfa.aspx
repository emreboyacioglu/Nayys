﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Anasayfa.aspx.cs" Inherits="Nayys.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
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
                'fadeSpeed': 0,
                'targetHeight': 200,
                'direction': 'vertical'
               
            }
        );
        };

        
    </script>
    <div class="divCollage">
        <div class="Collage effect-parent" style="width: 1100px;max-height:1100px; max-height: 600px; margin-left: auto;
            margin-right: auto;">
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
    </div>
    <table style="margin-left: auto; margin-right: auto;">
        <tr valign="top">
            <td>
                <div class="divLeft">
                    <div class="layout" id="firstlayout">
                        <asp:Repeater ID="leftRepeater" runat="server">
                            <HeaderTemplate>
                                <div>
                                    <asp:Label CssClass="RepeaterTopHeader" runat="server">Yaneyooo!</asp:Label>
                                </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <table class="leftRepeater">
                                    <tr>
                                        <td>
                                            <asp:Image runat="server" CssClass="image" ImageUrl='<% #DataBinder.Eval(Container.DataItem, "Image") %>' />
                                        </td>
                                        <td valign="top" align="left" style="width: 350px;">
                                            <asp:Label CssClass="leftRepeaterTextHeader" runat="server" Text='<% #DataBinder.Eval(Container.DataItem, "TextHeader") %>'></asp:Label>
                                            <br />
                                            <asp:Label CssClass="leftRepeaterTextDescription" runat="server" Text='<% #DataBinder.Eval(Container.DataItem, "TextDescription") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="layout" id="secondlayout">
                        <asp:Repeater ID="leftRepeaterSecond" runat="server">
                            <HeaderTemplate>
                                <div>
                                    <asp:Label ID="Label3" CssClass="RepeaterTopHeader" runat="server">Little little into middle</asp:Label>
                                </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <table class="leftRepeater">
                                    <tr>
                                        <td>
                                            <asp:Image runat="server" CssClass="image" ImageUrl='<% #DataBinder.Eval(Container.DataItem, "Image") %>' />
                                        </td>
                                        <td valign="top" align="left" style="width: 350px;">
                                            <asp:Label ID="Label4" CssClass="leftRepeaterTextHeader" runat="server" Text='<% #DataBinder.Eval(Container.DataItem, "TextHeader") %>'></asp:Label>
                                            <br />
                                            <asp:Label ID="Label5" CssClass="leftRepeaterTextDescription" runat="server" Text='<% #DataBinder.Eval(Container.DataItem, "TextDescription") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </td>
            <td>
                <div class="divRight">
                    <asp:Repeater runat="server" ID="rightRepeater">
                        <HeaderTemplate>
                            <asp:Label ID="Label1" CssClass="RepeaterTopHeader" runat="server">Kaçırma Hanım!</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table class="rightRepeater">
                                <tr>
                                    <td valign="middle" align="center">
                                        <asp:Image Style="max-width: 250px; max-height: 250px;" runat="server" ImageUrl='<% #DataBinder.Eval(Container.DataItem, "ImageRight") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" align="center" style="width: 350px;">
                                        <asp:Label ID="Label2" CssClass="rightRepeaterTextHeader" runat="server" Text='<% #DataBinder.Eval(Container.DataItem, "TextHeaderRight") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </td>
            <td>
             <div class="divRight">
                    <asp:Repeater runat="server" ID="Repeater1">
                        <HeaderTemplate>
                            <asp:Label ID="Label1" CssClass="RepeaterTopHeader" runat="server">Enterestink</asp:Label>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table class="rightRepeater">
                                <tr>
                                    <td valign="middle" align="center">
                                        <asp:Image ID="imgMiddle" Style="max-width: 250px; max-height: 250px;" runat="server" ImageUrl='<% #DataBinder.Eval(Container.DataItem, "ImageMiddle") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" align="center" style="width: 350px;">
                                        <asp:Label ID="Label2" CssClass="rightRepeaterTextHeader" runat="server" Text='<% #DataBinder.Eval(Container.DataItem, "TextHeaderMiddle") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
