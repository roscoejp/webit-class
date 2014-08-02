<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>

<!--Programs page for E-portfolio
	Author: Roscoe Pyell
	update: October 29 2010-->
	
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
				<li style="background-color: #CFCFCF;">
					<a href="#top">TOP</a>
				</li>
				<li>
					<a href="websites.xml">WEBSITES</a>
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
				PROGRAMS
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
			<h1 style="text-align: center; padding: 10px;">APPLICATIONS</h1>
			<hr />

			<div style="text-align: center;">
				Please note, applications are <span style="text-decoration: underline;">
				not</span> available for download at this time.<br />
				Also note that, while all of these applications are completed, I am 
				still seraching for some of them.<br /> 
				I also don't want to post screens of current assignments, 
				seeing as that seems like a good way to get accused of cheating.
			</div>
			
			<!--XSLT-->
			<ul style="margin: 20px 50px 0 20px; width: 900px;">
				<xsl:for-each select="programs/languages">
				<li>
					<xsl:value-of select="language"/>
					<xsl:for-each select="years">
					<ul style="width: 870px; margin: 10px 40px;">
						<li>
							<xsl:value-of select="year"/>
							<xsl:for-each select="program">
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
												<li><xsl:value-of select="who"/></li>
												<li><xsl:value-of select="where"/></li>
												<li><xsl:value-of select="note"/></li>
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
						</li>
					</ul>
					</xsl:for-each>
				</li>	
				</xsl:for-each>
			</ul>
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
			Last update: <span style="font-weight: normal">October 30, 2010</span>
		</span>
	</div>								<!--END footer-->
</body>

</html>
</xsl:template>
</xsl:stylesheet>