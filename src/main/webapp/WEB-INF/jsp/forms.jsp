<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <script type="text/javascript">
        $(function(){
            $('.del').on('click',function(){
                return confirm('Вы действительно хотите удалить анкету?');
            });
            $( ".datepicker" ).datepicker({
                showOtherMonths: true,
                selectOtherMonths: true,
                changeMonth: true,
                changeYear: true,
                dateFormat: "yy-mm-dd"

            });
            $('#check').on('click',function() {
                $('.checkbox').attr('checked',this.checked);
            });
            $('#clear').on('click',function() {
                $('#clear_val').attr('value','1');
                $('#form').submit();
            });
        });
    </script>
</head>
<body>
        <!-- Box -->
        <div class="box">
            <!-- Box Head -->
            <spring:url value="/" var="postUrl" />
            <form:form method="get" action="${postUrl}">
                <input type="hidden" name="clear" id="clear_val" value="" />
                <div class="box-head">
                <h2 class="left">Список анкет</h2>
                <div class="right">
                    <label>текст:</label>
                    <input type="text" name="text" value="${search.text}" class="field small-field" />
                    <label>&nbsp;&nbsp;с:&nbsp;</label>
                    <input type="text" name="from" value="${search.from}" class="field small-field datepicker" />
                    <label>&nbsp;по:&nbsp;</label>
                    <input type="text" name="to" value="${search.to}" class="field small-field datepicker" />
                    <label>&nbsp;новые:&nbsp;</label>
                    <input type="checkbox" name="not_reg" value="1"<c:if test="${not empty search.not_reg}"> checked="checked" </c:if> class="field small-field" />
                    <input type="submit" class="button" value="поиск" />
                    <input type="submit" id="clear" class="button" value="сброс" />
                </div>
            </div>
            </form:form>
            <!-- End Box Head -->

            <c:choose>
            <c:when test="${!empty formsList}">
            <!-- Table -->
            <div class="table">
                <table width="99%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <th width="13"><input type="checkbox" id="check" /></th>
                        <th><a href="<spring:url value="/" />?sort=added<c:if test="${empty dir}">&dir=desc</c:if>">Дата добавления</a></th>
                        <th><a href="<spring:url value="/" />?sort=surname<c:if test="${empty dir}">&dir=desc</c:if>">Фамилия</a></th>
                        <th><a href="<spring:url value="/" />?sort=name<c:if test="${empty dir}">&dir=desc</c:if>">Имя</a></th>
                        <th><a href="<spring:url value="/" />?sort=passnum<c:if test="${empty dir}">&dir=desc</c:if>">Номер паспорта</a></th>
                        <th><a href="<spring:url value="/" />?sort=registered<c:if test="${empty dir}">&dir=desc</c:if>">Результат</a></th>
                        <th width="50" class="ac">контроль</th>
                    </tr>
                    <c:forEach items="${formsList}" var="form">
                        <tr>
                            <td width="13"><input type="checkbox" class="checkbox" /></td>
                            <td<c:if test="${form.is_registered}"> class="reged"</c:if>><fmt:formatDate dateStyle="full" pattern="dd.MM.yyyy HH:mm" value="${form.added}"/></td>
                            <td<c:if test="${form.is_registered}"> class="reged"</c:if>>${form.surname_1}</td>
                            <td<c:if test="${form.is_registered}"> class="reged"</c:if>>${form.name_3}</td>
                            <td<c:if test="${form.is_registered}"> class="reged"</c:if>>${form.passnum_13}</td>
                            <td<c:if test="${form.is_registered}"> class="reged"</c:if>><c:if test="${form.is_registered}">готово</c:if></td>
                            <td<c:if test="${form.is_registered}"> class="reged"</c:if>><a href="edit/${form.id}" class="ico edit">x</a> <a href="delete/${form.id}"  class="ico del">x</a></td>
                        </tr>
                    </c:forEach>
                </table>


                <!-- Pagging 
                <div class="pagging">
                    <div class="left">Showing 1-12 of 44</div>
                    <div class="right">
                        <a href="#">Previous</a>
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">245</a>
                        <span>...</span>
                        <a href="#">Next</a>
                        <a href="#">View all</a>
                    </div>
                </div>
                -->

            </div>
            <!-- Table -->

            </c:when>
                <c:otherwise>
                    <div style="margin:20px;"><b>Ничего не найдено</b></div>
                </c:otherwise>
            </c:choose>

        </div>
        <!-- End Box -->

</body>