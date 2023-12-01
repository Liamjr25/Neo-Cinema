<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookingMovie.aspx.cs" Inherits="NeoCinemas.BookingMovie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head><style>
   

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

.container1 .btn:nth-child(1):before,
.container1 .btn:nth-child(1)::after {
    background: #ff1f71;
    box-shadow: 0 0 5px #ff1f71,
    0 0 15px #ff1f71,
    0 0 30px #ff1f71,
    0 0 60px #ff1f71;
}
              body {
                  color: white;
              }
              .auto-style5 {
                  width: 122px;
              }
          .auto-style6 {
        width: 898px;
    }
              .auto-style7 {
                  width: 898px;
                  height: 41px;
              }
              .auto-style8 {
                  width: 122px;
                  height: 41px;
              }
          </style></head>
    <tr>
            <td></td>
<br />
<br />
<br />
<br />
<br />
<br />
    &nbsp; &nbsp; &nbsp; &nbsp; <br />
    <br />
    <br />
    <table style="width:100%;">
        <tr>
            <td class="auto-style6">Optional Snacks<br />
    <asp:DropDownList ID="ddlExtras" runat="server">
        <asp:ListItem Value="15">Slushy(15)</asp:ListItem>
        <asp:ListItem Value="15">Chocolate</asp:ListItem>
        <asp:ListItem Value="15">Chips</asp:ListItem>
        <asp:ListItem Value="15">ColdDrink</asp:ListItem>
        <asp:ListItem Value="15">Biltong</asp:ListItem>
        <asp:ListItem Value="15">Popcorn</asp:ListItem>
    </asp:DropDownList>
            </td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><asp:Label ID="lblId" runat="server" Text="Id"></asp:Label>
                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblSurname" runat="server" Text="Surname"></asp:Label>
                <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtSurname" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style5">
                <asp:Label ID="lblSeatNumber" runat="server" Text="SeatNumber"></asp:Label>
<asp:TextBox ID="txtSeatNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtSeatNumber" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="lblEMail" runat="server" Text="E-Mail"></asp:Label>
                <asp:TextBox ID="txtEMail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEMail" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblGateNumber" runat="server" Text="GateNumber"></asp:Label>
                <asp:TextBox ID="txtGateNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtGateNumber" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style6">
<asp:Label ID="lblBankCardNumber" runat="server" Text="BankCardNumber"></asp:Label>
<asp:TextBox ID="txtBankCardNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtBankCardNumber" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">
<asp:Label ID="lblBookingId" runat="server" Text="BookingId"></asp:Label>
<asp:TextBox ID="txtBookingId" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtBookingId" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style6">
<asp:Label ID="lblClubCardNumber" runat="server" Text="ClubCardNumber"></asp:Label>
<asp:TextBox ID="txtClubCardNumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtClubCardNumber" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblMovieName" runat="server" Text="MovieName"></asp:Label>
                <asp:TextBox ID="txtMovieName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtMovieName" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style6">
<asp:Label ID="lblCVV" runat="server" Text="CVV"></asp:Label>
<asp:TextBox ID="txtCVV" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCVV" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblBankName" runat="server" Text="Bank Name"></asp:Label>
                <asp:TextBox ID="txtBankName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtBankName" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style7">
<asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
<asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDate" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style8">
    <asp:Label ID="lblNumberOfTickets" runat="server" Text="No. Of Tickets"></asp:Label>
    <asp:DropDownList ID="ddlTicketsList" runat="server">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
<asp:Label ID="lblOptionalCosts" runat="server" Text="OptionalCosts"></asp:Label>
<asp:TextBox ID="txtOptionalCosts" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtOptionalCosts" ErrorMessage="Please Enter!*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
<asp:Label ID="lblTotal" runat="server" Text="Total"></asp:Label>
<asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <div class="container1">
        <div class="btn"><a href="#"><asp:Button ID="btnAddToCart" runat="server" OnClick="btnAddToCart_Click" Text="Add To Cart" Width="113px" BackColor="Transparent" /></a></div></div>
            </td>
        </tr>
        <tr>
            <td style="border-color: #0000FF; text-align: center;" class="auto-style6">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="1402px">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="BankName" HeaderText="BankName" SortExpression="BankName" />
                        <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                        <asp:BoundField DataField="EMail" HeaderText="EMail" SortExpression="EMail" />
                        <asp:BoundField DataField="BankCardNumber" HeaderText="BankCardNumber" SortExpression="BankCardNumber" />
                        <asp:BoundField DataField="ClubCardNumber" HeaderText="ClubCardNumber" SortExpression="ClubCardNumber" />
                        <asp:BoundField DataField="CVV" HeaderText="CVV" SortExpression="CVV" />
                        <asp:BoundField DataField="GateNumber" HeaderText="GateNumber" SortExpression="GateNumber" />
                        <asp:BoundField DataField="SeatNumber" HeaderText="SeatNumber" SortExpression="SeatNumber" />
                        <asp:BoundField DataField="OptionalCosts" HeaderText="OptionalCosts" SortExpression="OptionalCosts" />
                        <asp:BoundField DataField="BookingId" HeaderText="BookingId" SortExpression="BookingId" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Booking] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Booking] ([Id], [Surname], [Name], [BankName], [MovieName], [EMail], [BankCardNumber], [ClubCardNumber], [CVV], [GateNumber], [SeatNumber], [OptionalCosts], [BookingId], [Date], [Total]) VALUES (@Id, @Surname, @Name, @BankName, @MovieName, @EMail, @BankCardNumber, @ClubCardNumber, @CVV, @GateNumber, @SeatNumber, @OptionalCosts, @BookingId, @Date, @Total)" SelectCommand="SELECT [Id], [Surname], [Name], [BankName], [MovieName], [EMail], [BankCardNumber], [ClubCardNumber], [CVV], [GateNumber], [SeatNumber], [OptionalCosts], [BookingId], [Date], [Total] FROM [Booking]" UpdateCommand="UPDATE [Booking] SET [Surname] = @Surname, [Name] = @Name, [BankName] = @BankName, [MovieName] = @MovieName, [EMail] = @EMail, [BankCardNumber] = @BankCardNumber, [ClubCardNumber] = @ClubCardNumber, [CVV] = @CVV, [GateNumber] = @GateNumber, [SeatNumber] = @SeatNumber, [OptionalCosts] = @OptionalCosts, [BookingId] = @BookingId, [Date] = @Date, [Total] = @Total WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:controlParameter ControlID="txtId" Name="Id" Type="Int32" />
                        <asp:controlParameter ControlID="txtSurname" Name="Surname" Type="String" />
                        <asp:controlParameter ControlID="txtName" Name="Name" Type="String" />
                        <asp:controlParameter ControlID="txtBankName" Name="BankName" Type="String" />
                        <asp:controlParameter ControlID="txtMovieName" Name="MovieName" Type="String" />
                        <asp:controlParameter ControlID="txtEmail" Name="EMail" Type="String" />
                        <asp:controlParameter ControlID="txtBankCardNumber" Name="BankCardNumber" Type="String" />
                        <asp:controlParameter ControlID="txtClubCardNumber" Name="ClubCardNumber" Type="String" />
                        <asp:controlParameter ControlID="txtCVV" Name="CVV" Type="String" />
                        <asp:controlParameter ControlID="txtGateNumber" Name="GateNumber" Type="String" />
                        <asp:controlParameter ControlID="txtSeatNumber" Name="SeatNumber" Type="String" />
                        <asp:controlParameter ControlID="txtOptionalCosts" Name="OptionalCosts" Type="String" />
                        <asp:controlParameter ControlID="txtBookingId" Name="BookingId" Type="String" />
                        <asp:controlParameter ControlID="txtDate" Name="Date" Type="String" />
                        <asp:controlParameter ControlID="txtTotal" Name="Total" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Surname" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="BankName" Type="String" />
                        <asp:Parameter Name="MovieName" Type="String" />
                        <asp:Parameter Name="EMail" Type="String" />
                        <asp:Parameter Name="BankCardNumber" Type="String" />
                        <asp:Parameter Name="ClubCardNumber" Type="String" />
                        <asp:Parameter Name="CVV" Type="String" />
                        <asp:Parameter Name="GateNumber" Type="String" />
                        <asp:Parameter Name="SeatNumber" Type="String" />
                        <asp:Parameter Name="OptionalCosts" Type="String" />
                        <asp:Parameter Name="BookingId" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="Total" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
    <br />
<br />
    <br />

<br />
                <br />
                </asp:Content>
