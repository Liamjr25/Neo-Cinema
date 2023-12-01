<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="NeoCinemas.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <style>
            :root {
    --white: #fff;
    --light: #f8f9fa;
    --dark: #121212;
    --text-ftr: #7e7e7e;
    --text-clr: #3d3d3d;
    --h-color: #282828;
    --cta: #ffd34f;
    --cta-hover: #ffd861;
    --main-green: #344436;
    --main-light-green: #82B060;
    --blue: #0479F1;
  }
  
  /** {
    /* Page Reset */
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    /* Site Font */
    font-family: 'Lato', sans-serif;
    font-weight: 300;
    font-size: 20px;
    scroll-behavior: smooth;
  }*/

h1, h2 {
    font-family: 'Open Sans', serif;
    font-weight: 400;
    color: var(--h-color);
}
            body {
                font-size: 20px;
            }
/* 
=================
    About
=================
*/

#about {
  background: var(--white);
  margin-top: 60px;
  width: 100%;
  margin-left: 250px;
  padding: 0 64px;
}

/* Heading */
.about-heading {
    margin: auto;
    width: 70%;
    text-align: center;
}

.about-heading h1 {
    font-size: 2.7rem;
}

.about-heading hr {
	width: 40%; 
	height: 3px;
	margin: auto;
	background-color: var(--cta);
	border: none;
}

.about-heading p {
    margin: 20px 0;
    font-size: 1.2rem;
    line-height: 1.6;
}

/* Stagger Section */
.about-section {
  display: flex;
}
.about-section:nth-of-type(even) {
  flex-direction: row-reverse;
}

.about-item {
  height: 100vh;
  flex: 1;
}
.about-item:nth-of-type(odd) {
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
  box-shadow: 0 10px 20px rgba(0,0,0,0.16), 0 6px 6px rgba(0,0,0,0.19);
  margin: 30px;
  border-radius: 5px;
}

.about-item.who {
  background: url("Images/aboutpic1.jpg");
  display: block;
  background-position: center;
  background-size: cover;
}

.about-item.process {
  background: url("Images/aboutpic2.jpeg");
  display: block;
  background-position: center;
  background-size: cover;
}

.about-item.contact {
  background: url("Images/aboutpic3.jpg");
  display: block;
  background-position: center;
  background-size: cover;
}

.about-item:nth-of-type(even) {
  margin: 30px;
}

.about-item h2 {
  font-size: 2.2rem;
  margin-top: 50px;
  margin-bottom: 10px;
  padding: 20px;
}

.about-item p {
  padding: 20px;
  font-size: 1.2rem;
  line-height: 1.6rem;
}

.about-btn {
  font-family: 'Open Sans', sans-serif;
  font-weight: 400;
  color: var(--h-color);
  background: var(--cta);
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 1rem;
  width: 30%;
  height: 45px;
  overflow: hidden;
  margin-top: 30px;
  margin-left: 30%;
  box-shadow: 0 5px 15px -5px rgb(112, 97, 97);
}

.about-btn:hover {
  transition: ease-in;
  background: var(--cta-hover);
  font-size: 1.05rem;
  transition: 0.2s ease-out;
}

/* About Us Responsive Media */
@media screen and (max-width: 51em) {
  #about {
  padding: 0 24px;
  }
  .about-heading {
    width: 90%;
  }
  .about-heading h1 {
    font-size: 2.2rem;
  }
  .about-heading hr {
	  width: 80%; 
  }
  .about-heading p {
    font-size: 1rem;
  }
  .about-section {
    display: block;
  }
  .about-item:nth-of-type(even) {
    height: auto;
  }
  .about-item {
    height: 60vh;
    width: 90%;
  }
  .about-item h2 {
    font-size: 1.6rem;
    margin-top: 0;
  }
  .about-item p {
    font-size: 1rem;
  }
}
        </style>
    </head>
    <section id="about">
  
  <!--  Heading  -->
  <div class="about-heading">
		<h1>About Us</h1>
		<hr />
		<p>Neo Cinemas Open Air Cinema is synonymous with the start of summer in Cape Town. We offer unique entertainment for both locals and tourists alike who can take advantage of the gorgeous Cape Townian summers and beautiful vistas. We strive to create magical memories with great food, movie magic, entertainment and a fun social vibe all under a canopy of stars.</p>
	</div>
  
  <!--  Section 1  -->
  <div class="about-section">
    <div class="about-item who"></div>
    <div class="about-item">
      <h2>Who We Are</h2>
			<p>Welcome to Neo Cinema&#39;s, the largest and the most premium film exhibitor in Africa with 1708 screens across 115 cities (South Africa & Central Africa) with 361 properties and an aggregate seating capacity of 3.60 lakh seats. Over the years, we have consistently increased our screen count, both organically and inorganically, through strategic investments and acquisitions which includes ‘Cinemax Cinemas’ in November 2012, ‘DT Cinemas’ in May 2016, ‘SPI Cinemas’ in August 2018. We recently completed the merger with INOX Leisure Limited, which has added to our storied history of becoming game changers in the film exhibition industry for over 25 years and transforming the out of home entertainment in the country.</p>
			<p>Our mission is to advance and reimagine the movie-going experience by continuing to reinvent ourselves in keeping up with the times and the ever-changing entertainment landscape to make our brand aspirational and accessible. We take pride in our strategically located cinemas and we continuously invest in introducing premium formats, comfortable seating, sound, projection, ambience, and food & beverage to meet evolving consumer expectations so that our patrons have a memorable experience every time they visit our cinemas.</p>
    </div>
  </div>
  <!--  Section 2  -->
  <div class="about-section">
    <div class="about-item process"></div>
    <div class="about-item">
      <h2>Our Process</h2>
			<p>We serve as a conduit between consumers and the film industry on one hand and the retail industry and real estate development on the other. As a leading player in the film exhibition industry, our company is spearheading the establishment of a robust ecosystem that brings together key partners, including filmmakers, studios, content providers, equipment and concession manufacturers, data and technology companies, all of whom rely on the strength of our business and the communities we serve. We engage with multiple channels to connect with our over 180 million patrons through research, loyalty, online, digital, and offline modes to provide a platform to showcase film and non-film content and identifying new trends in the film exhibition industry.</p>
			<p>Our diversified revenue stream comes mainly from box office and non-box office, which primarily includes revenue from Sale of Food and Beverages, advertisement income, convenience fees, and income from movie distribution, among others. Our leadership across key operating metrics and robust financial position is backed by experienced Promoters, Key Managerial Personnel, and a senior management team with an established track record.</p>
    </div>
  </div>
  <!--  Section 3  -->
  <div class="about-section">
    <div class="about-item contact"></div>
    <div class="about-item">
      <h2>Come Say Hello!</h2>
			<p>If you’d like to receive our monthly updates featuring how-to guides and case studies, film ideas, flagging awareness dates, and sharing training and funding opportunities, then subscribe.

We won’t ever send your data to third parties, and the content you receive will be about inclusive cinema.</p>
			<button class="about-btn">Contact Us</button>
    </div>
  </div>
</section>
</asp:Content>
