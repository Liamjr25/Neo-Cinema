<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AllMovies.aspx.cs" Inherits="NeoCinemas.AllMovies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        body {
            color: white;
        }
        .auto-style5 {
            width: 28247px;
        }
        .auto-style6 {
            height: 21px;
            width: 28247px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 2151%;">
        <tr>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:DataList ID="DataList1" runat="server" BackColor="#090A2D" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="2" RepeatDirection="Horizontal" Width="1900px">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("MovieImage") %>' Height="300px" Width="200px" />
                        <br />
                        Id:
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        <br />
                        Title:
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                        <br />
                        Genre:
                        <asp:Label ID="GenreLabel" runat="server" Text='<%# Eval("Genre") %>' />
                        <br />
                        Description:
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' Width="400px" />
                        <br />
                        Price:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        Length:
                        <asp:Label ID="LengthLabel" runat="server" Text='<%# Eval("Length") %>' />
                        <br />
                        Year:
                        <asp:Label ID="YearLabel" runat="server" Text='<%# Eval("Year") %>' />
                        <br />
                        Country:
                        <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                        <br />
                        Language:
                        <asp:Label ID="LanguageLabel" runat="server" Text='<%# Eval("Language") %>' />
                        <br />
                        ProductionCompany:
                        <asp:Label ID="ProductionCompanyLabel" runat="server" Text='<%# Eval("ProductionCompany") %>' />
                        <br />
                        Budget:
                        <asp:Label ID="BudgetLabel" runat="server" Text='<%# Eval("Budget") %>' />
                        <br />
                        Cast:
                        <asp:Label ID="CastLabel" runat="server" Text='<%# Eval("Cast") %>' />
                        <br />
                        AgeRestriction:
                        <asp:Label ID="AgeRestrictionLabel" runat="server" Text='<%# Eval("AgeRestriction") %>' />
                        <br />
                        Music:
                        <asp:Label ID="MusicLabel" runat="server" Text='<%# Eval("Music") %>' />
                        <br />
                        Director:
                        <asp:Label ID="DirectorLabel" runat="server" Text='<%# Eval("Director") %>' />
                        <br />
                        MovieCode:
                        <asp:Label ID="MovieCodeLabel" runat="server" Text='<%# Eval("MovieCode") %>' />
                        <br />
                        Location:
                        <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Title], [Genre], [Description], [Price], [MovieImage], [Length], [Year], [Country], [Language], [ProductionCompany], [Budget], [Cast], [AgeRestriction], [Music], [Director], [MovieCode], [Location] FROM [Movies]"></asp:SqlDataSource>
            </td>
        </tr>
        </table>
</asp:Content>
