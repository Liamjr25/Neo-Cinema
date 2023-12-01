<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="NeoCinemas.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <style>
            body {
                margin: 0;
                padding: 0;
                margin-top: 100px;
                color: green;
                font-size: 50px;
                font-weight:600;
                background: url("Images/neoncinemaback.png");
                background-repeat: no-repeat;
                background-size: cover;
                object-fit: cover;
                width: 100%;
            }
            p {
                margin-right: 190px;
            }
            .auto-style3 {
                height: 23px;
                text-align: center;
            }
            .auto-style4 {
                text-decoration: underline;
            }
            .auto-style5 {
                text-align: center;
            }
        </style>
    </head>
    <body>
    <table style="width:100%; height: 851px;">
        <tr>
            <td class="auto-style3" <%--style="background-position: center; background-image: url('Images/neoncinemaback.png'); background-repeat: no-repeat;">--%>
                Hello
                <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
                <span class="auto-style4"><strong><em><p class="auto-style5" style="text-shadow: 2px 2px 8px #aaff00;">Welcome To Neo Cinema&#39;s Admin page. :)</p></em></strong></span></td>
        </tr>
        </table>
        </body>
</asp:Content>
