<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UpdateMovie.aspx.cs" Inherits="NeoCinemas.UpdateMovie" %>
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
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Update Movies</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblID" runat="server" Text="ID"></asp:Label>
            <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Label ID="lblLanguage" runat="server" Text="Language"></asp:Label>
            <asp:TextBox ID="txtLanguage" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtTitle" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Label ID="lblProductionCompany" runat="server" Text="ProductionCompany"></asp:Label>
            <asp:TextBox ID="txtProductionCompany" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblGenre" runat="server" Text="Genre"></asp:Label>
            <asp:TextBox ID="txtGenre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtGenre" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Label ID="lblBudget" runat="server" Text="Budget"></asp:Label>
            <asp:TextBox ID="txtBudget" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
            <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtDescription" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Label ID="lblCast" runat="server" Text="Cast"></asp:Label>
            <asp:TextBox ID="txtCast" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblPrice" runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtPrice" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Label ID="lblAgeRestriction" runat="server" Text="AgeRestriction"></asp:Label>
            <asp:TextBox ID="txtAgeRestriction" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblMovieImage" runat="server" Text="MovieImage"></asp:Label>
            <asp:TextBox ID="txtMovieImage" runat="server"></asp:TextBox>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Label ID="IDMusic" runat="server" Text="Music"></asp:Label>
            <asp:TextBox ID="txtMusic" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblLength" runat="server" Text="Length"></asp:Label>
            <asp:TextBox ID="txtLength" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Label ID="lblDirector" runat="server" Text="Director"></asp:Label>
            <asp:TextBox ID="txtDirector" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblYear" runat="server" Text="Year"></asp:Label>
            <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Label ID="lblMovieCode" runat="server" Text="MovieCode"></asp:Label>
            <asp:TextBox ID="txtMovieCode" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            <asp:Label ID="lblLocation" runat="server" Text="Location"></asp:Label>
            <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Please enter!" ControlToValidate="txtID" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <div class="container">
        <div class="btn"><a href="#"><asp:Button ID="btnUpdate" runat="server" OnClick="Button1_Click" Text="Update" BackColor="Transparent" /></a></div></div>
            <asp:Label ID="lblSuccessful" runat="server" Text="Successful!" ForeColor="Lime"></asp:Label>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Movies] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Movies] ([Id], [Title], [Genre], [Description], [Price], [MovieImage], [Length], [Year], [Country], [Language], [ProductionCompany], [Budget], [Cast], [AgeRestriction], [Music], [Director], [MovieCode], [Location]) VALUES (@Id, @Title, @Genre, @Description, @Price, @MovieImage, @Length, @Year, @Country, @Language, @ProductionCompany, @Budget, @Cast, @AgeRestriction, @Music, @Director, @MovieCode, @Location)" SelectCommand="SELECT [Id], [Title], [Genre], [Description], [Price], [MovieImage], [Length], [Year], [Country], [Language], [ProductionCompany], [Budget], [Cast], [AgeRestriction], [Music], [Director], [MovieCode], [Location] FROM [Movies]" UpdateCommand="UPDATE [Movies] SET [Title] = @Title, [Genre] = @Genre, [Description] = @Description, [Price] = @Price, [MovieImage] = @MovieImage, [Length] = @Length, [Year] = @Year, [Country] = @Country, [Language] = @Language, [ProductionCompany] = @ProductionCompany, [Budget] = @Budget, [Cast] = @Cast, [AgeRestriction] = @AgeRestriction, [Music] = @Music, [Director] = @Director, [MovieCode] = @MovieCode, [Location] = @Location WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
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
                    <asp:controlParameter ControlID="txtTitle" Name="Title" Type="String" />
                    <asp:controlParameter ControlID="txtGenre" Name="Genre" Type="String" />
                    <asp:controlParameter ControlID="txtDescription" Name="Description" Type="String" />
                    <asp:controlParameter ControlID="txtPrice" Name="Price" Type="String" />
                    <asp:controlParameter ControlID="txtMovieImage" Name="MovieImage" Type="String" />
                    <asp:controlParameter ControlID="txtLength" Name="Length" Type="String" />
                    <asp:controlParameter ControlID="txtYear" Name="Year" Type="String" />
                    <asp:controlParameter ControlID="txtCountry" Name="Country" Type="String" />
                    <asp:controlParameter ControlID="txtLanguage" Name="Language" Type="String" />
                    <asp:controlParameter ControlID="txtProductionCompany" Name="ProductionCompany" Type="String" />
                    <asp:controlParameter ControlID="txtBudget" Name="Budget" Type="String" />
                    <asp:controlParameter ControlID="txtCast" Name="Cast" Type="String" />
                    <asp:controlParameter ControlID="txtAgeRestriction" Name="AgeRestriction" Type="String" />
                    <asp:controlParameter ControlID="txtMusic" Name="Music" Type="String" />
                    <asp:controlParameter ControlID="txtDirector" Name="Director" Type="String" />
                    <asp:controlParameter ControlID="txtMovieCode" Name="MovieCode" Type="String" />
                    <asp:controlParameter ControlID="txtLocation" Name="Location" Type="String" />
                    <asp:controlParameter ControlID="txtId" Name="Id" Type="Int32" />
                </UpdateParameters>
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
</table>
</asp:Content>
