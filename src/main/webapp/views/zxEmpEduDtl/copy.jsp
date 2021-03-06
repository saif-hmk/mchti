<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<tiles:insertDefinition name="defaultTemplate"/>

<tiles:putAttribute name="header">
    <jsp:include page="../layouts/header.jsp"/>
</tiles:putAttribute>

<tiles:putAttribute name="menu">
    <jsp:include page="../layouts/menu.jsp"/>
</tiles:putAttribute>

<div class="box box-primary">
    <div class="box-body">
<tiles:putAttribute name="body">

    <title><spring:message code="project.title.copy" text="Copy"/></title>

    <div class="btn-group">
        <a href="${pageContext.request.contextPath}/zxEmpEduDtl/index"><spring:message code="list.link.label"/>&NonBreakingSpace;<spring:message code="zxEmpEduDtl" text="ZxEmp Edu Dtl"/></a> |
        <a href="${pageContext.request.contextPath}/zxEmpEduDtl/create"><spring:message code="create.link.label"/>&NonBreakingSpace;<spring:message code="zxEmpEduDtl" text="ZxEmp Edu Dtl"/></a>
    </div>
    
    <h1><spring:message code="copy.page.title"/></h1>
    
    <div>
        <form:form action="${pageContext.request.contextPath}/zxEmpEduDtl/copy/${zxEmpEduDtl.id}" enctype="multipart/form-data" commandName="zxEmpEduDtl" method="POST">
        <jsp:include page="_form.jsp"/>
        <div>
            <a href="${pageContext.request.contextPath}/zxEmpEduDtl/show/${zxEmpEduDtl.id}"><spring:message code="show.link.label"/></a>
            <input type="submit" value="<spring:message code="copy.page.submit.label"/>"/>
        </div>
        </form:form>
    </div>
    
</tiles:putAttribute>  

        <div class="box-footer">
            <tiles:putAttribute name="footer">
                <jsp:include page="../layouts/footer.jsp"/>
            </tiles:putAttribute>  
        </div>
    </div>