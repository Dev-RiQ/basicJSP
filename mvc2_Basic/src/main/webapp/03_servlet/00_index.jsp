<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="jakarta.tags.core" prefix="c"%>


<c:set var="contextPath" value="${ pageContext.request.contextPath }" />

<script>
	location.href="${contextPath}/join.do";	
</script>
