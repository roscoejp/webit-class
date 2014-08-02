<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>

<!--Guestbook page for E-portfolio
	Author: Roscoe Pyell
	update: November 1 2010-->
	
<head>
	<title>Roscoe Pyell's E-Portfolio</title>
	<link rel="stylesheet" type="text/css" href="CSS/header.css" />
	<link rel="stylesheet" type="text/css" href="CSS/contentplus.css" />
	<link rel="stylesheet" type="text/css" href="CSS/form.css" />
	<script type="text/javascript" src="validate.js"></script>
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
				<li style="background-color: #CFCFCF;">
					<a href="#top">TOP</a>
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
				GUEST BOOK
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
			<h1 style="text-align: center; padding: 10px;">VISITORS</h1>
			<hr />

			<!--BEGIN FORM-->
			<form id="form" class="form" onsubmit="return validate();" name="myform" method="post"
			action="http://www.cs.ucf.edu/courses/cgs3175/fall2008/forms/phpformprocessor.php"> 

			<div id="location" name="location"><!--Location fields-->
				<input id="phone" type="text" name="phone" value="Phone Number"
				onfocus="if(this.value==this.defaultValue)this.value='';" 
				onblur="if(this.value=='')this.value=this.defaultValue;"/>
				<br />
				<input id="email" type="text" name="email" value="email"
				onfocus="if(this.value==this.defaultValue)this.value='';" 
				onblur="if(this.value=='')this.value=this.defaultValue;"/>
				<br />

				<select name="class" size="0">
					<option value="" disabled="disabled">Select a State</option> 
					<option value="AL">Alabama</option> 
					<option value="AK">Alaska</option> 
					<option value="AZ">Arizona</option> 
					<option value="AR">Arkansas</option> 
					<option value="CA">California</option> 
					<option value="CO">Colorado</option> 
					<option value="CT">Connecticut</option> 
					<option value="DE">Delaware</option> 
					<option value="DC">District Of Columbia</option> 
					<option value="FL">Florida</option> 
					<option value="GA">Georgia</option> 
					<option value="HI">Hawaii</option> 
					<option value="ID">Idaho</option> 
					<option value="IL">Illinois</option> 
					<option value="IN">Indiana</option> 
					<option value="IA">Iowa</option> 
					<option value="KS">Kansas</option> 
					<option value="KY">Kentucky</option> 
					<option value="LA">Louisiana</option> 
					<option value="ME">Maine</option> 
					<option value="MD">Maryland</option> 
					<option value="MA">Massachusetts</option> 
					<option value="MI">Michigan</option> 
					<option value="MN">Minnesota</option> 
					<option value="MS">Mississippi</option> 
					<option value="MO">Missouri</option> 
					<option value="MT">Montana</option> 
					<option value="NE">Nebraska</option> 
					<option value="NV">Nevada</option> 
					<option value="NH">New Hampshire</option> 
					<option value="NJ">New Jersey</option> 
					<option value="NM">New Mexico</option> 
					<option value="NY">New York</option> 
					<option value="NC">North Carolina</option> 
					<option value="ND">North Dakota</option> 
					<option value="OH">Ohio</option> 
					<option value="OK">Oklahoma</option> 
					<option value="OR">Oregon</option> 
					<option value="PA">Pennsylvania</option> 
					<option value="RI">Rhode Island</option> 
					<option value="SC">South Carolina</option> 
					<option value="SD">South Dakota</option> 
					<option value="TN">Tennessee</option> 
					<option value="TX">Texas</option> 
					<option value="UT">Utah</option> 
					<option value="VT">Vermont</option> 
					<option value="VA">Virginia</option> 
					<option value="WA">Washington</option> 
					<option value="WV">West Virginia</option> 
					<option value="WI">Wisconsin</option> 
					<option value="WY">Wyoming</option>
				</select>
			</div>						<!--END location fields-->

			<div id="name">				<!--Name fields-->
				<input type="text" name="firstname" value="First Name"
				onfocus="if(this.value==this.defaultValue)this.value='';" 
				onblur="if(this.value=='')this.value=this.defaultValue;"/>
				<br />
				<input type="text" name="lastname" value="Last Name"
				onfocus="if(this.value==this.defaultValue)this.value='';" 
				onblur="if(this.value=='')this.value=this.defaultValue;"/>
			</div>						<!--END name fields-->

			<div id="opinion">			<!--Opinion field-->
				Opinion:<br />
				<input type="radio" name="opinion" value="good-site" />
				<span>I like the site!</span><br />
				<input type="radio" name="opinion" value="bad-site" />
				<span>Make it better!</span><br />		
			</div>						<!--END opinion-->

			<table id="occupation">		<!--Occupation field-->
				<caption>Occupation:</caption>
				<tr>
					<td>
						<input type="checkbox" name="student" value="on" />
						student
					</td>
					<td>
						<input type="checkbox" name="employer" value="on" />
						employer<br />
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" name="instructor" value="on" />
						instructor
					</td>
					<td>
						<input type="checkbox" name="other" value="on" />
						other
					</td>
				</tr>
			</table>					<!--END occupation (lawl)-->

			<div id="buttons">			<!--buttons-->
				<input id="reset" type="reset" value="clear" onlick="validate();return false;"/><br />
				<input id="submit" type="submit" value="submit" />
			</div>

			<textarea id="textarea" cols="32"
			onfocus="if(this.value==this.defaultValue)this.value='';" 
			onblur="if(this.value=='')this.value=this.defaultValue;"
			rows="5" name="comment">Leave a comment!</textarea>

			</form>	
			<!--END FORM-->
				
			<div style="width: 400px; margin: 30px 20px;" id="test">
				<h1 style = "color: #979797; font-size: 1.5em;">I'M LISTENING</h1><br />
				This is the guestbook. If you've looked around the site, and you like
				what you've seen or you have something you'd like to say... leave a 
				comment!<br /><br />
				Even if you didn't like what you've found, let me know and I'll get
				adound to changing it... sometime (I'm in a bit of a time crunch
				what with classes and work... so I won't be updating this site much
				more than once a month).<br /><br />
			</div>
			
			<div style="width: 900px; margin: 30px; text-align: center;">
				<hr />This section is currently undergoing construction to add 
				additional features.
				<img src="images/under-construction.jpg" style="margin: 0 250px;"
				width="395px" alt="work in progress" />
			</div>
			
			<!--need php script on form to update guestbook.xml-->
			<!--XSLT			
			<table border="1" style="margin: 70px 50px 0 50px; width: 872px;">
				<caption style="text-align: left; font-size: 1.1em;">
					Look who else has been here!
				</caption>
				<tr bgcolor="#007506">
					<th>Last Name</th>
					<th>First Name</th>
					<th>Opinion</th>
					<th>Occupation</th>
				</tr>
				<xsl:for-each select="guestbook/guest">
				<tr>
					<td><xsl:value-of select="last_name"/></td>
					<td><xsl:value-of select="first_name"/></td>
					<td><xsl:value-of select="opinion"/></td>
					<td><xsl:value-of select="occupation"/></td>
				</tr>
				</xsl:for-each>
			</table>
			END XSLT-->

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