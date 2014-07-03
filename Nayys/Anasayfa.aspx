<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
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
                'fadeSpeed': 2000,
                'targetHeight': 200,
                'direction': 'vertical'

            }
        );
        };

        

    </script>
    <div class="divCollage">
        <div class="Collage effect-parent" style="width: 1100px; max-height: 600px; margin-left: auto;
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
    <div id="container" style="margin-left:auto;margin-right:auto;width:auto;display:inline-block;">
        <div class="divLeft">
            <asp:Repeater ID="leftRepeater" runat="server">
                <HeaderTemplate>
                    <div>
                        <asp:Label CssClass="leftleftRepeaterTop" runat="server">Ortaya Karışık</asp:Label>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="leftRepeater">
                        <tr>
                            <td>
                                <asp:Image Style="border-radius: 2%; max-width: 150px; max-height: 150px; float: left;"
                                    runat="server" ImageUrl='<% #DataBinder.Eval(Container.DataItem, "Image") %>' />
                            </td>
                            <td valign="middle" align="center" style="width: 350px;">
                                <asp:Label CssClass="leftRepeaterTextHeader" runat="server" Text='<% #DataBinder.Eval(Container.DataItem, "TextHeader") %>'></asp:Label>
                                <br />
                                <asp:Label CssClass="leftRepeaterTextDescription" runat="server" Text='<% #DataBinder.Eval(Container.DataItem, "TextDescription") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="divRight">
            Alan2
        </div>
    </div>
    </form>
</asp:Content>
