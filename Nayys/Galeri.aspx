<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Galeri.aspx.cs" Inherits="Nayys.Galeri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="Style/Galeri/GaleryStyle.css" rel="stylesheet" type="text/css" />
    <div style="display: block; margin-left: auto; margin-right: auto; width: 1200px;">
        <div class="left marginFromTop">
            <div class="subline" id="divGaleri">
                <asp:Repeater runat="server" ID="rptGalery">
                    <HeaderTemplate>
                        <asp:Label runat="server" CssClass="header" ID="lblHeader">Hayvanlar Aleminin En güzel Yaratıkları</asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table>
                            <tr class="subline">
                                <td>
                                    <asp:Label ID="lblDescription" runat="server" CssClass="galeryDescription" Text='<% #DataBinder.Eval(Container.DataItem, "lblGaleryDescription") %>'></asp:Label>
                                    <asp:Image ImageAlign="AbsMiddle" ID="imgGalery" runat="server" CssClass="galeryImage"
                                        ImageUrl='<% #DataBinder.Eval(Container.DataItem, "imgGalery") %>' />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SeparatorTemplate>
                        <tr>
                            <td colspan="2">
                                <hr class="subline">
                            </td>
                        </tr>
                    </SeparatorTemplate>
                </asp:Repeater>
                <asp:HyperLink ID="hlGalery" runat="server" CssClass="galerySource" Text="Source"></asp:HyperLink>
            </div>
            <div class="marginFromTop suggestion">
                <asp:Repeater runat="server" ID="rptSuggestions">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="divSuggestion">
                            <asp:Image ID="imgSuggestion" runat="server" CssClass="imgSuggestion" ImageUrl='<% #DataBinder.Eval(Container.DataItem, "imgSuggestion") %>' />
                            <asp:Label ID="lblSuggestion" CssClass="lblSuggestion" runat="server" Text='<% #DataBinder.Eval(Container.DataItem, "TextSuggestion") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="divRight marginFromTop" style="margin-left: 40px;">
            <div id="reklam" style="margin-bottom: 20px; margin-top: 15px;">
                <asp:Image runat="server" CssClass="reklam" ID="imgReklam" />
            </div>
            <div>
                <asp:Repeater runat="server" ID="rightRepeater">
                    <HeaderTemplate>
                        <asp:Label ID="Label1" CssClass="small" runat="server">Enterestink</asp:Label>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table class="rightRepeater">
                            <tr>
                                <td valign="middle" align="center">
                                    <asp:Image ID="imgRight" Style="max-width: 250px; max-height: 250px;" runat="server"
                                        ImageUrl='<% #DataBinder.Eval(Container.DataItem, "ImageRight") %>' />
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
        </div>
    </div>
</asp:Content>
