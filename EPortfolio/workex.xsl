<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>

<!--education page for E-portfolio
	Author: Roscoe Pyell
	update: November 1 2010-->
	
<head>
	<title>Roscoe Pyell's E-Portfolio</title>
	<link rel="stylesheet" type="text/css" href="CSS/header.css" />
	<link rel="stylesheet" type="text/css" href="CSS/contentplus.css" />
</head>
<body>

	<div id="navwrapper">				<!--Navigation bar-->
		<div id="navbar">
			<ul>
				<li>
					<a href="../index.html">SPLASH</a>
				</li>
				<li>
					<a href="index.html">MAIN</a>
				</li>
				<li class="double-line">
					<a href="guestbook.xml">GUEST<br /> BOOK</a>
				</li>
				<li>
					<a href="author.html">ABOUT ME</a>
				</li>
				<li>
					<a href="programs.xml">PROGRAMS</a>
				</li>
				<li>
					<a href="websites.xml">WEBSITES</a>
				</li>
				<li>
					<a href="education.xml">EDUCATION</a>
				</li>
				<li style="background-color: #CFCFCF;">
					<a href="#top">TOP</a>
				</li>
				<li>
					<a href="links.html">LINKS</a>
				</li>
			</ul>
		</div>
	</div>

	<div id="container">				<!--Everything else-->

		<div id="header">
			<div id="title">			<!--Current page-->
				EXPERIENCE
			</div>
			
			<div id="logo">
				<a href="http://www.ucf.edu">
					<img src="images/ucfsw.jpg" alt="UCF Student Website"/>
					<span class="logoText">University of Central Florida Student Website</span>
				</a>
			</div>
		</div>

		<!--ACTUAL CONTENT
			9/10 DOCTORS AGREE THAT READING THIS WILL MAKE YOU 15% LESS RETARDED
			ACTUAL CONTENT-->
		<div id="content">
			<h1 style="text-align: center; padding: 10px;">WORK EXPERIENCE</h1>
			<hr />
			
			<img src="images/West plaza.jpg" alt="plaza retail center" width="440px" style="float: right; margin: 15px; margin-bottom: 75px;" />

			<div style="margin: 10px; width: 450px;">
			Since my entire life has, so far, been spent in school, it's not surprising that
			I work at the university. Unfortunately, it's the only job I've had, and it's
			not an IT job (I barely use a computer at work actually).<br /><br />
			I have, however, managed to hold my job for three years. But again, this is
			mostly because it's so nice living about a 6 minute walk from my place of
			employment.
			</div>
			
			<!--XSLT-->
			<div style="width: 450px; margin: 15px 20px;">
				Experience:<br />
				<xsl:for-each select="experience/job">
				<div style="font-weight: bold; font-size: 1.2em; margin: 10px 15px;"><xsl:value-of select="where"/></div>
				<div style="margin: 5px 0 5px 15px; width: 320px;">
					<xsl:value-of select="title"/>
					<xsl:value-of select="date"/>
					<hr />
				</div>
				<ul style="margin-left: 30px;">
					<li><xsl:value-of select="description"/></li>
				</ul>
				</xsl:for-each>
			</div>
			<!--END XSLT-->
			
		</div>							<!--END CONTENT-->

		<!--for footer overlap-->
		<br /><br /><br />
	</div>								<!--END CONTAINER-->

	<div id="footer">					<!--footer and contents, sticky-->
		All work on this site is original content of 
		<span style="font-weight: bold;">Roscoe Pyell.</span>
		<span style="margin: 0 40px 0 40px;">|</span>
		<span style="font-weight: bold;">
			Last update: <span style="font-weight: normal">November 1, 2010</span>
		</span>
	</div>								<!--END footer-->
</body>

</html>
</xsl:template>
</xsl:stylesheet>