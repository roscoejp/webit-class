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
				<li style="background-color: #CFCFCF;">
					<a href="#top">TOP</a>
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
				EDUCATION
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
			<h1 style="text-align: center; padding: 10px;">RELEVANT CLASSES</h1>
			<hr />

			<div style="width: 250px; margin: 10px 10px 50px 10px; float: right;">
				Currently in my senior year of Information Technology, I have learned 
				quite a few useful things in college.
				
				<!--XSLT-->
				<div style="width: 240px; clear: right; margin: 15px;">
					<xsl:for-each select="education/skills">
					<ul style="width: 100%; margin-left: 5px; padding-left: 15px; list-style: square;">
						<li>
							<xsl:value-of select="skill"/>
							<xsl:for-each select="titles">
							<ul style="width: 100%; margin-left: 0; padding: 0;">
								<ul style="margin-left: 15px; list-style: none;">
									<li><xsl:value-of select="title"/></li>
								</ul>
							</ul>
							</xsl:for-each>
						</li>
					</ul>
					</xsl:for-each>
				</div>
				<!--END XSLT-->
			</div>

			<img style="float: right; width: 400px;" src="images/Harris.jpg" alt="HEC3"/>

			<div style="width: 250px; margin: 10px;">
				Upon entering UCF, I was accepted in the Burnett Honors College, and
				promptly dropped out my second year - I did not think that my money would
				be well spent retaking two semesters worth of general education classes 
				and 'relearning' material I have already learned.<br /><br />
			</div>

			<!--XSLT-->
			<div style="width: 250px; margin: 15px; padding: 5px;">
				Relevant Classes:
				<xsl:for-each select="education/classes">
				<ul style="width: 100%; margin-left: 15px; padding-left: 15px;">
					<li>
						<xsl:value-of select="class"/>
					</li>
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