<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Anasayfa.aspx.cs" Inherits="Nayys.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentUp" runat="server">
    <div id="imgGallery">
        <div id="container">
            <div id="mainGrid">
                <img id="imgMain" src="fotolar/5.jpg" width="450" height="505" />
            </div>
            <div id="secondGrid">
                <img id="imgSecond" src="fotolar/indir.jpg" width="300" height="505" />
            </div>
            <div id="thirdGrid">
                <div id="upgrid">
                    <img src="fotolar/3.jpg" width="220" height="250" />
                </div>
                <div id="downgrid">
                    <img src="fotolar/4.jpg" width="220" height="250" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentLeft" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentRight" runat="server">
</asp:Content>
