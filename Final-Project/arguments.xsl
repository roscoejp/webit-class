<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output
	method="html"
	omit-xml-declaration="yes"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	indent="yes"/>
<xsl:template match="/">
<html>

<head>
	<title>Arguments</title>
	<link href="css/header.css" rel="stylesheet" type="text/css" />
	<link href="css/menu.css" rel="stylesheet" type="text/css" />
	<link href="css/body.css" rel="stylesheet" type="text/css" />
	<link href="css/arguments.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="left">
		<img src="images/open logo.png" alt="Simply a lock" width="195" id="openlogo"/>

		<img src="images/arguments.png" alt="current page" id="current"/>

		<ul class="menu">
			<li><a href="../index.html">Splash</a></li>
			<li><a href="index.html">Welcome</a></li>
			<li class="out"><a href="open source.html">Open Source</a>
				<ul>
					<li><a href="open source.html#what">What is it?</a></li>
					<li><a href="open source.html#why">Why it matters</a></li>
				</ul>
			</li>
			<li class="out"><a href="gnu.html">GNU/GPL</a>
				<ul>
					<li><a href="gnu.html#what">What is it?</a></li>
					<li><a href="gnu.html#use">How you use it</a></li>
					<li><a href="gnu.html#GNU">The actual GNU/GPL [it's long]</a></li>
				</ul>
			</li>
			<li class="out"><a href="history.html">History</a>
				<ul>
					<li class="out"><a href="past.html">Past</a>
						<ul>
							<li><a href="past.html#creator">Creator</a></li>
							<li><a href="past.html#creation">The beginning</a></li>
						</ul>
					</li>
					<li class="out"><a href="present.php">Present</a>
						<ul>
							<li><a href="present.php#size">Movement Size</a></li>
							<li><a href="present.php#thoughts">Everyone's thoughts</a></li>
							<li><a href="present.php#survey">Your thoughts [survey]</a></li>
						</ul>
					</li>
					<li><a href="future.html">Future</a></li>
				</ul>
			</li>
			<li class="out"><a href="arguments.xml">The Arguments</a>
				<ul>
					<li><a href="arguments.xml#cost">Cost</a></li>
					<li><a href="arguments.xml#features">Features &amp; Qaulity</a></li>
					<li><a href="arguments.xml#deployment">Deployment</a></li>
					<li><a href="arguments.xml#users">Users &amp; Migration</a></li>
					<li><a href="arguments.xml#social">Social &amp; Economic</a></li>
				</ul>
			</li>
			<li><a href="software.html">Software</a></li>
			<li class="out"><a href="site info.html">About the Site</a>
				<ul>
					<li><a href="site info.html#info">Site Information</a></li>
					<li><a href="site info.html#me">About the Author</a></li>
				</ul>
			</li>
			<li class="out"><a href="guestbook.html">Contact me</a>
				<ul>
					<li><a href="guestbook.html#email">Email</a></li>
					<li><a href="guestbook.html#snail">Snail Mail</a></li>
					<li><a href="guestbook.html#guestbook">Guestbook</a></li>
				</ul>
			</li>
			<li><a href="#url" onclick="window.open('player.html', 'mynewwindow', 'width=420,height=341')">Background Music</a></li>
		</ul>

		<a href="http://validator.w3.org/check?uri=referer" id="valid">
			<img src="http://www.w3.org/Icons/valid-xhtml10" 
			alt="Valid XHTML 1.0!" height="31" width="88" />
		</a>
		
		<a href="http://jigsaw.w3.org/css-validator/check/referer" id="validCSS">
			<img src="http://jigsaw.w3.org/css-validator/images/vcss" 
			alt="Valid CSS!" height="31" width="88" />
		</a>
	</div>

<!--9/10 CLINICAL TRIALS SUGGEST THAT READING THIS MAY INDICATE YOU'RE NOT RETARDED
	Oh, and this is the actual page content section... There's that.-->
	<div id="content">
		<br /><br /><br />
		<div>
			<!--<img src="images/arguments.jpg" alt="arguments yard"/>
			<br /><br />-->
			This page contains some of the reasons for AND against the Open
			Source Movement. I myself am all for the movement, but I happen to like free 
			things.
			<br /><br />
			If you spend a little time to hover over the individual arguments, a more
			detailed explenation will appear!
			<br /><br />
			The pros for open source are bordered in green, and the cons against are
			bordered in red for ease of use.
		</div>
		
		<ul style="text-align: left;" class="args">
			<xsl:for-each select="arguments/titles">
			<li>
				<a name="{anchor}"></a>
				<xsl:value-of select="title"/>
				<ul>
					<xsl:for-each select="pros">
					<li>
						<span class="pro"><xsl:value-of select="pro"/></span>
						<span class="fly"><xsl:value-of select="reason"/></span>
					</li>
					</xsl:for-each>
				</ul>
				<ul>
					<xsl:for-each select="cons">
					<li>
						<span class="con"><xsl:value-of select="con"/></span>
						<span class="fly"><xsl:value-of select="reason"/></span>
					</li>
					</xsl:for-each>
				</ul>
			</li>
			</xsl:for-each>
		</ul>
		
		<br /><br /><br /><br /><br /><br /><br />
	</div>

	<div id="footer">
		<a href="http://www.ucf.edu/">
			<span id="logo">
				<img src="images/ucfsw.png" alt="UCF Logo"/>
				<span id="text">University of Central Florida Student Website</span>
			</span>
		</a>
	</div>

</body>
</html>
</xsl:template>
</xsl:stylesheet>