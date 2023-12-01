<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DeleteByMovieCode.aspx.cs" Inherits="NeoCinemas.DeleteByMovieCode" %>
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

.container {
  width: 600px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
}

.container > .btn {
  position: relative;
  width: 155px;
  height: 50px;
  margin: 20px;
}

.container > .btn > a {
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

.container > .btn:hover > a {
  letter-spacing: 3px;
}

.container > .btn > a::before {
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

.container > .btn:hover > a::before {
  transform: skewX(45deg) translateX(200%);
}

.container > .btn::before {
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

.container > .btn:hover::before {
  bottom: 0;
  height: 50%;
  width: 80%;
  border-radius: 30px;
  transition-delay: 0.25s;
}

.container > .btn::after {
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

.container > .btn:hover::after {
  top: 0;
  height: 50%;
  width: 80%;
  border-radius: 30px;
  transition-delay: 0.25s;
}

        .container > .btn:nth-child(1)::before,
        .container > .btn:nth-child(1)::after {
            background: #2bd2ff;
            box-shadow: 0 0 5px #2bd2ff, 0 0 15px #2bd2ff, 0 0 30px #2bd2ff, 0 0 60px #2bd2ff;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="auto-style3">Welcome To Delete movies By Movie Code</h1><br />
    <asp:Label ID="lblMovieCode" runat="server" Text="DeleteByMovieCode"></asp:Label>
    <asp:TextBox ID="txtMovieCode" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMovieCode" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
    <div class="container">
        <div class="btn"><a href="#"><asp:Button ID="btnDelete" runat="server" OnClick="Button1_Click" Text="Delete" BackColor="Transparent" /></a></div></div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="MovieImage" HeaderText="MovieImage" SortExpression="MovieImage" />
            <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" />
            <asp:BoundField DataField="ProductionCompany" HeaderText="ProductionCompany" SortExpression="ProductionCompany" />
            <asp:BoundField DataField="Budget" HeaderText="Budget" SortExpression="Budget" />
            <asp:BoundField DataField="Cast" HeaderText="Cast" SortExpression="Cast" />
            <asp:BoundField DataField="AgeRestriction" HeaderText="AgeRestriction" SortExpression="AgeRestriction" />
            <asp:BoundField DataField="Music" HeaderText="Music" SortExpression="Music" />
            <asp:BoundField DataField="Director" HeaderText="Director" SortExpression="Director" />
            <asp:BoundField DataField="MovieCode" HeaderText="MovieCode" SortExpression="MovieCode" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Movies WHERE (MovieCode = @MovieCode)" InsertCommand="INSERT INTO [Movies] ([Id], [Title], [Genre], [Description], [Price], [MovieImage], [Length], [Year], [Country], [Language], [ProductionCompany], [Budget], [Cast], [AgeRestriction], [Music], [Director], [MovieCode], [Location]) VALUES (@Id, @Title, @Genre, @Description, @Price, @MovieImage, @Length, @Year, @Country, @Language, @ProductionCompany, @Budget, @Cast, @AgeRestriction, @Music, @Director, @MovieCode, @Location)" SelectCommand="SELECT [Id], [Title], [Genre], [Description], [Price], [MovieImage], [Length], [Year], [Country], [Language], [ProductionCompany], [Budget], [Cast], [AgeRestriction], [Music], [Director], [MovieCode], [Location] FROM [Movies]" UpdateCommand="UPDATE [Movies] SET [Title] = @Title, [Genre] = @Genre, [Description] = @Description, [Price] = @Price, [MovieImage] = @MovieImage, [Length] = @Length, [Year] = @Year, [Country] = @Country, [Language] = @Language, [ProductionCompany] = @ProductionCompany, [Budget] = @Budget, [Cast] = @Cast, [AgeRestriction] = @AgeRestriction, [Music] = @Music, [Director] = @Director, [MovieCode] = @MovieCode, [Location] = @Location WHERE [MovieCode] = @MovieCode">
        <DeleteParameters>
            <asp:controlParameter ControlID="txtMovieCode" Name="MovieCode" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Genre" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="MovieImage" Type="String" />
            <asp:Parameter Name="Length" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Language" Type="String" />
            <asp:Parameter Name="ProductionCompany" Type="String" />
            <asp:Parameter Name="Budget" Type="String" />
            <asp:Parameter Name="Cast" Type="String" />
            <asp:Parameter Name="AgeRestriction" Type="String" />
            <asp:Parameter Name="Music" Type="String" />
            <asp:Parameter Name="Director" Type="String" />
            <asp:Parameter Name="MovieCode" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Genre" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="MovieImage" Type="String" />
            <asp:Parameter Name="Length" Type="String" />
            <asp:Parameter Name="Year" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Language" Type="String" />
            <asp:Parameter Name="ProductionCompany" Type="String" />
            <asp:Parameter Name="Budget" Type="String" />
            <asp:Parameter Name="Cast" Type="String" />
            <asp:Parameter Name="AgeRestriction" Type="String" />
            <asp:Parameter Name="Music" Type="String" />
            <asp:Parameter Name="Director" Type="String" />
            <asp:Parameter Name="MovieCode" Type="String" />
            <asp:Parameter Name="Location" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
