<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css"></style>
<link rel="stylesheet" href="scripts/main.css">
<body marginwidth="0" marginheight="0" bgcolor="#ffffff" leftmargin="0" topmargin="0">
<table background="images/masthead.gif" border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr height="135">
<td valign="top" height="135"><img alt="" src="images/masthead-special.gif" border="0" width="1260" height="135"></td></tr>
<tr height="138">
<td valign="top" height="138">
<div id="fb-root"></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td background="images/left-bar.gif" valign="top" width="233">&nbsp;<br>
<br><br>
<table border="0" cellpadding="0" cellspacing="0" width="180" height="315">
<tbody>
<tr height="45">
<td background="images/swirl.gif" width="170" height="45">
<div align="center"><font color="#cc6666" face="Verdana" size="3"><strong><a class="menu" href="index.html">home</a></strong></font></div></td></tr>
<tr height="45">
<td background="images/swirl.gif" width="170" height="45">
<div align="center"><font color="#cc6666" face="Verdana" size="3"><strong><a class="menu" href="directions.html">directions</a></strong></font></div></td></tr>
<tr height="45">
<td background="images/swirl.gif" width="170" height="45">
<div align="center"><font color="#cc6666" face="Verdana" size="3"><strong><a class="menu" href="menu.html">food for your belly</a></strong></font></div></td></tr>
<tr height="45">
<td background="images/swirl.gif" width="170" height="45">
<div align="center"><font color="darkblue" face="Verdana" size="3"><strong>specials</strong></font></div></td></tr>
<tr height="45">
<td background="images/swirl.gif" width="170" height="45">
<div align="center"><font color="#cc6666" face="Verdana" size="3"><strong><a class="menu" href="about_us.html">about us</a></strong></font></div></td></tr>
<tr height="45">
<td align="center" background="images/swirl.gif" valign="middle" width="170" height="45"><font color="#cc6666" face="Verdana" size="3"><strong><a class="menu" href="events.html">events</a></strong></font></td></tr>
<tr height="45">
<td align="center" background="images/swirl.gif" valign="middle" width="170" height="45"><font color="#cc6666" face="Verdana" size="3"><strong><a class="menu" href="the_scoop.html">food for thought</a></strong></font></td></tr>
<tr height="45">
<td align="center" background="images/swirl.gif" valign="middle" width="170" height="45"><font color="#cc6666" face="Verdana" size="3"><strong><a class="menu" href="gallery.html">photo gallery&nbsp; <br>
</a></strong></font></td></tr></tbody></table><br>
<div align="left">
<p>&nbsp;&nbsp;<img alt="" src="images/tape-specials-board.gif" border="0" width="162" height="138"><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br></p></div></td>
<td bgcolor="white" valign="top" width="420">
<table border="0" cellpadding="0" cellspacing="0" width="180">
<tbody>
<tr height="500">
<td valign="top" height="500">
<div align="center">
<font size="5"><strong><font color="#cc6666" face="Verdana">TODAY'S SPECIALS
</font></strong></font>
<br />
<br />
</div>
<div class="blogPost" align="center">
	<div id="specialsDisplay">
		<c:forEach var="special" items="${requestScope.allActiveSpecials}" >
		<c:choose>
			<c:when test="${special.specialEntryType == 'SOUP'}">
				<div id="soupEntries">
					<c:out value="${special.name}" />
					<br />
				</div>
			</c:when>
			<c:otherwise>
				<div id="allSpecialEntries" >
					<table id="nameAndPriceTable" border="0">
					<tr>
						<td style="text-align:left">
							<span id="SpecialEntryName">
							<font color="#cc6666" face="Verdana" size="4.5">
								<b>
									<c:out value="${special.name}" />
								</b> 
							</font>
							</span>
						</td>
						<td style="text-align:right">
						<font color="#cc6666" face="Verdana" size="4.5">
							<b>
							&nbsp;&nbsp;<c:out value="${special.price}" />
							</b>
						</font>
						</td>
					</tr>
					</table>
				<span id="specialDescription"  style="font-size : 1em;">
					<c:out value="${special.description}" />
				</span>
				<br />
				</div>
			</c:otherwise>
		</c:choose>
		</c:forEach>
	</div>
</div>
<div align="center"><font size="5"><strong>
<div align="center"><font face="Verdana">
<p align="center"><font face="Times">~*~<br>
</font><span style="font-family: Times">WE DELIVER TO THE MAIN STREET AREA<br>
</span><span style="font-family: Times">~*~</span></p>
<p align="center"><span style="font-family: Times">&quot;Dinner Specials&quot;<br>
Buy One Get One 1/2 OFF!</span></p>
<p align="center"><span style="font-family: Times">
Every Thursday Night for all of October.<br>
Please visit Google Places for details:</span></p></font>
<p align="center"><font face="Verdana"><span style="font-family: Times"><a href="http://maps.google.com/coupons/page?oi=lbc&amp;did=0_7725756512831010228&amp;cid=5QPCHBEXMP86TUY5&amp;hl=en-US&amp;gl=US">Shaker Cafe Coupons</a><a href="http://maps.google.com/coupons/page?oi=lbc&amp;did=0_7725756512831010228&amp;cid=5QPCHBEXMP86TUY5&amp;hl=en-US&amp;gl=US">&nbsp;<br>
</a></span><span style="font-family: Times">~~**~~</span></font></p>
<p align="center"><font face="Times"><span style="font-size: 16px; font-weight: normal">OPEN FOR BREAKFAST SUNDAYS<br>
 all year<br>
8:00 AM&nbsp; TO&nbsp; 1:00&nbsp; PM<br>
</span><span style="font-size: 16px; font-weight: normal">~*~</span><span style="font-size: 16px; font-weight: normal"><br>
</span></font></p>
<p align="center"><font face="Times"><span style="font-size: 16px; font-weight: normal">DINNERS ON THURSDAY<br>
5:00 to 8:30 pm<br>
</span></font></p>
<p align="center"><font face="Times"><span style="font-size: 16px; font-weight: normal">AND FRIDAY NIGHTS<br>
5:00 to 9:00pm</span></font></p>
<p align="center"><font face="Times"><span style="font-size: 16px; font-weight: normal"></span><span style="font-size: 16px; font-weight: normal">~*~</span><span style="font-size: 16px; font-weight: normal"><br>
</span></font></p>
<p align="center"><font face="Times"><span style="font-size: 16px; font-weight: normal"></span><span style="font-size: medium; font-weight: normal"><span style="font-size: x-large">Open Thanksgiving 2010<br>
</span></span>8:00 to 1:00 pm<br>
</font></p></div></strong></font></div></td></tr>
<tr height="135">
<td valign="bottom" height="135">
<div align="center">
<div style="text-align: center; width: 134px; font-family: arial,helvetica,sans-serif; font-size: 10px"><a href="http://www.urbanspoon.com/r/53/1126323/restaurant/North-Jersey/Shaker-Cafe-Flemington"><img style="width: 134px; height: 48px; border: medium none" alt="Shaker Cafe" src="http://www.urbanspoon.com/b/o_rank/1126323.gif" width="134" height="48"></a>
<div style="margin: 0pt; padding: 0pt"><a href="http://www.urbanspoon.com/r/53/1126323/restaurant/North-Jersey/Shaker-Cafe-Flemington">Shaker Cafe on Urbanspoon</a></div></div></div>
<p align="center">&nbsp;</p><br>
</td></tr>
<tr height="135">
<td valign="bottom" height="135">
<div align="center">
<fb:like-box header="false" stream="false" height="200" width="250" profile_id="120673981278652"></fb:like-box></div>
<div align="center">
<p><br>
<br><img alt="" src="images/shakers-bottom.gif" border="0" width="550" height="64"><br>
<br><font face="Verdana" size="2">Shaker Cafe<br>
31 Main St., Flemington, NJ 08822<br>
908-782-6610<br>
</font><font face="Verdana" size="2"><a href="">www.shakercafe.com</a><br>
<a href="mailto:info@shakercafe.com">info@shakercafe.com</a><br>
</font></p></div></td></tr></tbody></table></td><!--- Initialize root facebook element with JavaScript JDK --->
<script>
window.fbAsyncInit = function() {
FB.init({appId: '157001977653518', status: true, cookie: true,
xfbml: true}); };
(function() {
var e = document.createElement('script');
e.type = 'text/javascript';
e.src = document.location.protocol + '//connect.facebook.net/en_US/all.js';
e.async = true;
document.getElementById('fb-root').appendChild(e);
}());
</script>
<td background="images/specials-side.gif">&nbsp;</td></tr></tbody></table></td></tr></tbody></table>
</body>
</html>