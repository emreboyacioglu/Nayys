<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Kategori.aspx.cs" Inherits="Nayys.Kategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="../Style/GridLayout/style.css" rel="stylesheet" type="text/css" />
    <div id="columns">
        <figure>
  <img src="http://images.beyazgazete.com/fotogaleri/2013/5/15933_hayvanlar-aleminin-komikleri_574185.jpg">
	<figcaption>Cinderella wearing European fashion of the mid-1860’s</figcaption>
	</figure>
        <figure>
	<img src="http://g.mynet.com/i/137/138584-en-hizli-hayvanlar--8.jpg">
	<figcaption>Rapunzel, clothed in 1820’s period fashion</figcaption>
	</figure>
        <figure>
	<img src="http://g.mynet.com/i/98/118741-komik-hayvanlar---10.jpg">
	<figcaption>Belle, based on 1770’s French court fashion</figcaption>
	</figure>
        <figure>
	<img src="http://www.risaleajans.com/Images/foto-album/yavru-tatli-hayvanlar_d3a1.jpg">
	<figcaption>Mulan, based on the Ming Dynasty period</figcaption>
	</figure>
        <figure>
	 <img src="http://wallimgs.com/wp-content/uploads/2014/04/Funny-Pictures-of-People.jpg">
	<figcaption>Sleeping Beauty, based on European fashions in 1485</figcaption>
	</figure>
        <figure>
	 <img src="http://resimdiyari.com/upload/2012/08/17/20120817105843-264db1b3.jpg">
	<figcaption>Pocahontas based on 17th century Powhatan costume</figcaption>
	</figure>
        <figure>
	<img src="http://slappedham.com/wp-content/uploads/2014/06/funny-animals-making-funny-faces-002.jpg">
	<figcaption>Snow White, based on 16th century German fashion</figcaption>
	</figure>
        <figure>
	<img src="http://thumbpress.com/wp-content/uploads/2013/04/Funny-Animal-Pictures-45.jpg">
	<figcaption>Ariel wearing an evening gown of the 1890’s</figcaption>
	</figure>
    </div>

       <table style="margin-left: auto; margin-right: auto;">
        <tr valign="top">
            <td>
                <div class="divLeft">
                    <div class="layout" id="secondlayout">
                        <asp:Repeater ID="leftRepeater" runat="server">
                            <HeaderTemplate>
                                <div>
                                    <asp:Label ID="Label3" CssClass="RepeaterTopHeader" runat="server">Little little into middle</asp:Label>
                                </div>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <table class="leftRepeater">
                                    <tr>
                                        <td>
                                            <asp:Image ID="Image2" runat="server" CssClass="image" ImageUrl='<% #DataBinder.Eval(Container.DataItem, "Image") %>' />
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
                                        <asp:Image ID="Image3" Style="max-width: 250px; max-height: 250px;" runat="server" ImageUrl='<% #DataBinder.Eval(Container.DataItem, "ImageRight") %>' />
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
