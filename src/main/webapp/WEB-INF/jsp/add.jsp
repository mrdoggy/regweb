<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Форма регистрации</title>
    <script type="text/javascript" src="<spring:url value="/js/validation.js" />"></script>
    <script type="text/javascript" src="<spring:url value="/js/moment.min.js" />"></script>
    <script type="text/javascript" src="<spring:url value="/js/moment_ru.js" />"></script>
    <script type="text/javascript" src="<spring:url value="/js/clndr.min.js" />"></script>
    <script type="text/javascript" src="<spring:url value="/js/underscore-min.js" />"></script>
    <script type="text/javascript" src="<spring:url value="/js/types.js" />"></script>
    <link type="text/css" href="<spring:url value="/css/clndr.css" />" rel="stylesheet" />

    <script type="text/javascript">

        moment.locale('ru');

        var eventsArray = [];

        $(function() {
            $( ".datepicker" ).datepicker({
                showOtherMonths: true,
                selectOtherMonths: true,
                changeMonth: true,
                changeYear: true,
                dateFormat: "yy-mm-dd"

            });
            $("#ctl00_cp_f_opiekunowie_chkNieDotyczy").on('click',function(){
                if (this.checked) {
                    check_children(false);
                } else {
                    check_children(true);
                }
            });
            $("#ctl00_cp_f_chkNieDotyczy43").on('click',function(){
                if (this.checked) {
                    check_es(false);
                } else {
                    check_es(true);
                }
            });

            $("#more_children").on('click',function(){
                $('#more_children_table').show();
            });
            $("#ctl00_cp_f_ctrl31__rbl34_1").on('click',function() {
                check_inv1();
            });
            $("#ctl00_cp_f_ctrl31__rbl34_2").on('click',function() {
                check_inv2();
            });
            if ($("#ctl00_cp_f_opiekunowie_chkNieDotyczy").attr("checked")) {
                check_children(false);
            }
            if ($("#ctl00_cp_f_ctrl31__rbl34_1").attr("checked")) {
                check_inv1();
            }
            if ($("#ctl00_cp_f_ctrl31__rbl34_2").attr("checked")) {
                check_inv2();
            }
            $('#copy').on('click',function() {
                $('#copy_val').attr('value','1');
                $('#aspnetForm').submit();
            });
            $("#cp_f_chk18Bezterminowo").on("click",function() {
               if ($("#cp_f_chk18Bezterminowo").prop("checked")) {
                   $("#ctl00_cp_f_txt18bDataWaznosci").attr("disabled","disabled");
               } else {
                   $("#ctl00_cp_f_txt18bDataWaznosci").removeAttr("disabled");
               }
            });
        });

        function check_children(enable) {
            if (enable) {
                $('#ctl00_cp_f_opiekunowie_cbObywatelstwo1').removeAttr("disabled");
                $('#ctl00_cp_f_opiekunowie_txtImie1').removeAttr("disabled");
                $('#ctl00_cp_f_opiekunowie_txtNazwisko1').removeAttr("disabled");
                $('#ctl00_cp_f_opiekunowie_cbPanstwo1').removeAttr("disabled");
                $('#ctl00_cp_f_opiekunowie_txtStanProwincja1').removeAttr("disabled");
                $('#ctl00_cp_f_opiekunowie_txtMiejscowosc1').removeAttr("disabled");
                $('#ctl00_cp_f_opiekunowie_txtKod1').removeAttr("disabled");
                $('#ctl00_cp_f_opiekunowie_txtAdres1').removeAttr("disabled");
                $('#more_children').removeAttr("disabled","disabled");
            } else {
                $('#ctl00_cp_f_opiekunowie_cbObywatelstwo1').attr("disabled","disabled");
                $('#ctl00_cp_f_opiekunowie_txtImie1').attr("disabled","disabled");
                $('#ctl00_cp_f_opiekunowie_txtNazwisko1').attr("disabled","disabled");
                $('#ctl00_cp_f_opiekunowie_cbPanstwo1').attr("disabled","disabled");
                $('#ctl00_cp_f_opiekunowie_txtStanProwincja1').attr("disabled","disabled");
                $('#ctl00_cp_f_opiekunowie_txtMiejscowosc1').attr("disabled","disabled");
                $('#ctl00_cp_f_opiekunowie_txtKod1').attr("disabled","disabled");
                $('#ctl00_cp_f_opiekunowie_txtAdres1').attr("disabled","disabled");
                $('#more_children').attr("disabled","disabled");
            }
        }
        function check_inv1() {
            $('#ctl00_cp_f_ctrl31__txt34Nazwa').attr("disabled","disabled");
            $('#ctl00_cp_f_ctrl31__txt34Imie').removeAttr("disabled");
            $('#ctl00_cp_f_ctrl31__txt34Nazwisko').removeAttr("disabled");
        }
        function check_inv2() {
            $('#ctl00_cp_f_ctrl31__txt34Nazwa').removeAttr("disabled");
            $('#ctl00_cp_f_ctrl31__txt34Imie').attr("disabled","disabled");
            $('#ctl00_cp_f_ctrl31__txt34Nazwisko').attr("disabled","disabled");
        }
        function ZbindujPanstwa() {
            return null;
        }
        function check_es(enable) {
            if (enable) {
                $('#ctl000_cp_f_txt43Nazwisko').removeAttr("disabled");
                $('#ctl000_cp_f_txt43Imie').removeAttr("disabled");
                $('#ctl000_cp_f_txt43DataUrodzenia').removeAttr("disabled");
                $('#ctl000_cp_f_txt43Paszport').removeAttr("disabled");
                $('#ctl000_cp_f_ddl43Obywatelstwo').removeAttr("disabled");
                $('#ctl000_cp_f_rbl43_1').removeAttr("disabled");
                $('#ctl000_cp_f_rbl43_2').removeAttr("disabled");
                $('#ctl000_cp_f_rbl43_3').removeAttr("disabled");
                $('#ctl000_cp_f_rbl43_4').removeAttr("disabled");
            } else {
                $('#ctl000_cp_f_txt43Nazwisko').attr("disabled","disabled");
                $('#ctl000_cp_f_txt43Imie').attr("disabled","disabled");
                $('#ctl000_cp_f_txt43DataUrodzenia').attr("disabled","disabled");
                $('#ctl000_cp_f_txt43Paszport').attr("disabled","disabled");
                $('#ctl000_cp_f_ddl43Obywatelstwo').attr("disabled","disabled");
                $('#ctl000_cp_f_rbl43_1').attr("disabled","disabled");
                $('#ctl000_cp_f_rbl43_2').attr("disabled","disabled");
                $('#ctl000_cp_f_rbl43_3').attr("disabled","disabled");
                $('#ctl000_cp_f_rbl43_4').attr("disabled","disabled");
            }

        }

        function checkRoboSubmit() {
            var res = true;
            if ($("#city").val() == "") {
                res = false;
                $("#city_err").show();
            }
            if ($("#type").val() == "") {
                res = false;
                $("#type_err").show();
            }
            return res;
        }

    </script>
</head>
<body>


<spring:url value="/addform" var="postUrl" />
<c:choose>
<c:when test="${empty sessionScope.SPRING_SECURITY_CONTEXT.authentication.principal.username}">
<spring:url value="/addnewacc" var="postUrl" />
<div class="box">
    <div class="box-head">
        <h2>Незарегистрированный пользователь</h2>
    </div>
    <div style="padding:20px;font-size:16px;line-height:25px;"><b>Внимание!</b> После добавления анкеты вам на электронную почту будут отправлены автоматически сгенерированный логин и пароль для доступа к вашей анкете. У вас будет возможность войти в защищенную зону для того, чтобы отредактировать анкету, либо добавить новые анкеты.</div>
</div></c:when>
    <c:otherwise>




    </c:otherwise>
</c:choose>

<form:form method="post" action="${postUrl}" commandName="form" name="aspnetForm"  id="aspnetForm" onsubmit="javascript:return WebForm_OnSubmit();">
    <form:hidden path="id" />
    <input type="hidden" name="copy" id="copy_val" value="" />
    <form:hidden path="blocked_days" />
    <script type="text/javascript">
        if ($("#blocked_days").val() != "") {
            var datesArray = JSON.parse($("#blocked_days").val());
            eventsArray = [];
            for (i=0;i<datesArray.length;i++) {
                eventsArray.push({date: moment(datesArray[i].date)});
            }
            calendarInstance.setEvents(eventsArray);
        }
    </script>
    <div class="box">
        <div class="box-head">
            <h2>Выбор цели и города</h2>
        </div>
        <div style="padding: 20px">
            <div id="city_err" class="errors hide">Поле Город подачи для обязательного заполнения </div>
            <div class="errors"><form:errors path="city" /></div>

            Город подачи: <select name="city" id="city">
                <option value="">=======</option>
                <option value="minsk"<c:if test="${form.city eq 'minsk'}"> selected="selected" </c:if>> Минск</option>
                <option value="brest"<c:if test="${form.city eq 'brest'}"> selected="selected" </c:if>>Брест</option>
                <option value="grodno"<c:if test="${form.city eq 'grodno'}"> selected="selected" </c:if>>Гродно</option>
            </select> <input type="hidden" name="city_hid" id="city_hid" value="${form.city}" /><br /><br />
            <div id="type_err" class="errors hide">Поле Тип для обязательного заполнения </div>
            <div class="errors"><form:errors path="type" /></div>
            Тип: <select name="type" id="type">
                <option value="">=======</option>
            </select> <input type="hidden" name="type_hid" id="type_hid" value="${form.type}" />
        </div>
    </div>
    <script type="text/javascript">
        $("#city").on('change',function() {
            $("#type").empty();
            $("#type").append('<option value="">=========</option>');
            if ($(this).val() != "") {
                for (var key in types[$(this).val()]) {
                    $("#type").append('<option value="'+key+'">' + types[$(this).val()][key] + '</option>');
                }
                if ($("#type_hid").val()!="") {
                    $("#type").val($("#type_hid").val());
                }
            }
        });
        if ($("#city").val()!="") {
            $("#city").change();
        }
        $("#type").on('change',function() {
            $("#type_hid").val();
        });
        $("#city").on('change',function() {
            $("#city_hid").val();
        });

    </script>

    <div class="box">
        <div class="box-head">
            <h2>Ограничения на даты визита</h2>
        </div>
        <div style="padding: 20px">

            <h2>Отметьте даты, в которые регистрация <b>невозможна</b></h2><br />
            <div class="calendar">
            </div>
            <script type="text/javascript">
                var calendarInstance = $('.calendar').clndr({
                    clickEvents: {
                        click: function(target){
                            var new_el = {date: target.date};
                            var index = -1;
                            for (i=0;i<eventsArray.length;i++) {
                                if (eventsArray[i].date != undefined && eventsArray[i].date.isSame(target.date)) {
                                    index = i;
                                }
                            }
                            if (index >= 0)
                                eventsArray.splice(index,1);
                            else
                                eventsArray.push(new_el);
                            this.setEvents(eventsArray);
                            $("#blocked_days").val(JSON.stringify(eventsArray));
                        }
                    },
                    events: eventsArray,
                    startWithMonth: moment().add(1, 'month')
                });
            </script>


        </div>
    </div>

    <div class="box">
        <!-- Box Head -->
        <div class="box-head">
            <h2>Персональные данные</h2>
        </div>

        <table>
            <tr>
                <td colspan="2"><form:label path="surname_1" cssClass="sign">1. Фамилия(-и)  </form:label>
                    <span id="ctl00_cp_f_daneOs_revTxtNazwisko" class="errors hide">Неправильное значение</span>
                    <span id="ctl00_cp_f_daneOs_rfvTxtNazwisko" class="errors hide">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="surname_1" /></div>
                    <form:input path="surname_1" cssClass="field size1" maxlength="100" id="ctl00_cp_f_daneOs_txtNazwisko" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="surname_2" cssClass="sign">2. Родовая (-ые) фамилия (-и) (прежняя (-ие) фамилия (-и)</form:label>
                    <span id="ctl00_cp_f_daneOs_revTxtNazwiskoRodowe" style="color:Red;display:none;">Неправильное значение</span>
                    <span id="ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe" style="color:Red;display:none;">Поле для обязательного заполнения </span>

                    <br/>
                    <div class="errors"> <form:errors path="surname_2" /></div>
                    <form:input path="surname_2" cssClass="field size1" maxlength="100" id="ctl00_cp_f_daneOs_txtNazwiskoRodowe" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="name_3" cssClass="sign">3. Имена</form:label>
                    <span id="ctl00_cp_f_daneOs_revTxtImiona" style="color:Red;display:none;">Неправильное значение</span>
                    <span id="ctl00_cp_f_daneOs_rfvTxtImiona" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="name_3" /></div>
                    <form:input path="name_3" cssClass="field size1" maxlength="50" id="ctl00_cp_f_daneOs_txtImiona" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="birthdate_4" cssClass="sign">4. Дата рождения (год-месяц-день)</form:label>
                    <span id="ctl00_cp_f_daneOs_rvTxtDataUrodzin" style="color:Red;display:none;">Неправильное значение</span>
                    <span id="ctl00_cp_f_daneOs_revTxtDataUrodzin" style="color:Red;display:none;">Неправильное значение</span>
                    <span id="ctl00_cp_f_daneOs_rfvTxtDataUrodzin" style="color:Red;display:none;">Поле для обязательного заполнения </span>

                    <br/>
                    <div class="errors"> <form:errors path="birthdate_4" /></div>
                    <form:input path="birthdate_4" cssClass="field datepicker" maxlength="10" id="ctl00_cp_f_daneOs_txtDataUrodzin" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="placedate_5" cssClass="sign">5. Место рождения</form:label>
                    <span id="ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia" style="color:Red;display:none;">Неправильное значение</span>
                    <span id="ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="placedate_5" /></div>
                    <form:input path="placedate_5" cssClass="field size1" maxlength="50" id="ctl00_cp_f_daneOs_txtMiejsceUrodzenia" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="country_6" cssClass="sign">6. Страна рождения</form:label>
                    <span id="ctl00_cp_f_daneOs_rfvCbKrajUrodzenia" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="country_6" /></div>
                    <form:select items="${countiresOldList}" cssClass="field" id="ctl00_cp_f_daneOs_cbKrajUrodzenia"  path="country_6" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="citizenship_7" cssClass="sign">7. Гражданство (а) в настоящее время </form:label>
                    <span id="ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="citizenship_7" /></div>
                    <form:select items="${countiresList}" cssClass="field" id="ctl00_cp_f_daneOs_cbObecneObywatelstwo" path="citizenship_7" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="citizenship_born_8" cssClass="sign">8. Гражданство при рождении (национальность)</form:label>
                    <span id="ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="citizenship_born_8" /></div>
                    <form:select items="${countiresOldList}" cssClass="field" id="ctl00_cp_f_daneOs_cbPosiadaneObywatelstwo" path="citizenship_born_8" /></td>
            </tr>
            <tr>
                <td><input type="hidden" value="1"  id="ctl00_cp_f_daneOs_rbPlec_1" /><input type="hidden" value="1"  id="ctl00_cp_f_daneOs_rbPlec_0" />
                    <form:label path="sex_9" cssClass="sign">9. Пол </form:label>
                    <span id="ctl00_cp_f_daneOs_rfvRbPlec" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="sex_9" /></div>
                    <form:radiobuttons items="${sexList}" id="ctl00_cp_f_daneOs_rbPlec_" delimiter="<br>" path="sex_9" /></td>
                <td><form:label path="family_10" cssClass="sign">10. Семейное положение  </form:label>
                    <span id="ctl00_cp_f_daneOs_rfvRbStanCywilny" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="family_10" /></div>
                    <form:radiobuttons cssClass="field" id="ctl00_cp_f_daneOs_rbStanCywilny_" delimiter="<br>" items="${mStatusList}" path="family_10" />
                </td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="identnum_11" cssClass="sign">11. Национальный идентификационный номер</form:label>
                    <span id="ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny" style="color:Red;display:none;">*</span>
                    <span id="ctl00_cp_f_rfvNrIdentyfikacyjny" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="identnum_11" /></div>
                    <form:input path="identnum_11" cssClass="field size1" maxlength="20" id="ctl00_cp_f_txt5NumerDowodu" /></td>
            </tr>
            <tr>
                <td colspan="2" class="table-title">Паспортные данные</td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="passdata_12" cssClass="sign">12. Тип проездного документа</form:label>
                    <span id="ctl00_cp_f_rfv_13" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <span id="ctl00_cp_f_rfv_13a" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <span id="ctl00_cp_f_rfvKonsultacja1" style="color:Red;display:none;">Неправильное значение</span><br/>
                    <div class="errors"> <form:errors path="passdata_12" /></div>
                    <form:radiobuttons delimiter="<br>" id="ctl00_cp_f_rbl13_" items="${docTypeList}" path="passdata_12" /><br />
                    <form:input path="passdata_12_other" cssClass="field size3" maxlength="20" id="ctl00_cp_f_txt13Rodzaj" />

                </td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="passnum_13" cssClass="sign">13. Номер проездного документа</form:label>
                    <span id="ctl00_cp_f_rfv_14" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <span id="ctl00_cp_f_rfvKonsultacja9" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="passnum_13" /></div>
                    <form:input path="passnum_13" maxlength="50" id="ctl00_cp_f_txt14NumerPaszportu" cssClass="field size1" /></td>
            </tr>
            <tr>
                <td><form:label path="passissuedate_14" cssClass="sign">14.Дата выдачи (год-месяц-день)</form:label>
                    <span id="ctl00_cp_f_rfv_16" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <span id="ctl00_cp_f_rev16" style="color:Red;display:none;">Неправильное значение</span>

                    <br/>
                    <div class="errors"> <form:errors path="passissuedate_14" /></div>
                    <form:input path="passissuedate_14" maxlength="10" id="ctl00_cp_f_txt16WydanyDnia" cssClass="field datepicker" /></td>
                <td><form:label path="passexpiration_15" cssClass="sign">15. Действителен до (год-месяц-день)  </form:label>
                    <span id="ctl00_cp_f_rfv_17" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <span id="ctl00_cp_f_cv17b" style="color:Red;display:none;">Неправильное значение</span>
                    <span id="ctl00_cp_f_rev17" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="passexpiration_15" /></div>
                    <form:input path="passexpiration_15" maxlength="10" id="ctl00_cp_f_txt17WaznyDo" cssClass="field datepicker" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="passby_16" cssClass="sign">16. Кем выдан</form:label>
                    <span id="ctl00_cp_f_rfvWydanyPrzez" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <span id="ctl00_cp_f_rfvKonsultacja10" style="color:Red;display:none;">Неправильное значение</span>

                    <br/>
                    <div class="errors"> <form:errors path="passby_16" /></div>
                    <form:input path="passby_16" cssClass="field size1" maxlength="100" id="ctl00_cp_f_txt15WydanyPrzez" /></td>
            </tr>
        </table>
    </div>

    <div class="box">
        <!-- Box Head -->
        <div class="box-head">
            <h2>Для несовершеннолетних: фамилия, имя, адрес и гражданство лица с полномочием родителей / законного представителя</h2>
        </div>

        <table>
            <tr>
                <td colspan="2">
                    <c:choose><c:when test="${not form.is_children}">
                        <input type="checkbox" name="is_children" id="ctl00_cp_f_opiekunowie_chkNieDotyczy" value="1" checked="checked" />
                    </c:when><c:otherwise>
                        <input type="checkbox" name="is_children" id="ctl00_cp_f_opiekunowie_chkNieDotyczy" value="1"  />
                    </c:otherwise></c:choose>
                    Не касается
                </td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="citizenship_child" cssClass="sign">Гражданство </form:label> <span id="ctl00_cp_f_opiekunowie_rfvCbObywatelstwo1" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="citizenship_child" /></div>
                    <form:select items="${countiresOldList}" cssClass="field size1" id="ctl00_cp_f_opiekunowie_cbObywatelstwo1" path="citizenship_child" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="name_child" cssClass="sign">Имя</form:label><span id="ctl00_cp_f_opiekunowie_rfvTxtImie1" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="name_child" /></div>
                    <form:input path="name_child" cssClass="field size1" maxlength="50" id="ctl00_cp_f_opiekunowie_txtImie1" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="surname_child" cssClass="sign">Фамилия</form:label><span id="ctl00_cp_f_opiekunowie_rfvTxtNazwisko1" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="surname_child" /></div>
                    <form:input path="surname_child" cssClass="field size1" maxlength="150" id="ctl00_cp_f_opiekunowie_txtNazwisko1" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="country_child" cssClass="sign">Государство </form:label><span id="ctl00_cp_f_opiekunowie_rfvCbPanstwo1" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="country_child" /></div>
                    <form:select items="${countiresList}" cssClass="field size1" id="ctl00_cp_f_opiekunowie_cbPanstwo1" path="country_child" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="state_child" cssClass="sign">Штат/провинция</form:label><span id="ctl00_cp_f_opiekunowie_lblStanProwincja1" class="FormularzEtykietaWewnetrznaEtykieta">Штат/провинция</span><br/>
                    <div class="errors"> <form:errors path="state_child" /></div>
                    <form:input path="state_child" cssClass="field size1" maxlength="50" id="ctl00_cp_f_opiekunowie_txtStanProwincja1" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="city_child" cssClass="sign">Место</form:label><span id="ctl00_cp_f_opiekunowie_rfvTxtMiejscowosc1" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="city_child" /></div>
                    <form:input path="city_child" cssClass="field size1" maxlength="56" id="ctl00_cp_f_opiekunowie_txtMiejscowosc1" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="index_child" cssClass="sign">Почтовый индекс</form:label><span id="ctl00_cp_f_opiekunowie_rfvTxtKod1" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="index_child" /></div>
                    <form:input path="index_child" cssClass="field size1" maxlength="20" id="ctl00_cp_f_opiekunowie_txtKod1" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="address_child" cssClass="sign">Адрес </form:label><span id="ctl00_cp_f_opiekunowie_rfvTxtAdres1" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="address_child" /></div>
                    <form:input path="address_child" cssClass="field size1" maxlength="255" id="ctl00_cp_f_opiekunowie_txtAdres1" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="button" name="more_children" id="more_children" value="Подробнее" />
                </td>
            </tr>
        </table>

        <table class="hide" id="more_children_table">

            <tr>
                <td colspan="2"><form:label path="citizenship_child2" cssClass="sign">Гражданство </form:label> <span id="ctl00_cp_f_opiekunowie_rfvCbObywatelstwo2" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="citizenship_child2" /></div>
                    <form:select items="${countiresOldList}" cssClass="field size1" id="ctl00_cp_f_opiekunowie_cbObywatelstwo2" path="citizenship_child2" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="name_child2" cssClass="sign">Имя</form:label><span id="ctl00_cp_f_opiekunowie_rfvTxtImie2" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="name_child2" /></div>
                    <form:input path="name_child2" cssClass="field size1" maxlength="50" id="ctl00_cp_f_opiekunowie_txtImie2" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="surname_child2" cssClass="sign">Фамилия</form:label><span id="ctl00_cp_f_opiekunowie_rfvTxtNazwisko2" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="surname_child2" /></div>
                    <form:input path="surname_child2" cssClass="field size1" maxlength="150" id="ctl00_cp_f_opiekunowie_txtNazwisko2" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="country_child2" cssClass="sign">Государство </form:label><span id="ctl00_cp_f_opiekunowie_rfvCbPanstwo2" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="country_child2" /></div>
                    <form:select items="${countiresList}" cssClass="field size1" id="ctl00_cp_f_opiekunowie_cbPanstwo2" path="country_child2" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="state_child" cssClass="sign">Штат/провинция</form:label><span id="ctl00_cp_f_opiekunowie_lblStanProwincja2" class="FormularzEtykietaWewnetrznaEtykieta">Штат/провинция</span><br/>
                    <div class="errors"> <form:errors path="state_child2" /></div>
                    <form:input path="state_child2" cssClass="field size1" maxlength="50" id="ctl00_cp_f_opiekunowie_txtStanProwincja2" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="city_child2" cssClass="sign">Место</form:label><span id="ctl00_cp_f_opiekunowie_rfvTxtMiejscowosc2" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="city_child2" /></div>
                    <form:input path="city_child2" cssClass="field size1" maxlength="56" id="ctl00_cp_f_opiekunowie_txtMiejscowosc2" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="index_child2" cssClass="sign">Почтовый индекс</form:label><span id="ctl00_cp_f_opiekunowie_rfvTxtKod2" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="index_child2" /></div>
                    <form:input path="index_child2" cssClass="field size1" maxlength="20" id="ctl00_cp_f_opiekunowie_txtKod2" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="address_child" cssClass="sign">Адрес </form:label><span id="ctl00_cp_f_opiekunowie_rfvTxtAdres2" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="address_child2" /></div>
                    <form:input path="address_child2" cssClass="field size1" maxlength="255" id="ctl00_cp_f_opiekunowie_txtAdres2" /></td>
            </tr>
        </table>


    </div>
    <input type="hidden" name="ctl00$cp$f$opiekunowie$IloscOpiekunoV" id="ctl00_cp_f_opiekunowie_IloscOpiekunoV" value="1" />

    <c:if test="${not empty form.name_child2}">
        <script type="text/javascript">
            $('#more_children_table').show();
        </script>
    </c:if>


    <div class="box">
        <!-- Box Head -->
        <div class="box-head">
            <h2>Общая информация</h2>
        </div>
        <table>
            <tr>
                <td colspan="2"><b>17. Домашний адрес и адрес электронной почты заявителя</b></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="country_17" cssClass="sign">Государство </form:label>
                    <span id="ctl00_cp_f_rfv45a" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="country_17" /></div>
                    <form:select id="ctl00_cp_f_ddl45Panstwo" items="${countiresList}" cssClass="field size1" path="country_17" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="state_17" cssClass="sign">Штат/провинция</form:label>
                    <span id="ctl00_cp_f_rfv17Stan" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="state_17" /></div>
                    <form:input path="state_17" maxlength="50" id="ctl00_cp_f_txt45StanProwincja" cssClass="field size1" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="city_17" cssClass="sign">Место</form:label>
                    <span id="ctl00_cp_f_rfv45c" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="city_17" /></div>
                    <form:input path="city_17" maxlength="56" id="ctl00_cp_f_txt45Miejscowosc" cssClass="field size1" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="index_17" cssClass="sign">Почтовый индекс</form:label>
                    <span id="ctl00_cp_f_rfv45d" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="index_17" /></div>
                    <form:input path="index_17" maxlength="20" id="ctl00_cp_f_txt45Kod" cssClass="field size1" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="address_17" cssClass="sign">Адрес </form:label>
                    <span id="ctl00_cp_f_rfv45e" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="address_17" /></div>
                    <form:input path="address_17" maxlength="255" id="ctl00_cp_f_txt45Adres" cssClass="field size1" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="email_17" cssClass="sign">Email </form:label>
                    <span id="ctl00_cp_f_RequiredFieldValidator3" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <span id="ctl00_cp_f_RegularExpressionValidator1" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="email_17" /></div>
                    <form:input path="email_17" maxlength="50" id="ctl00_cp_f_txt17Email" cssClass="field size1" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="preftel_17" cssClass="sign">Префикс тел. </form:label>
                    <span id="ctl00_cp_f_rfv17prtel" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="preftel_17" /></div>
                    <form:input path="preftel_17" cssClass="field size1" maxlength="10" id="ctl00_cp_f_txt46TelefonPrefiks0" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="tel_17" cssClass="sign">Номер тел. </form:label>
                    <span id="ctl00_cp_f_rfv17telnr" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="tel_17" /></div>
                    <form:input path="tel_17" cssClass="field size1" maxlength="30" id="ctl00_cp_f_txt46TelefonNumer0" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="countryvisitor_18" cssClass="sign">18. Страна пребывания, если не является страной гражданства</form:label>
                    <span id="ctl00_cp_f_rfv18" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="countryvisitor_18" /></div>
                    <form:radiobuttons delimiter="<br>" id="ctl00_cp_f_rbl18_" items="${countryPosList}" path="countryvisitor_18" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="visitdoc_18" cssClass="sign">Номер</form:label>
                    <span id="ctl00_cp_f_rfv18a" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="visitdoc_18" /></div>
                    <form:input path="visitdoc_18" cssClass="field size1" maxlength="100" id="ctl00_cp_f_txt18aNumer" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="expdate_18" cssClass="sign">Действителен до (год-месяц-день)</form:label>
                    <span id="ctl00_cp_f_rfv18b" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <span id="ctl00_cp_f_rev18b" style="color:Red;display:none;">Неправильное значение</span>

                    <br/>
                    <div class="errors"> <form:errors path="expdate_18" /></div>
                    <form:input path="expdate_18" cssClass="field datepicker" maxlength="10" id="ctl00_cp_f_txt18bDataWaznosci" />
                    <form:checkbox path="expdate_18_unlimited" id="cp_f_chk18Bezterminowo" value="1" /> <label for="cp_f_chk18Bezterminowo">бессрочно</label>
                </td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="profession_19" cssClass="sign">19. Профессиональная деятельность в настоящее время  </form:label>
                    <span id="ctl00_cp_f_rfv_19_zawod" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="profession_19" /></div>
                    <form:select items="${professionList}" id="ctl00_cp_f_ddl19WykonywanyZawod" cssClass="field size1" path="profession_19" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="employee_20" cssClass="sign">20. Работодатель; адрес и телефон работодателя. Для студентов, школьников – название и адрес учебного заведения</form:label>
                    <span id="ctl00_cp_f_rfv_20_panstwo" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="employee_20" /></div>
                    <form:radiobuttons id="ctl00_cp_f_rbl20_" delimiter="<br>" items="${employeeList}" path="employee_20" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="country_20" cssClass="sign">Государство </form:label>
                    <span id="ctl00_cp_f_rfv_20_panstwo" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="country_20" /></div>
                    <form:select items="${countiresList}" id="ctl00_cp_f_dd20bPanstwo" cssClass="field size1" path="country_20" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="state_20" cssClass="sign">Штат/провинция</form:label>
                    <span id="ctl00_cp_f_rfv_20_stan" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="state_20" /></div>
                    <form:input path="state_20" cssClass="field size1" maxlength="50" id="ctl00_cp_f_txt20cStanProwincja" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="city_20" cssClass="sign">Место</form:label>
                    <span id="ctl00_cp_f_rfv_20_miejscowosc" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="city_20" /></div>
                    <form:input path="city_20" cssClass="field size1" maxlength="56" id="ctl00_cp_f_txt20dMiejscowosc" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="index_20" cssClass="sign">Почтовый индекс</form:label><span id="ctl00_cp_f_rfv_20_kodpocztowy" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="index_20" /></div>
                    <form:input path="index_20" cssClass="field size1" maxlength="20" id="ctl00_cp_f_txt20eKodPocztowy" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="address_20" cssClass="sign">Адрес </form:label>
                    <span id="ctl00_cp_f_rfv_20_adres" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="address_20" /></div>
                    <form:input path="address_20" cssClass="field size1" maxlength="255" id="ctl00_cp_f_txt20fAdres" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="preftel_20" cssClass="sign">Префикс тел. </form:label>
                    <span id="ctl00_cp_f_rfv_20_prefix" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="preftel_20" /></div>
                    <form:input path="preftel_20" cssClass="field size1" maxlength="10" id="ctl00_cp_f_txt20gPrefix" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="tel_20" cssClass="sign">Номер тел. </form:label>
                    <span id="ctl00_cp_f_rfv_20_telefon" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="tel_20" /></div>
                    <form:input path="tel_20" cssClass="field size1" maxlength="30" id="ctl00_cp_f_txt20hTelefon" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="title_20" cssClass="sign">Название </form:label>
                    <span id="ctl00_cp_f_rfv_20_nazwa" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="title_20" /></div>
                    <form:input path="title_20" cssClass="field size1" id="ctl00_cp_f_txt20Nazwa" maxlength="100" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="email_20" cssClass="sign">Email </form:label>
                    <span id="ctl00_cp_f_rfv_20Email" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="email_20" /></div>
                    <form:input path="email_20" cssClass="field size1" maxlength="50" id="ctl00_cp_f_txt20Email" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="preffax_20" cssClass="sign">Префикс факс. </form:label><br/>
                    <div class="errors"> <form:errors path="preffax_20" /></div>
                    <form:input path="preffax_20" cssClass="field size1" maxlength="10" id="ctl00_cp_f_txt20PrefiksFax" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="fax_20" cssClass="sign">Номер факс. </form:label><br/>
                    <div class="errors"> <form:errors path="fax_20" /></div>
                    <form:input path="fax_20" cssClass="field size1" maxlength="30" id="ctl00_cp_f_txt20NumerFax" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="goal_21" cssClass="sign">21. Главная цель/-и поездки: </form:label>
                    <span id="ctl00_cp_f_rfv29b" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <span id="ctl00_cp_f_cv29" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <span id="ctl00_cp_f_rfvKonsultacja11" style="color:Red;display:none;">Неправильное значение</span><br/>
                    <div class="errors"> <form:errors path="goal_21" /></div>
                    <form:checkboxes delimiter="<br>" items="${goalsList}" id="cp_f_rbl29_"  path="goal_21" />
                    <br>
                    <form:input path="goalother_21" id="ctl00_cp_f_txt29CelPodrozy" cssClass="field size1" />
                </td>
            </tr>
        </table>
    </div>

    <div class="box">
        <!-- Box Head -->
        <div class="box-head">
            <h2>Сведения, касающиеся поездки</h2>
        </div>
        <table>
            <tr>
                <td><form:label path="dest_country_22" cssClass="sign">22. Страна (ы) назначения </form:label>
                    <span id="ctl00_cp_f_rfv_21" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="dest_country_22" /></div>
                    <form:select items="${inputCountriesList}" id="ctl00_cp_f_ddl21KrajDocelowy" cssClass="field" path="dest_country_22" /></td>
                <td><form:label path="first_country_23" cssClass="sign">23. Страна первого въезда</form:label><span id="ctl00_cp_f_RequiredFieldValidator1" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="first_country_23" /></div>
                    <form:select items="${inputCountriesList}" id="ctl00_cp_f_ddl23PierwszyWjazd" cssClass="field" path="first_country_23" /></td>
            </tr>
            <tr>
                <td><form:label path="typevisa_24" cssClass="sign">24. Виза запрашивается для  </form:label><span id="ctl00_cp_f_rvl24" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="typevisa_24" /></div>
                    <form:radiobuttons id="ctl00_cp_f_rbl24_" delimiter="<br>" items="${qtyList}" path="typevisa_24" /></td>
                <td><form:label path="lenvisa_25" cssClass="sign">25. Продолжительность пребывания или транзита. Указать количество дней </form:label><span id="ctl00_cp_f_rfv_25" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <span id="ctl00_cp_f_rvLotniskowa" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="lenvisa_25" /></div>
                    Запрашивается виза на <form:input path="lenvisa_25" maxlength="10" id="ctl00_cp_f_txt25OkresPobytu" cssClass="field" />дней (&lt;=90) </td>
            </tr>
            <tr>
                <td><form:label path="startvisa_29" cssClass="sign">29. Предполагаемая дата въезда в шенгенскую зону (год-месяц-день)</form:label><span id="ctl00_cp_f_rfv30" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <span id="ctl00_cp_f_rev30" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="startvisa_29" /></div>
                    <form:input maxlength="10" id="ctl00_cp_f_txt30DataWjazdu" cssClass="datepicker field" path="startvisa_29" /></td>
                <td><form:label path="endvisa_30" cssClass="sign">30. Предполагаемая дата выезда из шенгенской зоны (год-месяц-день)</form:label> <span id="ctl00_cp_f_rev31" style="color:Red;display:none;">Неправильное значение</span>
                    <span id="ctl00_cp_f_RequiredFieldValidator2" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="endvisa_30" /></div>
                    <form:input cssClass="datepicker field" path="endvisa_30" maxlength="10" id="ctl00_cp_f_txt31DataWyjazdu" /></td>
            </tr>
            <tr>
                <td colspan="2"><b>26. Шенгенские визы, выданные за последние три года</b><input type="hidden" id="ctl00_cp_f_rbl26" value="0"><span id="ctl00_cp_f_rfv26" style="color:Red;display:none;">Поле для обязательного заполнения </span> </td>
            </tr>
            <tr>
                <td>
                    <b>от:</b>
                    <div class="errors"> <form:errors path="prevvisastart1_26" /></div>
                    <form:input cssClass="datepicker field" path="prevvisastart1_26" /></td>
                <td>
                    <b>до:</b>
                    <div class="errors"> <form:errors path="prevvisaend1_26" /></div>
                    <form:input cssClass="datepicker field" path="prevvisaend1_26" /></td>

            </tr>
            <tr>
                <td>
                    <div class="errors"> <form:errors path="prevvisastart2_26" /></div>
                    <form:input cssClass="datepicker field" path="prevvisastart2_26" /></td>
                <td>
                    <div class="errors"> <form:errors path="prevvisaend2_26" /></div>
                    <form:input cssClass="datepicker field" path="prevvisaend2_26" /></td>

            </tr>
            <tr>
                <td>
                    <div class="errors"> <form:errors path="prevvisastart3_26" /></div>
                    <form:input cssClass="datepicker field" path="prevvisastart3_26" /></td>
                <td>
                    <div class="errors"> <form:errors path="prevvisaend3_26" /></div>
                    <form:input cssClass="datepicker field" path="prevvisaend3_26" /></td>

            </tr>

            <tr>
                <td colspan="2">
                    <b>Отпечатки пальцев, предоставленные ранее при подаче заявки на получение шенгенской визы</b><Br />
                    <form:radiobuttons delimiter="<br>" id="ctl00_cp_f_rbl27_" items="${fingerprintList}" path="fingerprint_27" />
                </td>
            </tr>

        </table>
    </div>

    <div class="hide">
        <span id="ctl00_cp_f_rfv27WydanePrzez" style="color:Red;display:none;">Поле для обязательного заполнения </span>
        <span id="ctl00_cp_f_rfv35Sponsor" style="color:Red;display:none;">Поле для обязательного заполнения </span>
        <span id="ctl00_cp_f_rfv43_Nazwisko" style="color:Red;display:none;">Поле для обязательного заполнения </span>
        <span id="ctl00_cp_f_rfvKonsultacja12" style="color:Red;display:none;">Неправильное значение</span>
        <span id="ctl00_cp_f_rfv43Imie" style="color:Red;display:none;">Поле для обязательного заполнения </span>
        <span id="ctl00_cp_f_rfvKonsultacja13" style="color:Red;display:none;">Неправильное значение</span>
        <span id="ctl00_cp_f_rfv43DataUrodzenia" style="color:Red;display:none;">Поле для обязательного заполнения </span>
        <span id="ctl00_cp_f_rev43DataUrodzenia" style="color:Red;display:none;">Неправильное значение</span>
        <span id="ctl00_cp_f_rfv43NumerPaszportu" style="color:Red;display:none;">Поле для обязательного заполнения </span>
        <span id="ctl00_cp_f_rfvKonsultacja14" style="color:Red;display:none;">Неправильное значение</span>

        <span id="ctl00_cp_f_rfv43" style="color:Red;display:none;">Поле для обязательного заполнения </span>
        <span id="ctl00_cp_f_rvl25" style="color:Red;display:none;">Поле для обязательного заполнения </span>
        <span id="ctl00_cp_f_cvOswiadczenie" style="color:Red;display:none;">Поле для обязательного заполнения </span>
        <span id="ctl00_cp_f_CustomValidator1" style="color:Red;display:none;">Поле для обязательного заполнения </span>
        <span id="ctl00_cp_f_CustomValidator2" style="color:Red;display:none;">Поле для обязательного заполнения </span>
    </div>

    <div class="box">
        <!-- Box Head -->
        <div class="box-head">
            <h2>Разрешение на въезд в страну конечного следования, если необходимо</h2>
        </div>

        <table>
            <tr>
                <td colspan="2">
                    <c:choose><c:when test="${form.endcountrypermit_28 == '0'}">
                        <input type="checkbox" name="endcountrypermit_28" id="cp_f_chkNiedotyczy28" value="*" />
                    </c:when><c:otherwise>
                        <input type="checkbox" name="endcountrypermit_28" id="cp_f_chkNiedotyczy28" value="*" checked="checked"  />
                    </c:otherwise></c:choose>
                    <label for="cp_f_chkNiedotyczy28">Не касается</label>
                </td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="endcountryby_28" cssClass="sign">кем выдано</form:label><span id="ctl000_cp_f_txt27WydanePrzez" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="endcountryby_28" /></div>
                    <form:input path="endcountryby_28" cssClass="field size1" maxlength="150" id="ctl000_cp_f_txt27WydanePrzez" /></td>
            </tr>

            <tr>
                <td colspan="2"><form:label path="endcountryfrom_28" cssClass="sign">Действительно с (год-месяц-день)</form:label><span id="ctl00_cp_f_txt27WazneOd" style="color:Red;display:none;">Неправильное значение</span>
                    <span id="ctl00_cp_f_txt27WazneOd" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="endcountryfrom_28" /></div>
                    <form:input path="endcountryfrom_28" cssClass="datepicker field" maxlength="250" id="ctl000_cp_f_txt27WazneOd" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="endcountryto_28" cssClass="sign">Действительно до (год-месяц-день)</form:label><span id="ctl000_cp_f_txt27WazneDo" style="color:Red;display:none;">Неправильное значение</span>
                    <span id="ctl00_cp_f_txt27WazneDo" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="endcountryto_28" /></div>
                    <form:input path="endcountryto_28" cssClass="datepicker field" maxlength="250" id="ctl000_cp_f_txt27WazneDo" /></td>
            </tr>
        </table>
    </div>


    <div class="box">
        <!-- Box Head -->
        <div class="box-head">
            <h2>Данные принимающего лица</h2>
        </div>
        <table>
            <tr>
                <td colspan="2"><form:label path="invite_31" cssClass="sign">Вид</form:label><span id="ctl00_cp_f_ctrl31__rfv34Rodzaj" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="invite_31" /></div>
                    <form:radiobuttons id="ctl00_cp_f_ctrl31__rbl34_" delimiter="<br>" items="${invList}" path="invite_31" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="title_31" cssClass="sign">Название </form:label><span id="ctl00_cp_f_ctrl31__rfv34_1" style="color:Red;display:none;">Поле для обязательного заполнения </span><span id="ctl00_cp_f_ctrl31__rfvKonsultacja6" style="color:Red;display:none;">Неправильное значение</span><br/>
                    <div class="errors"> <form:errors path="title_31" /></div>
                    <form:input path="title_31" cssClass="field size1" maxlength="100" id="ctl00_cp_f_ctrl31__txt34Nazwa" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="name_31" cssClass="sign">Имя </form:label><span id="ctl00_cp_f_ctrl31__rfv34Imie" style="color:Red;display:none;">Поле для обязательного заполнения </span> <span id="ctl00_cp_f_ctrl31__rfvKonsultacja7" style="color:Red;display:none;">Неправильное значение</span>

                    <br/>
                    <div class="errors"> <form:errors path="name_31" /></div>
                    <form:input path="name_31" cssClass="field size1" maxlength="50" id="ctl00_cp_f_ctrl31__txt34Imie" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="surname_31" cssClass="sign">Фамилия </form:label><span id="ctl00_cp_f_ctrl31__rfv34Nazwisko" style="color:Red;display:none;">Поле для обязательного заполнения </span><span id="ctl00_cp_f_ctrl31__rfvKonsultacja8" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="surname_31" /></div>
                    <form:input path="surname_31" cssClass="field size1" maxlength="100" id="ctl00_cp_f_ctrl31__txt34Nazwisko"  /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="country_31" cssClass="sign">Государство </form:label><span id="ctl00_cp_f_ctrl31__rfv34_2" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="country_31" /></div>
                    <form:select items="${inputCountriesList}" id="ctl00_cp_f_ctrl31__ddl34panstwo" cssClass="field size1"  path="country_31" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="city_31" cssClass="sign">Место</form:label><span id="ctl00_cp_f_ctrl31__rfv34_3" style="color:Red;display:none;">Поле для обязательного заполнения </span><span id="ctl00_cp_f_ctrl31__rfvKonsultacja9" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="city_31" /></div>
                    <form:input path="city_31" cssClass="field size1" maxlength="56" id="ctl00_cp_f_ctrl31__txt34miejscowosc" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="index_31" cssClass="sign">Почтовый индекс</form:label> <span id="ctl00_cp_f_ctrl31__rfv34_4" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <span id="ctl00_cp_f_ctrl31__rfvKonsultacja10" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="index_31" /></div>
                    <form:input path="index_31" cssClass="field size1" maxlength="20" id="ctl00_cp_f_ctrl31__txt34kod" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="preftel_31" cssClass="sign">Префикс тел. </form:label><span id="ctl00_cp_f_ctrl31__rfvKonsultacja11" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="preftel_31" /></div>
                    <form:input path="preftel_31" cssClass="field size1" maxlength="10" id="ctl00_cp_f_ctrl31__txt34prefikstel" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="tel_31" cssClass="sign">Номер тел. </form:label><span id="ctl00_cp_f_ctrl31__rfvKonsultacja12" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="tel_31" /></div>
                    <form:input path="tel_31" cssClass="field size1" maxlength="30" id="ctl00_cp_f_ctrl31__txt34tel" /></td>
            </tr>

            <tr>
                <td colspan="2"><form:label path="preffax_31" cssClass="sign">Префикс факс. </form:label><span id="ctl00_cp_f_ctrl31__rfvKonsultacja13" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="preffax_31" /></div>
                    <form:input path="preffax_31" cssClass="field size1" maxlength="10" id="ctl00_cp_f_ctrl31__txt34prefiksfax"  /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="fax_31" cssClass="sign">Номер факс. </form:label> <span id="ctl00_cp_f_ctrl31__rfvKonsultacja14" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="fax_31" /></div>
                    <form:input path="fax_31" cssClass="field size1" maxlength="30" id="ctl00_cp_f_ctrl31__txt34fax" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="address_31" cssClass="sign">Адрес </form:label><span id="ctl00_cp_f_ctrl31__rfv34_5" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <span id="ctl00_cp_f_ctrl31__rfvKonsultacja15" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="address_31" /></div>
                    <form:input path="address_31" cssClass="field size1" maxlength="65" id="ctl00_cp_f_ctrl31__txt34adres" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="building_31" cssClass="sign">Номер дома </form:label><span id="ctl00_cp_f_ctrl31__rfvKonsultacja16" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="building_31" /></div>
                    <form:input path="building_31" cssClass="field size1" maxlength="20" id="ctl00_cp_f_ctrl31__txt34NumerDomu" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="flat_31" cssClass="sign">Номер квартиры </form:label><span id="ctl00_cp_f_ctrl31__rfvKonsultacja17" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="flat_31" /></div>
                    <form:input path="flat_31" cssClass="field size1" maxlength="20" id="ctl00_cp_f_ctrl31__txt34NumerLokalu" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="email_31" cssClass="sign">Email </form:label> <span id="ctl00_cp_f_ctrl31__rfvKonsultacja18" style="color:Red;display:none;">Неправильное значение</span>
                    <br/>
                    <div class="errors"> <form:errors path="email_31" /></div>
                    <form:input path="email_31" cssClass="field size1" maxlength="50" id="ctl00_cp_f_ctrl31__txt34Email" /></td>
            </tr>
        </table>
    </div>

    <div class="box">
        <!-- Box Head -->
        <div class="box-head">
            <h2>Данные лица, несущего расходы</h2>
        </div>
        <table>
            <tr>
                <td colspan="2"><form:label path="expencies_33" cssClass="sign">33. Расходы заявителя на проезд и во время пребывания оплачивает</form:label><span id="ctl00_cp_f_rfv35Wybor" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="expencies_33" /></div>
                    <form:radiobuttons id="ctl00_cp_f_rbl35_" delimiter="<br>" items="${expenciesList}" path="expencies_33" /><br>
                    <form:checkbox path="expencies_33_above" id="cp_f_lbl35a_okreslony" value="1" /> <label for="cp_f_lbl35a_okreslony">упомянутые в пунктах 31 и 32</label><br>
                    <form:checkbox path="expencies_33_other" id="cp_f_lbl35a_inny" value="1" /> <label for="cp_f_lbl35a_inny">Иные (указать)</label><br>
                    <form:input id="ctl00_cp_f_lbl35a_inny" path="expenciesother_33" cssClass="field size1" /><span id="ctl00_cp_f_cv35" style="color:Red;display:none;">Поле для обязательного заполнения </span><input type="hidden" name="ss" value="1"  id="ctl00_cp_f_txt35KtoPokrywaKoszty"> </td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="money_type_33" cssClass="sign">Средства на покрытие расходов на пребывание: </form:label><span id="ctl00_cp_f_cv36" style="color:Red;display:none;">Поле для обязательного заполнения </span><br />
                    <input type="hidden" name="sww" value="On"  id="ctl00_cp_f_rb36Gotowka">
                    <br/>
                    <div class="errors"> <form:errors path="money_type_33" /></div>
                    <form:checkboxes delimiter="<br>" items="${moneyList}"  path="money_type_33" />
                    <br>
                    <form:input path="money_type_other_33" maxlength="200" id="ctl00_cp_f_txt36Inne" cssClass="field size1" />
                </td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="inshurance_33" cssClass="sign">Страхование поездки / медицинское страхование. Действительно до (год-месяц-день) </form:label><span id="ctl00_cp_f_rev36Data" style="color:Red;display:none;">Неправильное значение</span>
                    <span id="ctl00_cp_f_rfv36_waznedo" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="inshurance_33" /></div>
                    <form:input path="inshurance_33" cssClass="datepicker field" maxlength="250" id="ctl00_cp_f_txt36WazneDo" /></td>
            </tr>

        </table>

    </div>


    <div class="box">
        <!-- Box Head -->
        <div class="box-head">
            <h2>Данные гражданина ЕС</h2>
        </div>

        <table>
            <tr>
                <td colspan="2">
                    <c:choose><c:when test="${form.personaldataes_34 eq '0'}">
                        <input type="checkbox" name="personaldataes_34" id="ctl00_cp_f_chkNieDotyczy43" value="*" />
                    </c:when><c:otherwise>
                        <input type="checkbox" name="personaldataes_34" id="ctl00_cp_f_chkNieDotyczy43" value="*" checked="checked"  />
                    </c:otherwise></c:choose>
                    <label for="ctl00_cp_f_chkNieDotyczy43">Не касается</label>
                </td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="personaldatasurname_34" cssClass="sign">Фамилия</form:label><span id="ctl00_cp_f_txt43Nazwisko1" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="personaldatasurname_34" /></div>
                    <form:input path="personaldatasurname_34" cssClass="field size1" maxlength="150" id="ctl000_cp_f_txt43Nazwisko" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="personaldataname_34" cssClass="sign">Имя</form:label><span id="ctl00_cp_f_txt43Imie1" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="personaldataname_34" /></div>
                    <form:input path="personaldataname_34" cssClass="field size1" maxlength="50" id="ctl000_cp_f_txt43Imie" /></td>
            </tr>

            <tr>
                <td colspan="2"><form:label path="personaldatadate_34" cssClass="sign">Дата рождения (год-месяц-день)</form:label><span id="ctl00_cp_f_txt43DataUrodzenia1" style="color:Red;display:none;">Неправильное значение</span>
                    <span id="ctl00_cp_f_txt43DataUrodzenia2" style="color:Red;display:none;">Поле для обязательного заполнения </span>
                    <br/>
                    <div class="errors"> <form:errors path="personaldatadate_34" /></div>
                    <form:input path="personaldatadate_34" cssClass="datepicker field" maxlength="250" id="ctl000_cp_f_txt43DataUrodzenia" /></td>
            </tr>

            <tr>
                <td colspan="2"><form:label path="personaldatapass_34" cssClass="sign">Номер паспорта</form:label><span id="ctl00_cp_f_txt43Paszport1" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="personaldatapass_34" /></div>
                    <form:input path="personaldatapass_34" cssClass="field size1" maxlength="50" id="ctl000_cp_f_txt43Paszport" /></td>
            </tr>
            <tr>
                <td colspan="2"><form:label path="personaldatacitizen_34" cssClass="sign">Гражданство </form:label> <span id="ctl00_cp_f_ddl43Obywatelstwo1" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="personaldatacitizen_34" /></div>
                    <form:select items="${countiresOldList}" cssClass="field size1" id="ctl000_cp_f_ddl43Obywatelstwo" path="personaldatacitizen_34" /></td>
            </tr>

            <tr>
                <td colspan="2"><form:label path="personaldatarelation_34" cssClass="sign">Родство</form:label><span id="ctl00_cp_f_personaldatarelation_34" style="color:Red;display:none;">Поле для обязательного заполнения </span><br/>
                    <div class="errors"> <form:errors path="personaldatarelation_34" /></div>
                    <form:radiobuttons delimiter="<br>" id="ctl000_cp_f_rbl43_" items="${relationshipList}" path="personaldatarelation_34" /><br /></td>
            </tr>
            </table>
    </div>

    <div class="box">
        <!-- Box Head -->

        <div class="buttons">  <input type="submit" value="Сохранить" class="button" /> <c:if test="${not empty form.id}"><input type="button" id="copy" class="button" value="Скопировать в новую анкету" /></c:if>

        </div>
    </div>

    <jsp:include page="validation.jsp" />

</form:form>   <br /><br /><br />
</body>
