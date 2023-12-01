<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home1.aspx.cs" Inherits="NeoCinemas.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        :root {
  --card-height: 300px;
  --card-width: calc(var(--card-height) / 1.5);
}
* {
  box-sizing: border-box;
}
        p {
            color: white;
            text-align: center;
            font-size: 50px;
            font-weight: 600;
        }
body {
  width: 100vw;
  height: 100vh;
  margin: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  background: #191c29;
}
.card {
  width: var(--card-width);
  height: var(--card-height);
  position: relative;
  display: flex;
  justify-content: center;
  align-items: flex-end;
  padding: 0 36px;
  perspective: 2500px;
  margin: 0 50px;
}

.cover-image {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.wrapper {
  transition: all 0.5s;
  position: absolute;
  width: 100%;
  z-index: -1;
}

.card:hover .wrapper {
  transform: perspective(900px) translateY(-5%) rotateX(25deg) translateZ(0);
  box-shadow: 2px 35px 32px -8px rgba(0, 0, 0, 0.75);
  -webkit-box-shadow: 2px 35px 32px -8px rgba(0, 0, 0, 0.75);
  -moz-box-shadow: 2px 35px 32px -8px rgba(0, 0, 0, 0.75);
}

.wrapper::before,
.wrapper::after {
  content: "";
  opacity: 0;
  width: 100%;
  height: 80px;
  transition: all 0.5s;
  position: absolute;
  left: 0;
}
.wrapper::before {
  top: 0;
  height: 100%;
  background-image: linear-gradient(
    to top,
    transparent 46%,
    rgba(12, 13, 19, 0.5) 68%,
    rgba(12, 13, 19) 97%
  );
}
.wrapper::after {
  bottom: 0;
  opacity: 1;
  background-image: linear-gradient(
    to bottom,
    transparent 46%,
    rgba(12, 13, 19, 0.5) 68%,
    rgba(12, 13, 19) 97%
  );
}

.card:hover .wrapper::before,
.wrapper::after {
  opacity: 1;
}

.card:hover .wrapper::after {
  height: 120px;
}
.title {
  width: 100%;
  transition: transform 0.5s;
}
.card:hover .title {
  transform: translate3d(0%, -50px, 100px);
}

.character {
  width: 100%;
  opacity: 0;
  transition: all 0.5s;
  position: absolute;
  z-index: -1;
}

.card:hover .character {
  opacity: 1;
  transform: translate3d(0%, -30%, 100px);
}
        * {
            box-sizing: border-box;
            color: black;
        }

body {font-family: Verdana, sans-serif;
      margin:0;
      color: black;
}
        h1 {
            color: white;
        }
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 90%;
  position: relative;
  top: -1px;
            left: 0px;
            margin-left: 0px;
            width: 2132px;
            margin-right: auto;
            margin-top: auto;
            margin-bottom: auto;
        }

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
            left: 445px;
        }

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
        .auto-style2 {
            text-align: center;
        }
        .auto-style5
        {
            height: 303px;
        }
        .auto-style6 {
            height: 51px;
        }
        .auto-style7 {
            height: 20px;
        }
    .auto-style8 {
        height: 61px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 153%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <div class="slideshow-container">
                    <div class="mySlides fade">
                        <div class="numbertext">
                            </div>
                        <img src="Images/KevinHartBanner.jpg" style="width:100%" />
                        <div class="text">
                            </div>
                    </div>
                    <div class="mySlides fade">
                        <div class="numbertext">
                            </div>
                        <img src="Images/aquabanner.jpg" style="width:100%" />
                        <div class="text">
                            </div>
                    </div>
                    <div class="mySlides fade">
                        <div class="numbertext">
                            3 / 3</div>
                        <img src="Images/FastX.jpg" style="width:100%" />
                        <div class="text">
                            </div>
                    </div>
                    <a class="prev" onclick="plusSlides(-1)">❮</a> <a class="next" onclick="plusSlides(1)">❯</a>
                </div>
                <br />
                <div style="text-align:center">
                    <span class="dot" onclick="currentSlide(1)"></span><span class="dot" onclick="currentSlide(2)"></span><span class="dot" onclick="currentSlide(3)"></span>
                </div>
            </td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" style="color: #FFFFFF">
                Search For Movie<asp:TextBox ID="txtName" runat="server" AutoPostBack="True" Text="Enter Title of Movie" onfocus="if(this.value =='Enter Title of Movie') this.value='';" Width="126px" Height="21px"></asp:TextBox>
            </td>
            <td class="auto-style7" style="color: #FFFFFF">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" style="color: #FFFFFF">Filter By:<asp:DropDownList ID="ddlGenre" runat="server" DataSourceID="SqlDataSource2" DataTextField="Genre" DataValueField="Genre" AutoPostBack="True" AppendDataBoundItems="True" Height="42px" Width="115px">
                <asp:ListItem>--Genre--</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlAgeRestriction" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource3" DataTextField="AgeRestriction" DataValueField="AgeRestriction" AutoPostBack="True" Height="42px" Width="145px">
                    <asp:ListItem>--Age Restriction--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [AgeRestriction] FROM [Movies]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Genre] FROM [Movies]"></asp:SqlDataSource>
            </td>
            <td class="auto-style8" style="color: #FFFFFF">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                    RepeatColumns="5" RepeatDirection="Horizontal" 
                    OnItemCommand="DataList1_ItemCommand" BackColor="#666666" CellSpacing="50">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="350px" ImageUrl='<%# Eval("MovieImage") %>' Width="275px" />
                        <br />
                        <asp:Label ID="lblTitle" runat="server" ForeColor="White" Text="Title:"></asp:Label>
                        &nbsp;<asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' ForeColor="White" />
                        <br />
                        <asp:Label ID="lblPriceLabel" runat="server" ForeColor="White" Text="Price Label:"></asp:Label>
                        &nbsp;<asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' ForeColor="White" />
                        <br />
                        <asp:Label ID="lblAgeRestriction" runat="server" ForeColor="White" Text="Age Restriction:"></asp:Label>
                        &nbsp;<asp:Label ID="AgeRestrictionLabel" runat="server" 
                            Text='<%# Eval("AgeRestriction") %>' ForeColor="White" />
                        <br />
                        <asp:Label ID="lblMovieCode" runat="server" ForeColor="White" Text="Movie Code:"></asp:Label>
                        &nbsp;<asp:Label ID="MovieCodeLabel" runat="server" Text='<%# Eval("MovieCode") %>' ForeColor="White" />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Title], [MovieImage], [Price], [AgeRestriction], [MovieCode] FROM [Movies] WHERE (([Title] = @Title) OR ([Genre] = @Genre) OR ([AgeRestriction] = @AgeRestriction))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtName" Name="Title" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="ddlGenre" Name="Genre" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="ddlAgeRestriction" Name="AgeRestriction" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <style>


                </style>
<!-- partial:index.partial.html -->
                

                <td>
                &nbsp;<tr>
            <td>
              
        <tr>
            <td>
                &nbsp;<tr>
            <td>
               <%-- <a alt="Mythrill" href="https://www.mythrillfiction.com/force-mage" target="_blank">--%>
                
                
        <tr>
            <td>
                &nbsp;<tr>
            <td>
                <%--<a alt="Mythrill" href="https://www.mythrillfiction.com/force-mage" target="_blank">--%>
                
                
        <tr>
            <td>
                &nbsp;<tr>
            <td>

                
                <div class="card">
                    <div class="wrapper">
                        <img class="cover-image" src="Images/Elementalposter.jpg" />
                    </div>
                    <img class="title" src="Images/logoelemental.png" />
                    <img class="character" src="Images/elementalcharac.png" />
                </div>
                </a><p>Elemental</p><td>
                                <a alt="Mythrill" href="https://www.mythrillfiction.com/force-mage" target="_blank">
                <div class="card">
                    <div class="wrapper">
                        <img class="cover-image" src="Images/teenageposter.jpg" />
                    </div>
                    <img class="title" src="Images/Teenagename.png" />
                    <img class="character" src="Images/teenagecharact.png" />
                </div><p>Teenage Mutant Ninja Turles</p><tr>
            <td>
                <div class="card">
                    <div class="wrapper">
                        <img class="cover-image" src="Images/ghostbusterposter.jfif" />
                    </div>
                    <img class="title" src="Images/ghostbusterslogo.png" />
                    <img class="character" src="Images/ghostbusters.png" />
                </div>
                </a><p>Ghost Busters</p><td>
                <div class="card">
                    <div class="wrapper">
                        <img class="cover-image" src="Images/bluebeetleposter.jpeg" />
                    </div>
                    <img class="title" src="Images/bluebeetlelogo.png" />
                    <img class="character" src="Images/BlueBeetlecharacter.png" />
                </div><p>Blue Beetle</p><tr>
            <td>
                <div class="card">
                    <div class="wrapper">
                        <img class="cover-image" src="Images/chickenrun.jpg" />
                    </div>
                    <img class="title" src="Images/chickenrunlogo.png" />
                    <img class="character" src="Images/chickenruncharacter.png" />
                </div>
                </a><p>Chicken Run</p><td>
                <div class="card">
                    <div class="wrapper">
                        <img class="cover-image" src="Images/barbiepost.jpg" />
                    </div>
                    <img class="title" src="Images/barbielogo.png" />
                    <img class="character" src="Images/barbiecharac.png" />
                </div><p>Barbie</p><tr>
            <td>
                
                <td>
                  
                
                <tr>
            <td>
                <div class="card">
                    <div class="wrapper">
                        <img class="cover-image" src="Images/captainmarvelcharacter.jpg" />
                    </div>
                    <img class="title" src="Images/captan.png" />
                    <img class="character" src="Images/captainmarvelcharacter.png" />
                </div><p>Captain Marvel</p><td>
                <div class="card">
                    <div class="wrapper">
                        <img class="cover-image" src="Images/indianaposter.jpg" />
                    </div>
                    <img class="title" src="Images/IndianaJoneslogo.png" />
                    <img class="character" src="Images/indianadownload.png" />
                </div><p>Indiana Jones</p><tr>
            <td>
                &nbsp;<td>
                &nbsp;<tr>
            <td>
                &nbsp;<td>
                &nbsp;<tr>
            <td>
                &nbsp;<td>
                &nbsp;<tr>
            <td>
                &nbsp;<td>
                &nbsp;<tr>
            <td>
                &nbsp;<td>
                &nbsp;</table>
    <script>
        let slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            let i;
            let slides = document.getElementsByClassName("mySlides");
            let dots = document.getElementsByClassName("dot");
            if (n > slides.length) {slideIndex = 1}    
            if (n < 1) {slideIndex = slides.length}
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";  
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex-1].style.display = "block";  
            dots[slideIndex-1].className += " active";
        }
</script>

</asp:Content>
