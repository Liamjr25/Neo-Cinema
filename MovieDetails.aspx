<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MovieDetails.aspx.cs" Inherits="NeoCinemas.MovieDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        * {
  margin: 0;
  padding: 0;
  font-family: "Roboto", sans-serif;
  box-sizing: border-box;
}

body {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  //background: #350048;
}

.container1 {
  width: 600px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
}

.container1 > .btn {
  position: relative;
  width: 155px;
  height: 50px;
  margin: 20px;
}

.container1 > .btn > a {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  background: rgba(255, 255, 255, 0.05);
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
  border-radius: 30px;
  color: #fff;
  z-index: 1;
  font-weight: 400;
  letter-spacing: 1px;
  text-decoration: none;
  overflow: hidden;
  transition: 0.75s;
  backdrop-filter: blur(15px);
}

.container1 > .btn:hover > a {
  letter-spacing: 3px;
}

.container1 > .btn > a::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 50%;
  height: 100%;
  background: linear-gradient(to left, rgba(255, 255, 255, 0.15), transparent);
  transform: skewX(45deg) translateX(0);
  transition: 0.75s;
}

.container1 > .btn:hover > a::before {
  transform: skewX(45deg) translateX(200%);
}

.container1 > .btn::before {
  content: "";
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  bottom: -5px;
  width: 30px;
  height: 10px;
  background: #f00;
  border-radius: 10px;
  transition: 0.75s;
}

.container1 > .btn:hover::before {
  bottom: 0;
  height: 50%;
  width: 80%;
  border-radius: 30px;
  transition-delay: 0.25s;
}

.container1 > .btn::after {
  content: "";
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  top: -5px;
  width: 30px;
  height: 10px;
  background: #f00;
  border-radius: 10px;
  transition: 0.75s;
}

.container1 > .btn:hover::after {
  top: 0;
  height: 50%;
  width: 80%;
  border-radius: 30px;
  transition-delay: 0.25s;
}

        .container1 > .btn:nth-child(1)::before,
        .container1 > .btn:nth-child(1)::after {
            background: #2bd2ff;
    box-shadow: 0 0 5px #2bd2ff,
    0 0 15px #2bd2ff,
    0 0 30px #2bd2ff,
    0 0 60px #2bd2ff;
        }
        body {
            color: white;
        }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 153%;">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" 
                    DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("MovieImage") %>' />
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
                        <asp:Label ID="DescriptionLabel" runat="server" 
                            Text='<%# Eval("Description") %>' />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Id], [Title], [Genre], [Description], [Price], [MovieImage], [Length], [Year], [Country], [Language], [ProductionCompany], [Budget], [Cast], [AgeRestriction], [Music], [Director], [MovieCode], [Location] FROM [Movies] WHERE ([MovieCode] = @MovieCode)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="MovieCode" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
               <div class="container1">
        <div class="btn"><a href="#"> <asp:Button ID="btnBookNow" runat="server" Text="Book Now" OnClick="btnBookNow_Click" BackColor="Transparent" ForeColor="White" /></a></div></div>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
           
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
