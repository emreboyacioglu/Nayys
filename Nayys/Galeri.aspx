<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Galeri.aspx.cs" Inherits="Nayys.Galeri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div class="left" id="galeri">
        <asp:Repeater runat="server">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    <div class="right">
        <div id="reklam">
        </div>
        <div class="divRight">
            <asp:Repeater runat="server" ID="repeaterRight">
                <HeaderTemplate>
                    <asp:Label ID="Label1" CssClass="RepeaterTopHeader" runat="server">Enterestink</asp:Label>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="rightRepeater">
                        <tr>
                            <td valign="middle" align="center">
                                <asp:Image ID="imgMiddle" Style="max-width: 250px; max-height: 250px;" runat="server"
                                    ImageUrl='<% #DataBinder.Eval(Container.DataItem, "ImageMiddle") %>' />
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
    </div>
</asp:Content>
