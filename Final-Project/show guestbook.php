<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>Guestbook</title>
	<link href="css/header.css" rel="stylesheet" type="text/css" />
	<link href="css/menu.css" rel="stylesheet" type="text/css" />
	<link href="css/body.css" rel="stylesheet" type="text/css" />
	<script src="validate.js" type="text/javascript"></script>
</head>

<body>
	<div id="left">
		<img src="images/open logo.png" alt="Simply a lock" width="195" id="openlogo"/>

		<img src="images/guestbook.png" alt="current page" id="current"/>

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
		<a name="top" style="font-weight: bold;">Contact Me</a>
		<div>
			Since I actually plan on using this site in the future, here are a few ways of getting in contact with me.
			<br /><br />
			Now, I hope that I don't get any spam because my email is out there, but in case I do,
			<a href="http://gmailblog.blogspot.com/2007/10/how-our-spam-filter-works.html">Gmail's spam filter is rather robust</a>,
			so I'm not too worried about it.
			<br /><br />
			The thing I AM worried about, is that some people might decided to create... distasteful... guestbook entries.
			<br />
			<img src="images/contact me.png" alt="phone in a can!" width="243"
				style="float: right; margin: 0 5px;"/>
			<br />
			I <span class="u">will</span> implement a captcha and ban system if I have to (holy cookies and blacklists batman!), 
			but	I'd like to think that people are mature enough most of the time for me to not have to do that.
			<br /><br /><hr />
		</div>

		<a name="email" style="font-weight: bold;">My primary email address</a>
		<div>
			roscoejp@aol.com
			<br /><br /><hr />
		</div>

		<a name="snail" style="font-weight: bold;">Mailing address (not my premanent address)</a>
		<div>
			Roscoe Pyell
			<br />
			West Plaza Mail Center #661259
			<br />
			4000 Central Florida Blvd
			<br />
			Orlando, FL 32816
			<br /><br /><hr />
		</div>

		<a name="guestbook" style="font-weight: bold;">Guestbook</a>
		<br />
		<div style="width: 350px; float: right; margin-top: 45px;">
			And then there's always the guestbook...
			<br />
			Just fill out the form on the left and click submit.
			<br />
			Once submitted, your information will be stored and I'll be able to read anything you've
			written in the fields!
			<br />
			Or you can always just click the 'show guestbook' button to see what other people
			have to say about the site!
		</div>

		<form id="form" action="guestbook.php" method="post" onsubmit="return validate();"
			style="width: 375px; padding: 5px; background: url('images/gbook form.png') no-repeat;" >
			<div id="name" style="float: left; margin-left: 20px;">
				<input type="text" name="firstname" value="First Name" id="firstname"
					onfocus="if(this.value==this.defaultValue)this.value='';"
					onblur="if(this.value=='')this.value=this.defaultValue;" 
					onchange="this.value=this.value.charAt(0).toUpperCase() + this.value.slice(1);" /><br />
				<input type="text" name="lastname" value="Last Name"  id="lastname"
					onfocus="if(this.value==this.defaultValue)this.value='';"
					onblur="if(this.value=='')this.value=this.defaultValue;" 
					onchange="this.value=this.value.charAt(0).toUpperCase() + this.value.slice(1);" />
			</div>
			<div>
				<input type="text" name="email" value="Email" id="email"
					onfocus="if(this.value==this.defaultValue)this.value='';"
					onblur="if(this.value=='')this.value=this.defaultValue;" />
			</div>

			<table id="occupation" style="text-align: left; clear: left; float: left;">
				<caption>Occupation(s)</caption>
				<tr>
					<td><input type="checkbox" name="occupation[]" value="student" id="occ0" /></td>
					<td>student</td>
					<td><input type="checkbox" name="occupation[]" value="professor" id="occ1" /></td>
					<td>professor</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="occupation[]" value="employer" id="occ2" /></td>
					<td>employer</td>
					<td>
						<input type="checkbox" name="occupation[]" value="other" id="occ3"
							onchange="document.getElementById('othertext').disabled=!(this.checked);" />
					</td>
					<td>
						<input type="text" name="occupations" value="Other" id="othertext"
							onfocus="if(this.value==this.defaultValue)this.value='';"
							onblur="if(this.value=='')this.value=this.defaultValue;"
							disabled="disabled" style="width: 90px;" />
					</td>
				</tr>
			</table>

			<div id="input">
				<table id="opinion" style="float: right;">
					<caption>Opinion</caption>
					<tr>
						<td><input type="radio" name="opinion" value="1" id="radio" /></td>
						<td>Like the site!</td>
					</tr>
					<tr>
						<td><input type="radio" name="opinion" value="0" id="radio1" /></td>
						<td>Don't like the site.</td>
					</tr>
				</table>
				<textarea id="comment" cols="32" rows="5" name="comment"
					onfocus="if(this.value==this.defaultValue)this.value='';"
					onblur="if(this.value=='')this.value=this.defaultValue;">Leave a comment!</textarea>
			</div>

			<div id="buttons">
				<input id="reset" type="reset" value="clear"
					onclick="document.getElementById('othertext').disabled=true;" />
				<input id="submit" type="submit" value="submit" 
					onclick="document.getElementById('occ3').value=document.getElementById('othertext').value;" />
			</div>
		</form>
		
		<hr />
		Look Who's been here!

		<?php
			//connect to db
			$dbc = mysql_connect('localhost', 'ro887178', 'P890203') or die("Can't connect to database.\nTry again or contact the system administrator.");
			$selected = mysql_select_db("ro887178_db",$dbc) or die("Could not select database.\nTry again or contact the system administrator.");
			
			//query db
			$q = mysql_query("SELECT * FROM guestbook") or die("An error occurred. Please contact the system administrator and include the following information:\n".mysql_error());
			
			//print table header
			echo"
			<table border=\"1\">
			<tr style=\"background-color: #AD0000; color: #FFFFFF; text-transform: uppercase;\">
				<th>first name</th>
				<th>last name</th>
				<th>occupation</th>
				<th>opinion</th>
				<th>comment</th>
				<th>date</th>
			</tr>";
			
			//print table rows
			$rownum = 1;
			while($row = mysql_fetch_array($q)) {
			extract($row);
			if($rownum%2)							//alternating row colors
				echo"<tr>";
			else
				echo"<tr style=\"background-color: #C7C7C7;\">";
			$rownum++;
			echo"<td>$firstname</td>
				<td>$lastname</td>
				<td>$occupation</td>
				<td>";
				if($opinion) echo"Loved the site!";	//changes opinion to text
				else echo"Not to thrilled with the site.";
				echo"</td>
				<td>$comment</td>
				<td>$date</td>
			</tr>";
			}
			echo"</table>";
			echo"<br /><br /><br /><br /><br />";
			
			//close db connection
			mysql_close($dbc);
		?>
		
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