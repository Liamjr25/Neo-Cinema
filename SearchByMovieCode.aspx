<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchByMovieCode.aspx.cs" Inherits="NeoCinemas.SearchByMovieCode" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
         * {
  margin: 0;
  padding: 0;
  font-family: "Roboto", sans-serif;
  box-sizing: border-box;
  color: white;
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
        body {
            color: white;
        }
         .auto-style5 {
             text-align: left;
         }
    </style>
    <table style="width: 768%;">
        <tr>
            <td><h1 class="auto-style5">Welcome To Search By Movie Code</h1></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
            <asp:Label ID="lblMovieCode" runat="server" Text="Search By Movie Code"></asp:Label>
            <asp:TextBox ID="txtMovieCode" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMovieCode" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
             <div class="container1">
        <div class="btn"><a href="#"><asp:Button ID="btnSearch" runat="server" Text="Search" BackColor="Transparent" ForeColor="White" /></a></div></div>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="MovieImage" HeaderText="MovieImage" SortExpression="MovieImage" />
                    <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" />
                    <asp:BoundField DataField="ProductionCompany" HeaderText="ProductionCompany" SortExpression="ProductionCompany" />
                    <asp:BoundField DataField="Budget" HeaderText="Budget" SortExpression="Budget" />
                    <asp:BoundField DataField="Cast" HeaderText="Cast" SortExpression="Cast" />
                    <asp:BoundField DataField="Music" HeaderText="Music" SortExpression="Music" />
                    <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
                    <asp:BoundField DataField="MovieCode" HeaderText="MovieCode" SortExpression="MovieCode" />
                    <asp:BoundField DataField="AgeRestriction" HeaderText="AgeRestriction" SortExpression="AgeRestriction" />
                    <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                </Columns>
            </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Title], [Genre], [Description], [MovieImage], [Length], [Year], [Price], [Country], [Language], [ProductionCompany], [Budget], [Cast], [Music], [Director], [MovieCode], [AgeRestriction], [Location] FROM [Movies] WHERE ([MovieCode] = @MovieCode)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtMovieCode" Name="MovieCode" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
