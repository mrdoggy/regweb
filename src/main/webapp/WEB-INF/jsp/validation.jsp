<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
    //<![CDATA[

    if (!window.eK) {
        eK = {
            $: function (id) {
                return document.getElementById(id);
            }
        }
    }

    var panstwa = [];

    function ZbindujPanstwa(obj, filtr, value) {
/*        addOption(obj, "", "", true);

        for (var i = 0; i < panstwa.length; i++) {
            var a = panstwa[i].a;
            var s = panstwa[i].s;
            var u = panstwa[i].u;

            if (!(eval(filtr)))
                continue;

            addOption(obj, panstwa[i].k, panstwa[i].w, panstwa[i].k == value);
        }*/
    }

    function addOption(obj, val, txt, sel) {
        var option = document.createElement("option");
        option.value = val;
        option.text = txt;
        option.selected = sel;
        if (obj == undefined || obj.options == undefined) {

        } else
            obj.options.add(option);
    }

    function WebForm_OnSubmit() {
        /*if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
         return true;*/
        window.scrollTo(0, 0);
        if (!Page_ClientValidate()) {
            alert('В анкете содержатся ошибки');
            return false;
        }
        return true;
    }

    function strToDate(dates) {
        regDate = /(\d{4})-(\d{2})-(\d{2})/g;
        dateAr = regDate.exec(dates);
        date = new Date(dateAr[1], dateAr[2] - 1, dateAr[3]);
        return date;
    }
    function Powrot() {
        var cont = eK.$('cp_f_panelFormularz');
        var elements = cont.getElementsByTagName('input');
        for (var i = 0; i < elements.length; i++) {
            if (typeof(elements[i].readonly) != 'undefined' || elements[i].readonly != null) {
                elements[i].readonly.parentNode.removeChild(elements[i].readonly);
                elements[i].style.display = 'inline';
                elements[i].readonly = null
            }
        }
        var elements = cont.getElementsByTagName('select');
        for (var i = 0; i < elements.length; i++) {
            if (typeof(elements[i].readonly) != 'undefined' || elements[i].readonly != null) {
                elements[i].readonly.parentNode.removeChild(elements[i].readonly);
                elements[i].style.display = 'inline';
                elements[i].readonly = null
            }
        }
        eK.$('cp_f_cmdDalej').value = 'Далее';
        eK.$('cp_f_cmdDalej').onclick = Dalej;
        eK.$('cp_f_cmdZakoncz').style.display = 'none';
    }
    function ValidateStatementChk(source, arguments) {
        if (source.id == 'cp_f_cvOswiadczenie')arguments.IsValid = eK.$('cp_f_chk44Oswiadczenie1').checked;
        if (source.id == 'cp_f_CustomValidator1')arguments.IsValid = eK.$('cp_f_chk44Oswiadczenie2').checked;
        if (source.id == 'cp_f_CustomValidator2')arguments.IsValid = eK.$('cp_f_chk44Oswiadczenie3').checked;
    }
    function ValidateSrodki(source, arguments) {
        arguments.IsValid = true;
    }
    function ValidateCelPodrozy(source, arguments) {
        arguments.IsValid = false;
        for (var i = 0; i < 11; i++)arguments.IsValid |= eK.$('cp_f_rbl29_' + i) !=null && eK.$('cp_f_rbl29_' + i).checked;
    }
    function ValidateSponsor(source, arguments) {
        arguments.IsValid = eK.$('cp_f_lbl35a_inny').checked | eK.$('cp_f_lbl35a_okreslony').checked;
    }
    function DisableControl(control, state) {
        if (typeof(Page_Validators) == 'undefined')return;
        if (state) {
            if (typeof(control.type) != 'undefined') {
                if (control.type == 'text')control.value = ''; else if (control.type == 'radio' || control.type == 'checkbox')control.checked = false;
            }
        }
        control.disabled = state;
        for (var i = 0; i < Page_Validators.length; i++) {
            if (Page_Validators[i].controltovalidate == control.id)EnableValidator(Page_Validators[i], !state)
        }
    }

    var Page_Validators = new Array(document.getElementById("ctl00_cp_f_daneOs_revTxtNazwisko"), document.getElementById("ctl00_cp_f_daneOs_rfvTxtNazwisko"), document.getElementById("ctl00_cp_f_daneOs_revTxtNazwiskoRodowe"), document.getElementById("ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe"), document.getElementById("ctl00_cp_f_daneOs_revTxtImiona"), document.getElementById("ctl00_cp_f_daneOs_rfvTxtImiona"), document.getElementById("ctl00_cp_f_daneOs_rvTxtDataUrodzin"), document.getElementById("ctl00_cp_f_daneOs_revTxtDataUrodzin"), document.getElementById("ctl00_cp_f_daneOs_rfvTxtDataUrodzin"), document.getElementById("ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia"), document.getElementById("ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia"), document.getElementById("ctl00_cp_f_daneOs_rfvCbKrajUrodzenia"), document.getElementById("ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo"), document.getElementById("ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo"), document.getElementById("ctl00_cp_f_daneOs_rfvRbPlec"), document.getElementById("ctl00_cp_f_daneOs_rfvRbStanCywilny"), document.getElementById("ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny"), document.getElementById("ctl00_cp_f_rfvNrIdentyfikacyjny"), document.getElementById("ctl00_cp_f_rfv_13"), document.getElementById("ctl00_cp_f_rfv_13a"), document.getElementById("ctl00_cp_f_rfvKonsultacja1"), document.getElementById("ctl00_cp_f_rfv_14"), document.getElementById("ctl00_cp_f_rfvKonsultacja9"), document.getElementById("ctl00_cp_f_rfv_16"), document.getElementById("ctl00_cp_f_rev16"), document.getElementById("ctl00_cp_f_rfv_17"), document.getElementById("ctl00_cp_f_cv17b"), document.getElementById("ctl00_cp_f_rev17"), document.getElementById("ctl00_cp_f_rfvWydanyPrzez"), document.getElementById("ctl00_cp_f_rfvKonsultacja10"), document.getElementById("ctl00_cp_f_opiekunowie_rfvCbObywatelstwo1"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtImie1"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtNazwisko1"), document.getElementById("ctl00_cp_f_opiekunowie_rfvCbPanstwo1"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtMiejscowosc1"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtKod1"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtAdres1"), document.getElementById("ctl00_cp_f_opiekunowie_rfvCbObywatelstwo2"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtImie2"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtNazwisko2"), document.getElementById("ctl00_cp_f_opiekunowie_rfvCbPanstwo2"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtMiejscowosc2"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtKod2"), document.getElementById("ctl00_cp_f_opiekunowie_rfvTxtAdres2"), document.getElementById("ctl00_cp_f_rfv45a"), document.getElementById("ctl00_cp_f_rfv17Stan"), document.getElementById("ctl00_cp_f_rfv45c"), document.getElementById("ctl00_cp_f_rfv45d"), document.getElementById("ctl00_cp_f_rfv45e"), document.getElementById("ctl00_cp_f_RequiredFieldValidator3"), document.getElementById("ctl00_cp_f_RegularExpressionValidator1"), document.getElementById("ctl00_cp_f_rfv17prtel"), document.getElementById("ctl00_cp_f_rfv17telnr"), document.getElementById("ctl00_cp_f_rfv18"), document.getElementById("ctl00_cp_f_rfv18a"), document.getElementById("ctl00_cp_f_rfv18b"), document.getElementById("ctl00_cp_f_rev18b"), document.getElementById("ctl00_cp_f_rfv_19_zawod"), document.getElementById("ctl00_cp_f_rfv_20_panstwo"), document.getElementById("ctl00_cp_f_rfv_20_stan"), document.getElementById("ctl00_cp_f_rfv_20_miejscowosc"), document.getElementById("ctl00_cp_f_rfv_20_kodpocztowy"), document.getElementById("ctl00_cp_f_rfv_20_adres"), document.getElementById("ctl00_cp_f_rfv_20_prefix"), document.getElementById("ctl00_cp_f_rfv_20_telefon"), document.getElementById("ctl00_cp_f_rfv_20_nazwa"), document.getElementById("ctl00_cp_f_rfv_20Email"), document.getElementById("ctl00_cp_f_rfv29b"), document.getElementById("ctl00_cp_f_cv29"), document.getElementById("ctl00_cp_f_rfvKonsultacja11"), document.getElementById("ctl00_cp_f_rfv_21"), document.getElementById("ctl00_cp_f_RequiredFieldValidator1"), document.getElementById("ctl00_cp_f_rvl24"), document.getElementById("ctl00_cp_f_rfv_25"), document.getElementById("ctl00_cp_f_rvLotniskowa"), document.getElementById("ctl00_cp_f_rfv30"), document.getElementById("ctl00_cp_f_rev30"), document.getElementById("ctl00_cp_f_rev31"), document.getElementById("ctl00_cp_f_RequiredFieldValidator2"), document.getElementById("ctl00_cp_f_rfv26"), document.getElementById("ctl00_cp_f_rfv27WydanePrzez"), document.getElementById("ctl00_cp_f_rfv27WazneOd"), document.getElementById("ctl00_cp_f_rev27WazneOd"), document.getElementById("ctl00_cp_f_rfv27WazneDo"), document.getElementById("ctl00_cp_f_rev27WazneDo"), document.getElementById("ctl00_cp_f_ctrl31__rfv34Rodzaj"), document.getElementById("ctl00_cp_f_ctrl31__rfv34_1"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja6"), document.getElementById("ctl00_cp_f_ctrl31__rfv34Imie"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja7"), document.getElementById("ctl00_cp_f_ctrl31__rfv34Nazwisko"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja8"), document.getElementById("ctl00_cp_f_ctrl31__rfv34_2"), document.getElementById("ctl00_cp_f_ctrl31__rfv34_3"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja9"), document.getElementById("ctl00_cp_f_ctrl31__rfv34_4"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja10"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja11"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja12"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja13"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja14"), document.getElementById("ctl00_cp_f_ctrl31__rfv34_5"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja15"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja16"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja17"), document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja18"), document.getElementById("ctl00_cp_f_rfv35Wybor"), document.getElementById("ctl00_cp_f_cv35"), document.getElementById("ctl00_cp_f_rfv35Sponsor"), document.getElementById("ctl00_cp_f_cv36"), document.getElementById("ctl00_cp_f_rev36Data"), document.getElementById("ctl00_cp_f_rfv36_waznedo"), document.getElementById("ctl00_cp_f_rfv43_Nazwisko"), document.getElementById("ctl00_cp_f_rfvKonsultacja12"), document.getElementById("ctl00_cp_f_rfv43Imie"), document.getElementById("ctl00_cp_f_rfvKonsultacja13"), document.getElementById("ctl00_cp_f_rfv43DataUrodzenia"), document.getElementById("ctl00_cp_f_rev43DataUrodzenia"), document.getElementById("ctl00_cp_f_rfv43NumerPaszportu"), document.getElementById("ctl00_cp_f_rfvKonsultacja14"), document.getElementById("ctl00_cp_f_rfv43"), document.getElementById("ctl00_cp_f_rvl25"), document.getElementById("ctl00_cp_f_cvOswiadczenie"), document.getElementById("ctl00_cp_f_CustomValidator1"), document.getElementById("ctl00_cp_f_CustomValidator2"), document.getElementById("city_err"), document.getElementById("type_err"));
    //]]>
</script>

<script type="text/javascript">
    //<![CDATA[
    var ctl00_cp_f_daneOs_revTxtNazwisko = document.all ? document.all["ctl00_cp_f_daneOs_revTxtNazwisko"] : document.getElementById("ctl00_cp_f_daneOs_revTxtNazwisko");
    ctl00_cp_f_daneOs_revTxtNazwisko.controltovalidate = "ctl00_cp_f_daneOs_txtNazwisko";
    ctl00_cp_f_daneOs_revTxtNazwisko.errormessage = "Неправильное значение";
    ctl00_cp_f_daneOs_revTxtNazwisko.display = "Dynamic";
    ctl00_cp_f_daneOs_revTxtNazwisko.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_revTxtNazwisko.validationexpression = "^([A-Za-z \\-\\\']*)$";
    var ctl00_cp_f_daneOs_rfvTxtNazwisko = document.all ? document.all["ctl00_cp_f_daneOs_rfvTxtNazwisko"] : document.getElementById("ctl00_cp_f_daneOs_rfvTxtNazwisko");
    ctl00_cp_f_daneOs_rfvTxtNazwisko.controltovalidate = "ctl00_cp_f_daneOs_txtNazwisko";
    ctl00_cp_f_daneOs_rfvTxtNazwisko.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvTxtNazwisko.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvTxtNazwisko.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvTxtNazwisko.initialvalue = "";
    var ctl00_cp_f_daneOs_revTxtNazwiskoRodowe = document.all ? document.all["ctl00_cp_f_daneOs_revTxtNazwiskoRodowe"] : document.getElementById("ctl00_cp_f_daneOs_revTxtNazwiskoRodowe");
    ctl00_cp_f_daneOs_revTxtNazwiskoRodowe.controltovalidate = "ctl00_cp_f_daneOs_txtNazwiskoRodowe";
    ctl00_cp_f_daneOs_revTxtNazwiskoRodowe.errormessage = "Неправильное значение";
    ctl00_cp_f_daneOs_revTxtNazwiskoRodowe.display = "Dynamic";
    ctl00_cp_f_daneOs_revTxtNazwiskoRodowe.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_revTxtNazwiskoRodowe.validationexpression = "^([A-Za-z \\-\\\']*)$";
    var ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe = document.all ? document.all["ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe"] : document.getElementById("ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe");
    ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe.controltovalidate = "ctl00_cp_f_daneOs_txtNazwiskoRodowe";
    ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvTxtNazwiskoRodowe.initialvalue = "";
    var ctl00_cp_f_daneOs_revTxtImiona = document.all ? document.all["ctl00_cp_f_daneOs_revTxtImiona"] : document.getElementById("ctl00_cp_f_daneOs_revTxtImiona");
    ctl00_cp_f_daneOs_revTxtImiona.controltovalidate = "ctl00_cp_f_daneOs_txtImiona";
    ctl00_cp_f_daneOs_revTxtImiona.errormessage = "Неправильное значение";
    ctl00_cp_f_daneOs_revTxtImiona.display = "Dynamic";
    ctl00_cp_f_daneOs_revTxtImiona.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_revTxtImiona.validationexpression = "^([A-Za-z \\-\\\']*)$";
    var ctl00_cp_f_daneOs_rfvTxtImiona = document.all ? document.all["ctl00_cp_f_daneOs_rfvTxtImiona"] : document.getElementById("ctl00_cp_f_daneOs_rfvTxtImiona");
    ctl00_cp_f_daneOs_rfvTxtImiona.controltovalidate = "ctl00_cp_f_daneOs_txtImiona";
    ctl00_cp_f_daneOs_rfvTxtImiona.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvTxtImiona.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvTxtImiona.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvTxtImiona.initialvalue = "";
    var ctl00_cp_f_daneOs_rvTxtDataUrodzin = document.all ? document.all["ctl00_cp_f_daneOs_rvTxtDataUrodzin"] : document.getElementById("ctl00_cp_f_daneOs_rvTxtDataUrodzin");
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.controltovalidate = "ctl00_cp_f_daneOs_txtDataUrodzin";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.errormessage = "Неправильное значение";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.display = "Dynamic";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.type = "Date";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.dateorder = "dmy";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.cutoffyear = "2029";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.century = "2000";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.evaluationfunction = "RangeValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.maximumvalue = "2013-04-06";
    ctl00_cp_f_daneOs_rvTxtDataUrodzin.minimumvalue = "1893-04-06";
    var ctl00_cp_f_daneOs_revTxtDataUrodzin = document.all ? document.all["ctl00_cp_f_daneOs_revTxtDataUrodzin"] : document.getElementById("ctl00_cp_f_daneOs_revTxtDataUrodzin");
    ctl00_cp_f_daneOs_revTxtDataUrodzin.controltovalidate = "ctl00_cp_f_daneOs_txtDataUrodzin";
    ctl00_cp_f_daneOs_revTxtDataUrodzin.errormessage = "Неправильное значение";
    ctl00_cp_f_daneOs_revTxtDataUrodzin.display = "Dynamic";
    ctl00_cp_f_daneOs_revTxtDataUrodzin.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_revTxtDataUrodzin.validationexpression = "^(?:(?:1[7-9]|20)\\d\\d)-(?:(?:02-(?:[01]\\d|2[0-8]))|(?:(?:0[469]|11)-(?:[0-2]\\d|30))|(?:(?:0[13578]|1[02])-(?:[0-2]\\d|3[0-1])))$|^(?:(?:(?:(?:1[7-9]|20)(?:[02468][48]|[2468][048]|[13579][26]))|2000)-02-29)$";
    var ctl00_cp_f_daneOs_rfvTxtDataUrodzin = document.all ? document.all["ctl00_cp_f_daneOs_rfvTxtDataUrodzin"] : document.getElementById("ctl00_cp_f_daneOs_rfvTxtDataUrodzin");
    ctl00_cp_f_daneOs_rfvTxtDataUrodzin.controltovalidate = "ctl00_cp_f_daneOs_txtDataUrodzin";
    ctl00_cp_f_daneOs_rfvTxtDataUrodzin.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvTxtDataUrodzin.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvTxtDataUrodzin.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvTxtDataUrodzin.initialvalue = "";
    var ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia = document.all ? document.all["ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia"] : document.getElementById("ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia");
    ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia.controltovalidate = "ctl00_cp_f_daneOs_txtMiejsceUrodzenia";
    ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia.errormessage = "Неправильное значение";
    ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia.display = "Dynamic";
    ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_revTxtMiejsceUrodzenia.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia = document.all ? document.all["ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia"] : document.getElementById("ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia");
    ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia.controltovalidate = "ctl00_cp_f_daneOs_txtMiejsceUrodzenia";
    ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvTxtMiejsceUrodzenia.initialvalue = "";
    var ctl00_cp_f_daneOs_rfvCbKrajUrodzenia = document.all ? document.all["ctl00_cp_f_daneOs_rfvCbKrajUrodzenia"] : document.getElementById("ctl00_cp_f_daneOs_rfvCbKrajUrodzenia");
    ctl00_cp_f_daneOs_rfvCbKrajUrodzenia.controltovalidate = "ctl00_cp_f_daneOs_cbKrajUrodzenia";
    ctl00_cp_f_daneOs_rfvCbKrajUrodzenia.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvCbKrajUrodzenia.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvCbKrajUrodzenia.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvCbKrajUrodzenia.initialvalue = "";
    var ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo = document.all ? document.all["ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo"] : document.getElementById("ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo");
    ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo.controltovalidate = "ctl00_cp_f_daneOs_cbObecneObywatelstwo";
    ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvCbObecneObywatelstwo.initialvalue = "";
    var ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo = document.all ? document.all["ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo"] : document.getElementById("ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo");
    ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo.controltovalidate = "ctl00_cp_f_daneOs_cbPosiadaneObywatelstwo";
    ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvCbPosiadaneObywatelstwo.initialvalue = "";
    var ctl00_cp_f_daneOs_rfvRbPlec = document.all ? document.all["ctl00_cp_f_daneOs_rfvRbPlec"] : document.getElementById("ctl00_cp_f_daneOs_rfvRbPlec");
    ctl00_cp_f_daneOs_rfvRbPlec.controltovalidate = "ctl00_cp_f_daneOs_rbPlec";
    ctl00_cp_f_daneOs_rfvRbPlec.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvRbPlec.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvRbPlec.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvRbPlec.initialvalue = "";
    var ctl00_cp_f_daneOs_rfvRbStanCywilny = document.all ? document.all["ctl00_cp_f_daneOs_rfvRbStanCywilny"] : document.getElementById("ctl00_cp_f_daneOs_rfvRbStanCywilny");
    ctl00_cp_f_daneOs_rfvRbStanCywilny.controltovalidate = "ctl00_cp_f_daneOs_rbStanCywilny";
    ctl00_cp_f_daneOs_rfvRbStanCywilny.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_daneOs_rfvRbStanCywilny.display = "Dynamic";
    ctl00_cp_f_daneOs_rfvRbStanCywilny.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_daneOs_rfvRbStanCywilny.initialvalue = "";
    var ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny = document.all ? document.all["ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny"] : document.getElementById("ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny");
    ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny.controltovalidate = "ctl00_cp_f_txt5NumerDowodu";
    ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny.errormessage = "*";
    ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny.display = "Dynamic";
    ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny.enabled = "False";
    ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_RegularExpressionValidatorNrIdentyfikacyjny.validationexpression = "[a-zA-Z0-9]+";
    var ctl00_cp_f_rfvNrIdentyfikacyjny = document.all ? document.all["ctl00_cp_f_rfvNrIdentyfikacyjny"] : document.getElementById("ctl00_cp_f_rfvNrIdentyfikacyjny");
    ctl00_cp_f_rfvNrIdentyfikacyjny.controltovalidate = "ctl00_cp_f_txt5NumerDowodu";
    ctl00_cp_f_rfvNrIdentyfikacyjny.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfvNrIdentyfikacyjny.display = "Dynamic";
    ctl00_cp_f_rfvNrIdentyfikacyjny.enabled = "False";
    ctl00_cp_f_rfvNrIdentyfikacyjny.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfvNrIdentyfikacyjny.initialvalue = "";
    var ctl00_cp_f_rfv_13 = document.all ? document.all["ctl00_cp_f_rfv_13"] : document.getElementById("ctl00_cp_f_rfv_13");
    ctl00_cp_f_rfv_13.controltovalidate = "ctl00_cp_f_rbl13";
    ctl00_cp_f_rfv_13.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_13.display = "Dynamic";
    ctl00_cp_f_rfv_13.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_13.initialvalue = "";
    var ctl00_cp_f_rfvKonsultacja1 = document.all ? document.all["ctl00_cp_f_rfvKonsultacja1"] : document.getElementById("ctl00_cp_f_rfvKonsultacja1");
    ctl00_cp_f_rfvKonsultacja1.controltovalidate = "ctl00_cp_f_txt13Rodzaj";
    ctl00_cp_f_rfvKonsultacja1.errormessage = "Неправильное значение";
    ctl00_cp_f_rfvKonsultacja1.display = "Dynamic";
    ctl00_cp_f_rfvKonsultacja1.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfvKonsultacja1.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_rfv_14 = document.all ? document.all["ctl00_cp_f_rfv_14"] : document.getElementById("ctl00_cp_f_rfv_14");
    ctl00_cp_f_rfv_14.controltovalidate = "ctl00_cp_f_txt14NumerPaszportu";
    ctl00_cp_f_rfv_14.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_14.display = "Dynamic";
    ctl00_cp_f_rfv_14.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_14.initialvalue = "";
    var ctl00_cp_f_rfvKonsultacja9 = document.all ? document.all["ctl00_cp_f_rfvKonsultacja9"] : document.getElementById("ctl00_cp_f_rfvKonsultacja9");
    ctl00_cp_f_rfvKonsultacja9.controltovalidate = "ctl00_cp_f_txt14NumerPaszportu";
    ctl00_cp_f_rfvKonsultacja9.errormessage = "Неправильное значение";
    ctl00_cp_f_rfvKonsultacja9.display = "Dynamic";
    ctl00_cp_f_rfvKonsultacja9.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfvKonsultacja9.validationexpression = "^[A-Za-z0-9]*$";
    var ctl00_cp_f_rfv_16 = document.all ? document.all["ctl00_cp_f_rfv_16"] : document.getElementById("ctl00_cp_f_rfv_16");
    ctl00_cp_f_rfv_16.controltovalidate = "ctl00_cp_f_txt16WydanyDnia";
    ctl00_cp_f_rfv_16.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_16.display = "Dynamic";
    ctl00_cp_f_rfv_16.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_16.initialvalue = "";
    var ctl00_cp_f_rev16 = document.all ? document.all["ctl00_cp_f_rev16"] : document.getElementById("ctl00_cp_f_rev16");
    ctl00_cp_f_rev16.controltovalidate = "ctl00_cp_f_txt16WydanyDnia";
    ctl00_cp_f_rev16.errormessage = "Неправильное значение";
    ctl00_cp_f_rev16.display = "Dynamic";
    ctl00_cp_f_rev16.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rev16.validationexpression = "^(?:(?:1[7-9]|20)\\d\\d)-(?:(?:02-(?:[01]\\d|2[0-8]))|(?:(?:0[469]|11)-(?:[0-2]\\d|30))|(?:(?:0[13578]|1[02])-(?:[0-2]\\d|3[0-1])))$|^(?:(?:(?:(?:1[7-9]|20)(?:[02468][48]|[2468][048]|[13579][26]))|2000)-02-29)$";
    var ctl00_cp_f_rfv_17 = document.all ? document.all["ctl00_cp_f_rfv_17"] : document.getElementById("ctl00_cp_f_rfv_17");
    ctl00_cp_f_rfv_17.controltovalidate = "ctl00_cp_f_txt17WaznyDo";
    ctl00_cp_f_rfv_17.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_17.display = "Dynamic";
    ctl00_cp_f_rfv_17.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_17.initialvalue = "";
    var ctl00_cp_f_cv17b = document.all ? document.all["ctl00_cp_f_cv17b"] : document.getElementById("ctl00_cp_f_cv17b");
    ctl00_cp_f_cv17b.controltovalidate = "ctl00_cp_f_txt17WaznyDo";
    ctl00_cp_f_cv17b.errormessage = "Неправильное значение";
    ctl00_cp_f_cv17b.display = "Dynamic";
    ctl00_cp_f_cv17b.type = "Date";
    ctl00_cp_f_cv17b.dateorder = "dmy";
    ctl00_cp_f_cv17b.cutoffyear = "2029";
    ctl00_cp_f_cv17b.century = "2000";
    ctl00_cp_f_cv17b.evaluationfunction = "CompareValidatorEvaluateIsValid";
    ctl00_cp_f_cv17b.valuetocompare = "2013-04-06";
    ctl00_cp_f_cv17b.operator = "GreaterThanEqual";
    var ctl00_cp_f_rev17 = document.all ? document.all["ctl00_cp_f_rev17"] : document.getElementById("ctl00_cp_f_rev17");
    ctl00_cp_f_rev17.controltovalidate = "ctl00_cp_f_txt17WaznyDo";
    ctl00_cp_f_rev17.errormessage = "Неправильное значение";
    ctl00_cp_f_rev17.display = "Dynamic";
    ctl00_cp_f_rev17.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rev17.validationexpression = "^(?:(?:1[7-9]|20)\\d\\d)-(?:(?:02-(?:[01]\\d|2[0-8]))|(?:(?:0[469]|11)-(?:[0-2]\\d|30))|(?:(?:0[13578]|1[02])-(?:[0-2]\\d|3[0-1])))$|^(?:(?:(?:(?:1[7-9]|20)(?:[02468][48]|[2468][048]|[13579][26]))|2000)-02-29)$";
    var ctl00_cp_f_rfvWydanyPrzez = document.all ? document.all["ctl00_cp_f_rfvWydanyPrzez"] : document.getElementById("ctl00_cp_f_rfvWydanyPrzez");
    ctl00_cp_f_rfvWydanyPrzez.controltovalidate = "ctl00_cp_f_txt15WydanyPrzez";
    ctl00_cp_f_rfvWydanyPrzez.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfvWydanyPrzez.display = "Dynamic";
    ctl00_cp_f_rfvWydanyPrzez.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfvWydanyPrzez.initialvalue = "";
    var ctl00_cp_f_rfvKonsultacja10 = document.all ? document.all["ctl00_cp_f_rfvKonsultacja10"] : document.getElementById("ctl00_cp_f_rfvKonsultacja10");
    ctl00_cp_f_rfvKonsultacja10.controltovalidate = "ctl00_cp_f_txt15WydanyPrzez";
    ctl00_cp_f_rfvKonsultacja10.errormessage = "Неправильное значение";
    ctl00_cp_f_rfvKonsultacja10.display = "Dynamic";
    ctl00_cp_f_rfvKonsultacja10.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfvKonsultacja10.validationexpression = "^([-A-Za-z0-9 \\\'.,:;/-@]*)$";
    var ctl00_cp_f_rfv45a = document.all ? document.all["ctl00_cp_f_rfv45a"] : document.getElementById("ctl00_cp_f_rfv45a");
    ctl00_cp_f_rfv45a.controltovalidate = "ctl00_cp_f_ddl45Panstwo";
    ctl00_cp_f_rfv45a.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv45a.display = "Dynamic";
    ctl00_cp_f_rfv45a.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv45a.initialvalue = "";
    var ctl00_cp_f_rfv17Stan = document.all ? document.all["ctl00_cp_f_rfv17Stan"] : document.getElementById("ctl00_cp_f_rfv17Stan");
    ctl00_cp_f_rfv17Stan.controltovalidate = "ctl00_cp_f_txt45StanProwincja";
    ctl00_cp_f_rfv17Stan.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv17Stan.display = "Dynamic";
    ctl00_cp_f_rfv17Stan.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv17Stan.initialvalue = "";
    var ctl00_cp_f_rfv45c = document.all ? document.all["ctl00_cp_f_rfv45c"] : document.getElementById("ctl00_cp_f_rfv45c");
    ctl00_cp_f_rfv45c.controltovalidate = "ctl00_cp_f_txt45Miejscowosc";
    ctl00_cp_f_rfv45c.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv45c.display = "Dynamic";
    ctl00_cp_f_rfv45c.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv45c.initialvalue = "";
    var ctl00_cp_f_rfv45d = document.all ? document.all["ctl00_cp_f_rfv45d"] : document.getElementById("ctl00_cp_f_rfv45d");
    ctl00_cp_f_rfv45d.controltovalidate = "ctl00_cp_f_txt45Kod";
    ctl00_cp_f_rfv45d.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv45d.display = "Dynamic";
    ctl00_cp_f_rfv45d.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv45d.initialvalue = "";
    var ctl00_cp_f_rfv45e = document.all ? document.all["ctl00_cp_f_rfv45e"] : document.getElementById("ctl00_cp_f_rfv45e");
    ctl00_cp_f_rfv45e.controltovalidate = "ctl00_cp_f_txt45Adres";
    ctl00_cp_f_rfv45e.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv45e.display = "Dynamic";
    ctl00_cp_f_rfv45e.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv45e.initialvalue = "";
    var ctl00_cp_f_RequiredFieldValidator3 = document.all ? document.all["ctl00_cp_f_RequiredFieldValidator3"] : document.getElementById("ctl00_cp_f_RequiredFieldValidator3");
    ctl00_cp_f_RequiredFieldValidator3.controltovalidate = "ctl00_cp_f_txt17Email";
    ctl00_cp_f_RequiredFieldValidator3.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_RequiredFieldValidator3.display = "Dynamic";
    ctl00_cp_f_RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_RequiredFieldValidator3.initialvalue = "";
    var ctl00_cp_f_RegularExpressionValidator1 = document.all ? document.all["ctl00_cp_f_RegularExpressionValidator1"] : document.getElementById("ctl00_cp_f_RegularExpressionValidator1");
    ctl00_cp_f_RegularExpressionValidator1.controltovalidate = "ctl00_cp_f_txt17Email";
    ctl00_cp_f_RegularExpressionValidator1.errormessage = "Неправильное значение";
    ctl00_cp_f_RegularExpressionValidator1.display = "Dynamic";
    ctl00_cp_f_RegularExpressionValidator1.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_RegularExpressionValidator1.validationexpression = "^(?:[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[A-Za-z0-9-]*[A-Za-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])$";
    var ctl00_cp_f_rfv17prtel = document.all ? document.all["ctl00_cp_f_rfv17prtel"] : document.getElementById("ctl00_cp_f_rfv17prtel");
    ctl00_cp_f_rfv17prtel.controltovalidate = "ctl00_cp_f_txt46TelefonPrefiks0";
    ctl00_cp_f_rfv17prtel.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv17prtel.display = "Dynamic";
    ctl00_cp_f_rfv17prtel.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv17prtel.initialvalue = "";
    var ctl00_cp_f_rfv17telnr = document.all ? document.all["ctl00_cp_f_rfv17telnr"] : document.getElementById("ctl00_cp_f_rfv17telnr");
    ctl00_cp_f_rfv17telnr.controltovalidate = "ctl00_cp_f_txt46TelefonNumer0";
    ctl00_cp_f_rfv17telnr.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv17telnr.display = "Dynamic";
    ctl00_cp_f_rfv17telnr.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv17telnr.initialvalue = "";
    var ctl00_cp_f_rfv18 = document.all ? document.all["ctl00_cp_f_rfv18"] : document.getElementById("ctl00_cp_f_rfv18");
    ctl00_cp_f_rfv18.controltovalidate = "ctl00_cp_f_rbl18";
    ctl00_cp_f_rfv18.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv18.display = "Dynamic";
    ctl00_cp_f_rfv18.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv18.initialvalue = "";
    var ctl00_cp_f_rfv_19_zawod = document.all ? document.all["ctl00_cp_f_rfv_19_zawod"] : document.getElementById("ctl00_cp_f_rfv_19_zawod");
    ctl00_cp_f_rfv_19_zawod.controltovalidate = "ctl00_cp_f_ddl19WykonywanyZawod";
    ctl00_cp_f_rfv_19_zawod.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_19_zawod.display = "Dynamic";
    ctl00_cp_f_rfv_19_zawod.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_19_zawod.initialvalue = "";
    var ctl00_cp_f_rfv_20_panstwo = document.all ? document.all["ctl00_cp_f_rfv_20_panstwo"] : document.getElementById("ctl00_cp_f_rfv_20_panstwo");
    ctl00_cp_f_rfv_20_panstwo.controltovalidate = "ctl00_cp_f_dd20bPanstwo";
    ctl00_cp_f_rfv_20_panstwo.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_panstwo.display = "Dynamic";
    ctl00_cp_f_rfv_20_panstwo.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_panstwo.initialvalue = "";
    var ctl00_cp_f_rfv_20_stan = document.all ? document.all["ctl00_cp_f_rfv_20_stan"] : document.getElementById("ctl00_cp_f_rfv_20_stan");
    ctl00_cp_f_rfv_20_stan.controltovalidate = "ctl00_cp_f_txt20cStanProwincja";
    ctl00_cp_f_rfv_20_stan.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_stan.display = "Dynamic";
    ctl00_cp_f_rfv_20_stan.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_stan.initialvalue = "";
    var ctl00_cp_f_rfv_20_miejscowosc = document.all ? document.all["ctl00_cp_f_rfv_20_miejscowosc"] : document.getElementById("ctl00_cp_f_rfv_20_miejscowosc");
    ctl00_cp_f_rfv_20_miejscowosc.controltovalidate = "ctl00_cp_f_txt20dMiejscowosc";
    ctl00_cp_f_rfv_20_miejscowosc.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_miejscowosc.display = "Dynamic";
    ctl00_cp_f_rfv_20_miejscowosc.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_miejscowosc.initialvalue = "";
    var ctl00_cp_f_rfv_20_kodpocztowy = document.all ? document.all["ctl00_cp_f_rfv_20_kodpocztowy"] : document.getElementById("ctl00_cp_f_rfv_20_kodpocztowy");
    ctl00_cp_f_rfv_20_kodpocztowy.controltovalidate = "ctl00_cp_f_txt20eKodPocztowy";
    ctl00_cp_f_rfv_20_kodpocztowy.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_kodpocztowy.display = "Dynamic";
    ctl00_cp_f_rfv_20_kodpocztowy.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_kodpocztowy.initialvalue = "";
    var ctl00_cp_f_rfv_20_adres = document.all ? document.all["ctl00_cp_f_rfv_20_adres"] : document.getElementById("ctl00_cp_f_rfv_20_adres");
    ctl00_cp_f_rfv_20_adres.controltovalidate = "ctl00_cp_f_txt20fAdres";
    ctl00_cp_f_rfv_20_adres.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_adres.display = "Dynamic";
    ctl00_cp_f_rfv_20_adres.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_adres.initialvalue = "";
    var ctl00_cp_f_rfv_20_prefix = document.all ? document.all["ctl00_cp_f_rfv_20_prefix"] : document.getElementById("ctl00_cp_f_rfv_20_prefix");
    ctl00_cp_f_rfv_20_prefix.controltovalidate = "ctl00_cp_f_txt20gPrefix";
    ctl00_cp_f_rfv_20_prefix.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_prefix.display = "Dynamic";
    ctl00_cp_f_rfv_20_prefix.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_prefix.initialvalue = "";
    var ctl00_cp_f_rfv_20_telefon = document.all ? document.all["ctl00_cp_f_rfv_20_telefon"] : document.getElementById("ctl00_cp_f_rfv_20_telefon");
    ctl00_cp_f_rfv_20_telefon.controltovalidate = "ctl00_cp_f_txt20hTelefon";
    ctl00_cp_f_rfv_20_telefon.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_telefon.display = "Dynamic";
    ctl00_cp_f_rfv_20_telefon.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_telefon.initialvalue = "";
    var ctl00_cp_f_rfv_20_nazwa = document.all ? document.all["ctl00_cp_f_rfv_20_nazwa"] : document.getElementById("ctl00_cp_f_rfv_20_nazwa");
    ctl00_cp_f_rfv_20_nazwa.controltovalidate = "ctl00_cp_f_txt20Nazwa";
    ctl00_cp_f_rfv_20_nazwa.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_20_nazwa.display = "Dynamic";
    ctl00_cp_f_rfv_20_nazwa.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20_nazwa.initialvalue = "";
    var ctl00_cp_f_rfv_20Email = document.all ? document.all["ctl00_cp_f_rfv_20Email"] : document.getElementById("ctl00_cp_f_rfv_20Email");
    ctl00_cp_f_rfv_20Email.controltovalidate = "ctl00_cp_f_txt20Email";
    ctl00_cp_f_rfv_20Email.errormessage = "Неправильное значение";
    ctl00_cp_f_rfv_20Email.display = "Dynamic";
    ctl00_cp_f_rfv_20Email.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_20Email.validationexpression = "^(?:[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[A-Za-z0-9-]*[A-Za-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])$";
    var ctl00_cp_f_rfvKonsultacja11 = document.all ? document.all["ctl00_cp_f_rfvKonsultacja11"] : document.getElementById("ctl00_cp_f_rfvKonsultacja11");
    ctl00_cp_f_rfvKonsultacja11.controltovalidate = "ctl00_cp_f_txt29CelPodrozy";
    ctl00_cp_f_rfvKonsultacja11.errormessage = "Неправильное значение";
    ctl00_cp_f_rfvKonsultacja11.display = "Dynamic";
    ctl00_cp_f_rfvKonsultacja11.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfvKonsultacja11.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_rfv_21 = document.all ? document.all["ctl00_cp_f_rfv_21"] : document.getElementById("ctl00_cp_f_rfv_21");
    ctl00_cp_f_rfv_21.controltovalidate = "ctl00_cp_f_ddl21KrajDocelowy";
    ctl00_cp_f_rfv_21.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_21.display = "Dynamic";
    ctl00_cp_f_rfv_21.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_21.initialvalue = "";
    var ctl00_cp_f_RequiredFieldValidator1 = document.all ? document.all["ctl00_cp_f_RequiredFieldValidator1"] : document.getElementById("ctl00_cp_f_RequiredFieldValidator1");
    ctl00_cp_f_RequiredFieldValidator1.controltovalidate = "ctl00_cp_f_ddl21KrajDocelowy";
    ctl00_cp_f_RequiredFieldValidator1.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_RequiredFieldValidator1.display = "Dynamic";
    ctl00_cp_f_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_RequiredFieldValidator1.initialvalue = "";
    var ctl00_cp_f_rvl24 = document.all ? document.all["ctl00_cp_f_rvl24"] : document.getElementById("ctl00_cp_f_rvl24");
    ctl00_cp_f_rvl24.controltovalidate = "ctl00_cp_f_rbl24";
    ctl00_cp_f_rvl24.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rvl24.display = "Dynamic";
    ctl00_cp_f_rvl24.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rvl24.initialvalue = "";
    var ctl00_cp_f_rfv_25 = document.all ? document.all["ctl00_cp_f_rfv_25"] : document.getElementById("ctl00_cp_f_rfv_25");
    ctl00_cp_f_rfv_25.controltovalidate = "ctl00_cp_f_txt25OkresPobytu";
    ctl00_cp_f_rfv_25.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv_25.display = "Dynamic";
    ctl00_cp_f_rfv_25.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv_25.initialvalue = "";
    var ctl00_cp_f_rvLotniskowa = document.all ? document.all["ctl00_cp_f_rvLotniskowa"] : document.getElementById("ctl00_cp_f_rvLotniskowa");
    ctl00_cp_f_rvLotniskowa.controltovalidate = "ctl00_cp_f_txt25OkresPobytu";
    ctl00_cp_f_rvLotniskowa.errormessage = "Неправильное значение";
    ctl00_cp_f_rvLotniskowa.display = "Dynamic";
    ctl00_cp_f_rvLotniskowa.type = "Integer";
    ctl00_cp_f_rvLotniskowa.evaluationfunction = "RangeValidatorEvaluateIsValid";
    ctl00_cp_f_rvLotniskowa.maximumvalue = "90";
    ctl00_cp_f_rvLotniskowa.minimumvalue = "1";
    var ctl00_cp_f_rfv30 = document.all ? document.all["ctl00_cp_f_rfv30"] : document.getElementById("ctl00_cp_f_rfv30");
    ctl00_cp_f_rfv30.controltovalidate = "ctl00_cp_f_txt30DataWjazdu";
    ctl00_cp_f_rfv30.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv30.display = "Dynamic";
    ctl00_cp_f_rfv30.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv30.initialvalue = "";
    var ctl00_cp_f_rev30 = document.all ? document.all["ctl00_cp_f_rev30"] : document.getElementById("ctl00_cp_f_rev30");
    ctl00_cp_f_rev30.controltovalidate = "ctl00_cp_f_txt30DataWjazdu";
    ctl00_cp_f_rev30.errormessage = "Неправильное значение";
    ctl00_cp_f_rev30.display = "Dynamic";
    ctl00_cp_f_rev30.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rev30.validationexpression = "^(?:(?:1[7-9]|20)\\d\\d)-(?:(?:02-(?:[01]\\d|2[0-8]))|(?:(?:0[469]|11)-(?:[0-2]\\d|30))|(?:(?:0[13578]|1[02])-(?:[0-2]\\d|3[0-1])))$|^(?:(?:(?:(?:1[7-9]|20)(?:[02468][48]|[2468][048]|[13579][26]))|2000)-02-29)$";
    var ctl00_cp_f_rev31 = document.all ? document.all["ctl00_cp_f_rev31"] : document.getElementById("ctl00_cp_f_rev31");
    ctl00_cp_f_rev31.controltovalidate = "ctl00_cp_f_txt31DataWyjazdu";
    ctl00_cp_f_rev31.errormessage = "Неправильное значение";
    ctl00_cp_f_rev31.display = "Dynamic";
    ctl00_cp_f_rev31.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rev31.validationexpression = "^(?:(?:1[7-9]|20)\\d\\d)-(?:(?:02-(?:[01]\\d|2[0-8]))|(?:(?:0[469]|11)-(?:[0-2]\\d|30))|(?:(?:0[13578]|1[02])-(?:[0-2]\\d|3[0-1])))$|^(?:(?:(?:(?:1[7-9]|20)(?:[02468][48]|[2468][048]|[13579][26]))|2000)-02-29)$";
    var ctl00_cp_f_RequiredFieldValidator2 = document.all ? document.all["ctl00_cp_f_RequiredFieldValidator2"] : document.getElementById("ctl00_cp_f_RequiredFieldValidator2");
    ctl00_cp_f_RequiredFieldValidator2.controltovalidate = "ctl00_cp_f_txt31DataWyjazdu";
    ctl00_cp_f_RequiredFieldValidator2.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_RequiredFieldValidator2.display = "Dynamic";
    ctl00_cp_f_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_RequiredFieldValidator2.initialvalue = "";
    var ctl00_cp_f_rfv26 = document.all ? document.all["ctl00_cp_f_rfv26"] : document.getElementById("ctl00_cp_f_rfv26");
    ctl00_cp_f_rfv26.controltovalidate = "ctl00_cp_f_rbl26";
    ctl00_cp_f_rfv26.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv26.display = "Dynamic";
    ctl00_cp_f_rfv26.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv26.initialvalue = "";
    var ctl00_cp_f_ctrl31__rfv34Rodzaj = document.all ? document.all["ctl00_cp_f_ctrl31__rfv34Rodzaj"] : document.getElementById("ctl00_cp_f_ctrl31__rfv34Rodzaj");
    ctl00_cp_f_ctrl31__rfv34Rodzaj.controltovalidate = "ctl00_cp_f_ctrl31__rbl34";
    ctl00_cp_f_ctrl31__rfv34Rodzaj.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_ctrl31__rfv34Rodzaj.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfv34Rodzaj.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfv34Rodzaj.initialvalue = "";
    var ctl00_cp_f_ctrl31__rfv34_2 = document.all ? document.all["ctl00_cp_f_ctrl31__rfv34_2"] : document.getElementById("ctl00_cp_f_ctrl31__rfv34_2");
    ctl00_cp_f_ctrl31__rfv34_2.controltovalidate = "ctl00_cp_f_ctrl31__ddl34panstwo";
    ctl00_cp_f_ctrl31__rfv34_2.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_ctrl31__rfv34_2.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfv34_2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfv34_2.initialvalue = "";
    var ctl00_cp_f_ctrl31__rfv34_3 = document.all ? document.all["ctl00_cp_f_ctrl31__rfv34_3"] : document.getElementById("ctl00_cp_f_ctrl31__rfv34_3");
    ctl00_cp_f_ctrl31__rfv34_3.controltovalidate = "ctl00_cp_f_ctrl31__txt34miejscowosc";
    ctl00_cp_f_ctrl31__rfv34_3.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_ctrl31__rfv34_3.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfv34_3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfv34_3.initialvalue = "";
    var ctl00_cp_f_ctrl31__rfvKonsultacja9 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja9"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja9");
    ctl00_cp_f_ctrl31__rfvKonsultacja9.controltovalidate = "ctl00_cp_f_ctrl31__txt34miejscowosc";
    ctl00_cp_f_ctrl31__rfvKonsultacja9.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja9.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja9.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja9.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfv34_4 = document.all ? document.all["ctl00_cp_f_ctrl31__rfv34_4"] : document.getElementById("ctl00_cp_f_ctrl31__rfv34_4");
    ctl00_cp_f_ctrl31__rfv34_4.controltovalidate = "ctl00_cp_f_ctrl31__txt34kod";
    ctl00_cp_f_ctrl31__rfv34_4.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_ctrl31__rfv34_4.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfv34_4.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfv34_4.initialvalue = "";
    var ctl00_cp_f_ctrl31__rfvKonsultacja10 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja10"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja10");
    ctl00_cp_f_ctrl31__rfvKonsultacja10.controltovalidate = "ctl00_cp_f_ctrl31__txt34kod";
    ctl00_cp_f_ctrl31__rfvKonsultacja10.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja10.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja10.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja10.validationexpression = "^([-A-Za-z0-9 .,:;@]*)$";
    var ctl00_cp_f_ctrl31__rfvKonsultacja11 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja11"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja11");
    ctl00_cp_f_ctrl31__rfvKonsultacja11.controltovalidate = "ctl00_cp_f_ctrl31__txt34prefikstel";
    ctl00_cp_f_ctrl31__rfvKonsultacja11.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja11.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja11.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja11.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfvKonsultacja12 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja12"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja12");
    ctl00_cp_f_ctrl31__rfvKonsultacja12.controltovalidate = "ctl00_cp_f_ctrl31__txt34tel";
    ctl00_cp_f_ctrl31__rfvKonsultacja12.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja12.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja12.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja12.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfvKonsultacja13 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja13"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja13");
    ctl00_cp_f_ctrl31__rfvKonsultacja13.controltovalidate = "ctl00_cp_f_ctrl31__txt34prefiksfax";
    ctl00_cp_f_ctrl31__rfvKonsultacja13.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja13.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja13.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja13.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfvKonsultacja14 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja14"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja14");
    ctl00_cp_f_ctrl31__rfvKonsultacja14.controltovalidate = "ctl00_cp_f_ctrl31__txt34fax";
    ctl00_cp_f_ctrl31__rfvKonsultacja14.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja14.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja14.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja14.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfv34_5 = document.all ? document.all["ctl00_cp_f_ctrl31__rfv34_5"] : document.getElementById("ctl00_cp_f_ctrl31__rfv34_5");
    ctl00_cp_f_ctrl31__rfv34_5.controltovalidate = "ctl00_cp_f_ctrl31__txt34adres";
    ctl00_cp_f_ctrl31__rfv34_5.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_ctrl31__rfv34_5.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfv34_5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfv34_5.initialvalue = "";
    var ctl00_cp_f_ctrl31__rfvKonsultacja15 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja15"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja15");
    ctl00_cp_f_ctrl31__rfvKonsultacja15.controltovalidate = "ctl00_cp_f_ctrl31__txt34adres";
    ctl00_cp_f_ctrl31__rfvKonsultacja15.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja15.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja15.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja15.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfvKonsultacja16 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja16"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja16");
    ctl00_cp_f_ctrl31__rfvKonsultacja16.controltovalidate = "ctl00_cp_f_ctrl31__txt34NumerDomu";
    ctl00_cp_f_ctrl31__rfvKonsultacja16.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja16.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja16.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja16.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfvKonsultacja17 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja17"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja17");
    ctl00_cp_f_ctrl31__rfvKonsultacja17.controltovalidate = "ctl00_cp_f_ctrl31__txt34NumerLokalu";
    ctl00_cp_f_ctrl31__rfvKonsultacja17.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja17.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja17.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja17.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_ctrl31__rfvKonsultacja18 = document.all ? document.all["ctl00_cp_f_ctrl31__rfvKonsultacja18"] : document.getElementById("ctl00_cp_f_ctrl31__rfvKonsultacja18");
    ctl00_cp_f_ctrl31__rfvKonsultacja18.controltovalidate = "ctl00_cp_f_ctrl31__txt34Email";
    ctl00_cp_f_ctrl31__rfvKonsultacja18.errormessage = "Неправильное значение";
    ctl00_cp_f_ctrl31__rfvKonsultacja18.display = "Dynamic";
    ctl00_cp_f_ctrl31__rfvKonsultacja18.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_ctrl31__rfvKonsultacja18.validationexpression = "^(?:[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[A-Za-z0-9-]*[A-Za-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])$";
    var ctl00_cp_f_rfv35Wybor = document.all ? document.all["ctl00_cp_f_rfv35Wybor"] : document.getElementById("ctl00_cp_f_rfv35Wybor");
    ctl00_cp_f_rfv35Wybor.controltovalidate = "ctl00_cp_f_rbl35";
    ctl00_cp_f_rfv35Wybor.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv35Wybor.display = "Dynamic";
    ctl00_cp_f_rfv35Wybor.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv35Wybor.initialvalue = "";
    var ctl00_cp_f_rfv35Sponsor = document.all ? document.all["ctl00_cp_f_rfv35Sponsor"] : document.getElementById("ctl00_cp_f_rfv35Sponsor");
    ctl00_cp_f_rfv35Sponsor.controltovalidate = "ctl00_cp_f_txt35KtoPokrywaKoszty";
    ctl00_cp_f_rfv35Sponsor.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv35Sponsor.display = "Dynamic";
    ctl00_cp_f_rfv35Sponsor.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv35Sponsor.initialvalue = "";
    var ctl00_cp_f_cv36 = document.all ? document.all["ctl00_cp_f_cv36"] : document.getElementById("ctl00_cp_f_cv36");
    ctl00_cp_f_cv36.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_cv36.display = "Dynamic";
    ctl00_cp_f_cv36.evaluationfunction = "CustomValidatorEvaluateIsValid";
    ctl00_cp_f_cv36.clientvalidationfunction = "ValidateSrodki";
    var ctl00_cp_f_rev36Data = document.all ? document.all["ctl00_cp_f_rev36Data"] : document.getElementById("ctl00_cp_f_rev36Data");
    ctl00_cp_f_rev36Data.controltovalidate = "ctl00_cp_f_txt36WazneDo";
    ctl00_cp_f_rev36Data.errormessage = "Неправильное значение";
    ctl00_cp_f_rev36Data.display = "Dynamic";
    ctl00_cp_f_rev36Data.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rev36Data.validationexpression = "^(?:(?:1[7-9]|20)\\d\\d)-(?:(?:02-(?:[01]\\d|2[0-8]))|(?:(?:0[469]|11)-(?:[0-2]\\d|30))|(?:(?:0[13578]|1[02])-(?:[0-2]\\d|3[0-1])))$|^(?:(?:(?:(?:1[7-9]|20)(?:[02468][48]|[2468][048]|[13579][26]))|2000)-02-29)$";
    var ctl00_cp_f_rfv43_Nazwisko = document.all ? document.all["ctl00_cp_f_rfv43_Nazwisko"] : document.getElementById("ctl00_cp_f_rfv43_Nazwisko");
    ctl00_cp_f_rfv43_Nazwisko.controltovalidate = "ctl00_cp_f_txt43Nazwisko";
    ctl00_cp_f_rfv43_Nazwisko.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv43_Nazwisko.display = "Dynamic";
    ctl00_cp_f_rfv43_Nazwisko.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv43_Nazwisko.initialvalue = "";
    var ctl00_cp_f_rfvKonsultacja12 = document.all ? document.all["ctl00_cp_f_rfvKonsultacja12"] : document.getElementById("ctl00_cp_f_rfvKonsultacja12");
    ctl00_cp_f_rfvKonsultacja12.controltovalidate = "ctl00_cp_f_txt43Nazwisko";
    ctl00_cp_f_rfvKonsultacja12.errormessage = "Неправильное значение";
    ctl00_cp_f_rfvKonsultacja12.display = "Dynamic";
    ctl00_cp_f_rfvKonsultacja12.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfvKonsultacja12.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_rfv43Imie = document.all ? document.all["ctl00_cp_f_rfv43Imie"] : document.getElementById("ctl00_cp_f_rfv43Imie");
    ctl00_cp_f_rfv43Imie.controltovalidate = "ctl00_cp_f_txt43Imie";
    ctl00_cp_f_rfv43Imie.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv43Imie.display = "Dynamic";
    ctl00_cp_f_rfv43Imie.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv43Imie.initialvalue = "";
    var ctl00_cp_f_rfvKonsultacja13 = document.all ? document.all["ctl00_cp_f_rfvKonsultacja13"] : document.getElementById("ctl00_cp_f_rfvKonsultacja13");
    ctl00_cp_f_rfvKonsultacja13.controltovalidate = "ctl00_cp_f_txt43Imie";
    ctl00_cp_f_rfvKonsultacja13.errormessage = "Неправильное значение";
    ctl00_cp_f_rfvKonsultacja13.display = "Dynamic";
    ctl00_cp_f_rfvKonsultacja13.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfvKonsultacja13.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_rfv43DataUrodzenia = document.all ? document.all["ctl00_cp_f_rfv43DataUrodzenia"] : document.getElementById("ctl00_cp_f_rfv43DataUrodzenia");
    ctl00_cp_f_rfv43DataUrodzenia.controltovalidate = "ctl00_cp_f_txt43DataUrodzenia";
    ctl00_cp_f_rfv43DataUrodzenia.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv43DataUrodzenia.display = "Dynamic";
    ctl00_cp_f_rfv43DataUrodzenia.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv43DataUrodzenia.initialvalue = "";
    var ctl00_cp_f_rev43DataUrodzenia = document.all ? document.all["ctl00_cp_f_rev43DataUrodzenia"] : document.getElementById("ctl00_cp_f_rev43DataUrodzenia");
    ctl00_cp_f_rev43DataUrodzenia.controltovalidate = "ctl00_cp_f_txt43DataUrodzenia";
    ctl00_cp_f_rev43DataUrodzenia.errormessage = "Неправильное значение";
    ctl00_cp_f_rev43DataUrodzenia.display = "Dynamic";
    ctl00_cp_f_rev43DataUrodzenia.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rev43DataUrodzenia.validationexpression = "^(?:(?:1[7-9]|20)\\d\\d)-(?:(?:02-(?:[01]\\d|2[0-8]))|(?:(?:0[469]|11)-(?:[0-2]\\d|30))|(?:(?:0[13578]|1[02])-(?:[0-2]\\d|3[0-1])))$|^(?:(?:(?:(?:1[7-9]|20)(?:[02468][48]|[2468][048]|[13579][26]))|2000)-02-29)$";
    var ctl00_cp_f_rfv43NumerPaszportu = document.all ? document.all["ctl00_cp_f_rfv43NumerPaszportu"] : document.getElementById("ctl00_cp_f_rfv43NumerPaszportu");
    ctl00_cp_f_rfv43NumerPaszportu.controltovalidate = "ctl00_cp_f_txt43Paszport";
    ctl00_cp_f_rfv43NumerPaszportu.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv43NumerPaszportu.display = "Dynamic";
    ctl00_cp_f_rfv43NumerPaszportu.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv43NumerPaszportu.initialvalue = "";
    var ctl00_cp_f_rfvKonsultacja14 = document.all ? document.all["ctl00_cp_f_rfvKonsultacja14"] : document.getElementById("ctl00_cp_f_rfvKonsultacja14");
    ctl00_cp_f_rfvKonsultacja14.controltovalidate = "ctl00_cp_f_txt43Paszport";
    ctl00_cp_f_rfvKonsultacja14.errormessage = "Неправильное значение";
    ctl00_cp_f_rfvKonsultacja14.display = "Dynamic";
    ctl00_cp_f_rfvKonsultacja14.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
    ctl00_cp_f_rfvKonsultacja14.validationexpression = "^([A-Za-z0-9 .,:;/-@]*)$";
    var ctl00_cp_f_rfv43 = document.all ? document.all["ctl00_cp_f_rfv43"] : document.getElementById("ctl00_cp_f_rfv43");
    ctl00_cp_f_rfv43.controltovalidate = "ctl00_cp_f_ddl43Obywatelstwo";
    ctl00_cp_f_rfv43.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rfv43.display = "Dynamic";
    ctl00_cp_f_rfv43.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rfv43.initialvalue = "";
    var ctl00_cp_f_rvl25 = document.all ? document.all["ctl00_cp_f_rvl25"] : document.getElementById("ctl00_cp_f_rvl25");
    ctl00_cp_f_rvl25.controltovalidate = "ctl00_cp_f_rbl43";
    ctl00_cp_f_rvl25.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_rvl25.display = "Dynamic";
    ctl00_cp_f_rvl25.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    ctl00_cp_f_rvl25.initialvalue = "";
    var ctl00_cp_f_cvOswiadczenie = document.all ? document.all["ctl00_cp_f_cvOswiadczenie"] : document.getElementById("ctl00_cp_f_cvOswiadczenie");
    ctl00_cp_f_cvOswiadczenie.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_cvOswiadczenie.display = "Dynamic";
    ctl00_cp_f_cvOswiadczenie.evaluationfunction = "CustomValidatorEvaluateIsValid";
    ctl00_cp_f_cvOswiadczenie.clientvalidationfunction = "ValidateStatementChk";
    var ctl00_cp_f_CustomValidator1 = document.all ? document.all["ctl00_cp_f_CustomValidator1"] : document.getElementById("ctl00_cp_f_CustomValidator1");
    ctl00_cp_f_CustomValidator1.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_CustomValidator1.display = "Dynamic";
    ctl00_cp_f_CustomValidator1.evaluationfunction = "CustomValidatorEvaluateIsValid";
    ctl00_cp_f_CustomValidator1.clientvalidationfunction = "ValidateStatementChk";
    var ctl00_cp_f_CustomValidator2 = document.all ? document.all["ctl00_cp_f_CustomValidator2"] : document.getElementById("ctl00_cp_f_CustomValidator2");
    ctl00_cp_f_CustomValidator2.errormessage = "Поле для обязательного заполнения ";
    ctl00_cp_f_CustomValidator2.display = "Dynamic";
    ctl00_cp_f_CustomValidator2.evaluationfunction = "CustomValidatorEvaluateIsValid";
    ctl00_cp_f_CustomValidator2.clientvalidationfunction = "ValidateStatementChk";
    var city_err = document.all ? document.all["city_err"] : document.getElementById("city_err");
    city_err.errormessage = "Поле для обязательного заполнения ";
    city_err.controltovalidate = "city";
    city_err.display = "Dynamic";
    city_err.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    city_err.initialvalue = "";
    var type_err = document.all ? document.all["type_err"] : document.getElementById("type_err");
    type_err.controltovalidate = "type";
    type_err.errormessage = "Поле для обязательного заполнения ";
    type_err.display = "Dynamic";
    type_err.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
    type_err.initialvalue = "";

    //]]>
</script>


<script type="text/javascript">
    //<![CDATA[

    var Page_ValidationActive = false;
    if (typeof(ValidatorOnLoad) == "function") {
        ValidatorOnLoad();
    }

    function ValidatorOnSubmit() {
        if (Page_ValidationActive) {
            return ValidatorCommonOnSubmit();
        }
        else {
            return true;
        }
    }
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_daneOs_cbKrajUrodzenia'), 'true', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_daneOs_cbObecneObywatelstwo'), 'a && (s==false && u==false)', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_daneOs_cbPosiadaneObywatelstwo'), 'true', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_opiekunowie_cbObywatelstwo1'), 'true', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_opiekunowie_cbPanstwo1'), 'true', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_opiekunowie_cbObywatelstwo2'), 'true', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_opiekunowie_cbPanstwo2'), 'true', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_ddl45Panstwo'), 'a', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_dd20bPanstwo'), 'a', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_ddl21KrajDocelowy'), 's', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_ddl23PierwszyWjazd'), 's', '');
    ZbindujPanstwa(document.getElementById('ctl00_cp_f_ctrl31__ddl34panstwo'), 's', '');
    //]]>
</script>
