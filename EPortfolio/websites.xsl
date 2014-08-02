<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>

<!--education page for E-portfolio
	Author: Roscoe Pyell
	update: Novemeber 1 2010-->
	
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
				<li style="background-color: #CFCFCF;">
					<a href="#top">TOP</a>
				</li>
				<li>
					<a href="education.xml">EDUCATION</a>
				</li>
				<li>
					<a href="workex.xml">WORK EXP.</a>
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
				WEB-PAGES
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
			<h1 style="text-align: center; padding: 10px;">WEBSITES</h1>
			<hr />

			<div style="margin: 10px; text-align: center;">
			I do not design websites by choice... All of the ones listed here were used
			for classes at one point or another.<br />
			I can't say, however, that I didn't enjoy scripting the pages.<br /><br />
			The good news is that, since I've done a few web pages, I'm fairly confident
			in CSS and HTML<br />
			(even if I did score low on that test - I mostly made a bunch of silly 
			mistakes).
			</div>
			
			<!--XSLT-->
			<div style="width: 850px; margin: 15px 50px;">
				<xsl:for-each select="sites/years">
				<xsl:value-of select="year"/>
				<xsl:for-each select="site">
				<ul style="width: 700px; margin-left: 70px; padding: 15px;">
					<table>
						<caption style="text-decoration: underline; text-align: left;">
							<span style="font-size: 1.2em;">
								<xsl:value-of select="title"/>
							</span>
						</caption>
						<tr>
							<td>
								<ul style="margin-left: 15px;">
									<li><xsl:value-of select="why"/></li>
									<li><xsl:value-of select="time"/></li>
									<li><xsl:value-of select="layout"/></li>
									<li><xsl:value-of select="demo"/></li>
								</ul>
							</td>
							<td>
								<a href="{image}">
									<img src="{image}" alt="{title}" style="width: 200px;"/>
								</a>
							</td>
						</tr>
					</table>
				</ul>
				</xsl:for-each>
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