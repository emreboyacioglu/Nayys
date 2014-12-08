<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Test.aspx.cs" Inherits="Nayys.Test" %>
<%@ Register TagPrefix="uc" TagName="GridLayout" Src="~/GridLayout/GridLayout.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
<uc:GridLayout ID="test" runat="server" />
</asp:Content>
