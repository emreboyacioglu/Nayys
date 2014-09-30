<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Galeri.aspx.cs" Inherits="Nayys.Galeri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="Style/GaleryStyle.css" rel="stylesheet" type="text/css" />
    <div style="width:1440px;display:flex;margin-right:auto;margin-left:auto;">
        <div class="left marginFromTop" id="divGaleri">
            <asp:Repeater runat="server" ID="rptGalery">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblDescription" runat="server" CssClass="galeryDescription" Text='<% #DataBinder.Eval(Container.DataItem, "lblGaleryDescription") %>'></asp:Label>
                    <br />
                    <asp:Image ImageAlign="AbsMiddle" ID="imgGalery" runat="server" CssClass="galeryImage"
                        ImageUrl='<% #DataBinder.Eval(Container.DataItem, "imgGalery") %>' />
                    <br />
                </ItemTemplate>
            </asp:Repeater>
            <asp:HyperLink ID="hlGalery" runat="server" CssClass="galerySource" Text="Source"></asp:HyperLink>
        </div>
        <div class="divRight marginFromTop" style="margin-left:40px;">
            <div id="reklam">
            </div>
            <div class="divRight" >
                <asp:Repeater runat="server" ID="rightRepeater">
                    <HeaderTemplate>
                        <asp:Label ID="Label1" CssClass="RepeaterTopHeader" runat="server">Enterestink</asp:Label>
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
