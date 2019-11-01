<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>I18N</title>
</head>
<body>
	View Website in:
	<a href="?locale=pt_PT"> PORTUGUESE</a>
	<a href="?locale=en_EN"> ENGLISH</a>
	<a href="?locale=nl_NL"> DUTCH</a>
	<a href="?locale=ro_RO"> ROMANIAN</a>
	<br />
	<hr />
	<fmt:setLocale value="${param.locale}"/>
	<fmt:bundle basename="org.light.i18n/website">
		<p>
			<fmt:message key="label.hello">Jonh,</fmt:message>
		<p>
			<fmt:message key="label.welcome" />
		<p>
			<fmt:message key="label.message" />
		<p>
			<fmt:message key="label.thankyou" />
	</fmt:bundle>

<br/>
<p>Locale : ${param.locale}
</body>
</html>