package regweb.constants;

import java.util.*;

/**
 * Author: Alexander Petkevich aka mrdoggy
 * Date: 31.03.13
 * Time: 0:54
 */
@SuppressWarnings("serial")
public class Lists {
   public static final Map<String, String> sexList = Collections.unmodifiableMap(new LinkedHashMap<String, String>() {{
        put("M", "Мужчина");
        put("F", "женщина");
    }});

    public static final Map<String, String> fingerprintList = Collections.unmodifiableMap(new LinkedHashMap<String, String>() {{
        put("Nie", "Нет");
        put("Tak", "Да");
    }});

    public static final Map<String, String> mStatusList = Collections.unmodifiableMap(new LinkedHashMap<String , String>() {{
        put("KP", "Холост/не замужем");
        put("ZZ", "Женат/Замужем");
        put("SP", "не проживает с супругом");
        put("RR", "Разведен/-а");
        put("WW", "Вдовец/вдова");
        put("IN", "другой");
    }});

    public static final Map<String, String> relationshipList = Collections.unmodifiableMap(new LinkedHashMap<String , String>() {{
        put("1", "Супруг/-а");
        put("2", "Ребенок");
        put("3", "Внук/- чка");
        put("4", "Иждивенец");
    }});

    public static final List<String> goalsList = Collections.unmodifiableList(Arrays.asList(
            "Туризм",
            "Деловая",
            "Посещение родственников или друзей",
            "Культура",
            "Спорт",
            "Официальная",
            "Лечение",
            "Учеба",
            "Транзит",
            "Транзит ч. аэропорт",
            "Иная (указать)"
    ));

    public static final List<String> moneyList = Collections.unmodifiableList(Arrays.asList(
            "Наличные деньги",
            "Дорожные чеки",
            "Кредитная карточка",
            "Размещение",
            "Предоплачен транспорт",
            "Обеспечиваются все расходы во время пребывания",
            "Иные (указать)"
    ));

    public static final Map<String, String> countryPosList = Collections.unmodifiableMap(new LinkedHashMap<String , String>() {{
        put("Nie", "Нет");
        put("Tak", "Да. Вид на жительство или равноценный документ");
    }});

    public static final Map<String, String> employeeList = Collections.unmodifiableMap(new LinkedHashMap<String , String>() {{
        put("PRA", "Работодатель");
        put("UCZ", "Учебное заведение");
    }});
    
    public static final Map<String, String> invList = Collections.unmodifiableMap(new LinkedHashMap<String , String>() {{
        put("0", "человек");
        put("1", "фирма");
    }});

    public static final Map<String, String> qtyList = Collections.unmodifiableMap(new LinkedHashMap<String , String>() {{
        put("1", "Однократного въезда");
        put("2", "Двукратного въезда");
        put("3", "Многократного въезда");
    }});

    public static final Map<String, String> expenciesList = Collections.unmodifiableMap(new LinkedHashMap<String , String>() {{
        put("1", "Сам заявитель");
        put("2", "Спонсор (приглашающее лицо, предприятие, организация), указать");
    }});

    public static final Map<String, String> docTypeList = Collections.unmodifiableMap(new LinkedHashMap<String , String>() {{
        put("1", "Обычный паспорт");
        put("2", "Дипломатический паспорт");
        put("3", "Служебный паспорт");
        put("4", "Официальный паспорт");
        put("5", "Особый паспорт");
        put("6", "Иной проездной документ");
    }});

    public static final Map<String, String> inputCountriesList = Collections.unmodifiableMap(new LinkedHashMap<String , String>() {{
        put("", "");
        put("AUT", "АВСТРИЯ");
        put("BEL", "БЕЛЬГИЯ");
        put("HUN", "ВЕНГРИЯ");
        put("DEU", "ГЕРМАНИЯ");
        put("GRC", "ГРЕЦИЯ");
        put("DNK", "ДАНИЯ");
        put("IRL", "ИРЛАНДИЯ");
        put("ISL", "ИСЛАНДИЯ");
        put("ESP", "ИСПАНИЯ");
        put("ITA", "ИТАЛИЯ");
        put("LVA", "ЛАТВИЯ");
        put("LTU", "ЛИТВА");
        put("LUX", "ЛЮКСЕМБУРГ");
        put("MLT", "МАЛЬТА");
        put("NLD", "НИДЕРЛАНДЫ");
        put("NOR", "НОРВЕГИЯ");
        put("POL", "ПОЛЬША");
        put("PRT", "ПОРТУГАЛИЯ");
        put("SVK", "СЛОВАКИЯ");
        put("SVN", "СЛОВЕНИЯ");
        put("FIN", "ФИНЛЯНДИЯ");
        put("FRA", "ФРАНЦИЯ");
        put("CZE", "ЧЕХИЯ");
        put("CHE", "ШВЕЙЦАРИЯ");
        put("SWE", "ШВЕЦИЯ");
        put("EST", "ЭСТОНИЯ");
    }});

    public static final Map<String, String> professionList = Collections.unmodifiableMap(new LinkedHashMap<String , String>() {{
        put("", "");
        put("35", "Административно-судебный служащий");
        put("05", "Артист");
        put("02", "Архитектор");
        put("06", "Банкир");
        put("30", "Без профессии");
        put("10", "Водитель");
        put("15", "Государственный служащий");
        put("32", "Дипломат");
        put("09", "Духовное лицо, монахиня");
        put("21", "Журналист");
        put("17", "Информатик");
        put("99", "Иные");
        put("07", "Коммерсант");
        put("34", "Личный ассистент дипломата");
        put("22", "Медицинские профессии");
        put("08", "Менеджер");
        put("26", "Мода, косметика");
        put("23", "Моряк");
        put("12", "Научный исследователь");
        put("28", "Пенсионер");
        put("33", "Персонал дипломатической администрации");
        put("16", "Политик");
        put("27", "Полицейский, солдат");
        put("25", "Предприниматель, занятый собственным делом");
        put("03", "Ремесленник");
        put("29", "Спортсмен, тренер");
        put("31", "Студент, практикант, стажер");
        put("20", "Техник иной");
        put("14", "Умственный работник");
        put("13", "Учитель");
        put("01", "Фермер");
        put("24", "Физический работник");
        put("19", "Химик");
        put("36", "Член правления фирмы");
        put("18", "Электрик");
        put("04", "Юрист");
    }});


    public static final Map<String, String> countriesList = Collections.unmodifiableMap(new LinkedHashMap<String , String>() {{
        put("", "");
        put("TF", "FRANCUSKIE TERYTORIA POŁUDNIOWE I ANTARKTYCZNE");
        put("RKS", "KOCOBO");
        put("PM", "SAINT PIERRE I MIQUELON");
        put("PM", "SAINT PIERRE I MIQUELON ");
        put("WS", "SAMOA");
        put("AUS", "АВСТРАЛИЯ");
        put("AUT", "АВСТРИЯ");
        put("AZE", "АЗЕРБАЙДЖАН");
        put("ALB", "АЛБАНИЯ");
        put("DZA", "АЛЖИР");
        put("AIA", "АНГИЛЬЯ");
        put("AGO", "АНГОЛА");
        put("AND", "АНДОРРА");
        put("ATA", "АНТАРКТИДА");
        put("ATG", "АНТИГУА И БАРБУДА");
        put("XXA", "АПАТРИДЫ");
        put("ARG", "АРГЕНТИНА");
        put("ARM", "АРМЕНИЯ");
        put("ABW", "АРУБА");
        put("AFG", "АФГАНИСТАН");
        put("BHS", "БАГАМСКИЕ ОСТРОВА");
        put("BGD", "БАНГЛАДЕШ");
        put("BRB", "БАРБАДОС");
        put("BHR", "БАХРАЙН");
        put("XXC", "БЕЖЕНЦЫ (ВНЕ КОНВЕНЦИИ)");
        put("XXB", "БЕЖЕНЦЫ (КОНВЕНЦИЯ 1954 Г.)");
        put("BLR", "БЕЛАРУСЬ");
        put("BLZ", "БЕЛИЗ");
        put("BEN", "БЕНИН (ДАГОМЕЯ)");
        put("CIV", "БЕРЕГ СЛОНОВОЙ КОСТИ");
        put("BMU", "БЕРМУДСКИЕ ОСТРОВА");
        put("MMR", "БИРМА (МЬЯНМА)");
        put("BOL", "БОЛИВИЯ");
        put("BIH", "БОСНИЯ И ГЕРЦЕГОВИНА");
        put("BWA", "БОТСВАНА");
        put("BRA", "БРАЗИЛИЯ");
        put("IOT", "БРИТАНСКАЯ ТЕРРИТОРИЯ В ИНДИЙСКОМ ОКЕАНЕ");
        put("BRN", "БРУНЕЙ");
        put("BVT", "БУВЕТСКИЕ ОСТРОВА");
        put("BFA", "БУРКИНА-ФАСО");
        put("BDI", "БУРУНДИ");
        put("BTN", "БУТАН");
        put("VUT", "ВАНУАТУ");
        put("VAT", "ВАТИКАН");
        put("GBD", "ВЕЛИКОБРИТАНИЯ - ГРАЖДАНИН ЗАВИСИМОЙ ТЕРРИТОРИИ");
        put("GBO", "ВЕЛИКОБРИТАНИЯ - ЗАМОРСКИЕ ТЕРРИТОРИИ");
        put("GBP", "ВЕЛИКОБРИТАНИЯ - ЛИЦО, ИМЕЮЩЕЕ ЗАЩИТУ");
        put("VEN", "ВЕНЕСУЭЛА");
        put("VIR", "ВИРГИНСКИЕ ОСТРОВА ВЛАД. СОЕДИНЕННЫХ ШТАТОВ");
        put("VGB", "ВИРГИНСКИЕ СОТРОВА ВЛАД. ВЕЛИКОБРИТАНИИ");
        put("TMP", "ВОСТОЧНЫЙ ТИМОР");
        put("VNM", "ВЬЕТНАМ");
        put("GAB", "ГАБОН");
        put("HTI", "ГАИТИ");
        put("GMB", "ГАМБИЯ");
        put("GHA", "ГАНА");
        put("GLP", "ГВАДЕЛУПА");
        put("GTM", "ГВАТЕМАЛА");
        put("GIN", "ГВИНЕЯ");
        put("GNB", "ГВИНЕЯ-БИССАУ");
        put("GIB", "ГИБРАЛТАР");
        put("ANT", "ГОЛЛАНДСКИЕ АНТИЛЬСКИЕ ОСТРОВА");
        put("HND", "ГОНДУРАС");
        put("HKG", "ГОНКОНГ");
        put("GRD", "ГРЕНАДА");
        put("GRL", "ГРЕНЛАНДИЯ");
        put("GEO", "ГРУЗИЯ");
        put("GUM", "ГУАМ");
        put("GUY", "ГУЯНА");
        put("DJI", "ДЖИБУТИ");
        put("DMA", "ДОМИНИКА");
        put("DOM", "ДОМИНИКАНСКАЯ РЕСПУБЛИКА");
        put("EGY", "ЕГИПЕТ");
        put("ZMB", "ЗАМБИЯ");
        put("ESH", "ЗАПАДНАЯ САХАРА");
        put("ZWE", "ЗИМБАБВЕ");
        put("ISR", "ИЗРАИЛЬ");
        put("IND", "ИНДИЯ");
        put("IDN", "ИНДОНЕЗИЯ");
        put("JOR", "ИОРДАНИЯ");
        put("IRQ", "ИРАК");
        put("IRN", "ИРАН");
        put("YEM", "ЙЕМЕН");
        put("KAZ", "КАЗАХСТАН");
        put("CYM", "КАЙМАН ОСТРОВА");
        put("KHM", "КАМБОДЖА (КАМПУЧИЯ)");
        put("CMR", "КАМЕРУН");
        put("CAN", "КАНАДА");
        put("QAT", "КАТАР");
        put("KEN", "КЕНИЯ");
        put("CYP", "КИПР");
        put("KGZ", "КИРГИСТАН");
        put("KIR", "КИРИБАТИ");
        put("CHN", "КИТАЙ");
        put("CCK", "КОКОСОВЫЕ ОСТРОВА");
        put("COL", "КОЛУМБИЯ");
        put("COM", "КОМОРСКИЕ ОСТРОВА");
        put("COG", "КОНГО");
        put("ZAR", "КОНГО (ДЕМОКР. РЕСП. (Б. ЗАИР)");
        put("CRI", "КОСТА-РИКА");
        put("CUB", "КУБА");
        put("KWT", "КУВЕЙТ");
        put("LAO", "ЛАОС");
        put("LSO", "ЛЕСОТО");
        put("LBR", "ЛИБЕРИЯ");
        put("LBN", "ЛИВАН");
        put("LBY", "ЛИВИЯ");
        put("LIE", "ЛИХТЕНШТЕЙН");
        put("MUS", "МАВРИКИЙ");
        put("MRT", "МАВРИТАНИЯ");
        put("MDG", "МАДАГАСКАР");
        put("MYT", "МАЙОТТА");
        put("MAC", "МАКАО");
        put("MKD", "МАКЕДОНИЯ (ФИРОМ)");
        put("MWI", "МАЛАВИ");
        put("MYS", "МАЛАЙЗИЯ");
        put("MLI", "МАЛИ");
        put("MDV", "МАЛЬДИВЫ");
        put("MAR", "МАРОККО");
        put("MTQ", "МАРТИНИКА");
        put("MHL", "МАРШАЛЛОВЫ ОСТРОВА");
        put("CRC", "МЕЖДУНАРОДНЫЙ КОМИТЕТ КРАСНОГО КРЕСТА");
        put("MEX", "МЕКСИКА");
        put("FSM", "МИКРОНЕЗИЯ");
        put("UMI", "МИНОР");
        put("MOZ", "МОЗАМБИК");
        put("MDA", "МОЛДОВА");
        put("MCO", "МОНАКО");
        put("MNG", "МОНГОЛИЯ");
        put("MSR", "МОНТСЕРРАТ");
        put("NAM", "НАМИБИЯ");
        put("NRU", "НАУРУ");
        put("NTZ", "НЕЙТРАЛЬНАЯ ЗОНА");
        put("XXX", "НЕОПРЕДЕЛЕННОЙ НАЦИОНАЛЬНОСТИ");
        put("NPL", "НЕПАЛ");
        put("NER", "НИГЕР");
        put("NGA", "НИГЕРИЯ");
        put("NIC", "НИКАРАГУА");
        put("NIU", "НИУЭ");
        put("NZL", "НОВАЯ ЗЕЛАНДИЯ");
        put("NCL", "НОВАЯ КАЛЕДОНИЯ");
        put("ARE", "ОБЪЕДИНЕННЫЕ АРАБСКИЕ ЭМИРАТЫ");
        put("FRO", "ОВЕЧЬИ ОСТРОВА");
        put("OMN", "ОМАН");
        put("UNO", "ОРГАНИЗАЦИЯ ОБЪЕДИНЕННЫХ НАЦИЙ");
        put("ZKM", "ОРДЕН МАЛЬТИЙСКИХ КАВАЛЕРОВ");
        put("NFK", "ОСТРОВ НОРФОЛК");
        put("CXR", "ОСТРОВ РОЖДЕСТВА");
        put("SHN", "ОСТРОВ СВЯТОЙ ЕЛЕНЫ");
        put("COK", "ОСТРОВА КУКА");
        put("STP", "ОСТРОВА СВЯТОГО ФОМЫ И КНЯЖЕСКИЕ");
        put("WLF", "ОСТРОВА УОЛЛИС И ФУТУНА");
        put("HMD", "ОСТРОВА ХЕРД И МАКДОНАЛЬД");
        put("PAK", "ПАКИСТАН");
        put("PLW", "ПАЛАУ");
        put("XXP", "ПАЛЕСТИНА");
        put("PAN", "ПАНАМА");
        put("PNG", "ПАПУА - НОВАЯ ГВИНЕЯ");
        put("PRY", "ПАРАГВАЙ");
        put("PER", "ПЕРУ");
        put("PCN", "ПИТКЭРН");
        put("PRI", "ПУЭРТО-РИКО");
        put("CPV", "РЕСПУБЛИКА ОСТРОВА ЗЕЛЕНОГО МЫСА");
        put("REU", "РЕУНЬОН");
        put("RUS", "РОССИЯ");
        put("RWA", "РУАНДА");
        put("SLB", "САЛОМОНОВЫ ОСТРОВА");
        put("SLV", "САЛЬВАДОР");
        put("AS", "САМОА");
        put("SMR", "САН-МАРИНО");
        put("SAU", "САУДОВСКАЯ АРАВИЯ");
        put("SWZ", "СВАЗИЛЕНД");
        put("SJM", "СВАЛЬБАРД И ЯН-МАЙЕН");
        put("PRK", "СЕВЕРНАЯ КОРЕЯ (КОРЕЙСКАЯ НАРОДНО-ДЕМОКР. РЕСП.)");
        put("MNP", "СЕВЕРНЫЕ МАРИАНСКИЕ ОСТРОВА");
        put("SYC", "СЕЙШЕЛЬСКИЕ ОСТРОВА");
        put("SEN", "СЕНЕГАЛ");
        put("VCT", "СЕНТ-ВИНСЕНТ И ГРЕНАДИНЫ");
        put("KNA", "СЕНТ-КИТС И НЕВИС");
        put("LCA", "СЕНТ-ЛЮСИЯ");
        put("SRB", "СЕРБИЯ");
        put("SGP", "СИНГАПУР");
        put("SYR", "СИРИЯ");
        put("USA", "СОЕДИНЕННЫЕ ШТАТЫ АМЕРИКИ");
        put("SOM", "СОМАЛИЯ");
        put("SDN", "СУДАН");
        put("SUR", "СУРИНАМ");
        put("SLE", "СЬЕРРА-ЛЕОНЕ");
        put("TJK", "ТАДЖИКИСТАН");
        put("THA", "ТАИЛАНД");
        put("TWN", "ТАЙВАНЬ");
        put("TZA", "ТАНЗАНИЯ");
        put("TCA", "ТЕРКС И КАЙКОС");
        put("TGO", "ТОГО");
        put("TKL", "ТОКЕЛАУ");
        put("TON", "ТОНГА");
        put("TTO", "ТРИНИДАД И ТОБАГО");
        put("TUV", "ТУВАЛУ");
        put("TUN", "ТУНИС");
        put("TKM", "ТУРКМЕНИСТАН");
        put("TUR", "ТУРЦИЯ");
        put("UNR", "УВК ООН ПО ДЕЛАМ БЕЖЕНЦЕВ");
        put("UGA", "УГАНДА");
        put("UZB", "УЗБЕКИСТАН");
        put("UKR", "УКРАИНА");
        put("URY", "УРУГВАЙ");
        put("FJI", "ФИДЖИ");
        put("PHL", "ФИЛИППИНЫ");
        put("FLK", "ФОЛКЛЕНДСКИЕ (МАЛЬВИНСКИЕ) ОСТРОВА");
        put("GUF", "ФРАНЦУЗСКАЯ ГВИАНА");
        put("PYF", "ФРАНЦУЗСКАЯ ПОЛИНЕЗИЯ");
        put("FXX", "ФРАНЦУЗСКИЕ ЗАМОРСКИЕ ТЕРРИТОРИИ");
        put("HRV", "ХОРВАТИЯ");
        put("CAF", "ЦЕНТРАЛЬНО-АФРИКАНСКАЯ РЕСПУБЛИКА");
        put("TCD", "ЧАД");
        put("MNE", "ЧЕРНОГОРИЯ");
        put("CHL", "ЧИЛИ");
        put("LKA", "ШРИ-ЛАНКА");
        put("ECU", "ЭКВАДОР");
        put("GNQ", "ЭКВАТОРИАЛЬНАЯ ГВИНЕЯ");
        put("ERI", "ЭРИТРЕЯ");
        put("ETH", "ЭФИОПИЯ");
        put("SGS", "ЮЖНАЯ ДЖОРДЖИЯ И ЮЖНЫЕ САНДВИЧЕВЫ ОСТРОВА");
        put("KOR", "ЮЖНАЯ КОРЕЯ (РЕСПУБЛИКА КОРЕЯ)");
        put("ZAF", "ЮЖНО-АФРИКАНСКАЯ РЕСПУБЛИКА");
        put("JAM", "ЯМАЙКА");
        put("JPN", "ЯПОНИЯ");
    }});

    public static final Map<String, String> countriesOldList = Collections.unmodifiableMap(new LinkedHashMap<String , String>() {{
        put("", "");
        put("TF", "FRANCUSKIE TERYTORIA POŁUDNIOWE I ANTARKTYCZNE");
        put("RKS", "KOCOBO");
        put("PM", "SAINT PIERRE I MIQUELON");
        put("PM", "SAINT PIERRE I MIQUELON ");
        put("WS", "SAMOA");
        put("AUS", "АВСТРАЛИЯ");
        put("AUT", "АВСТРИЯ");
        put("AZE", "АЗЕРБАЙДЖАН");
        put("ALB", "АЛБАНИЯ");
        put("DZA", "АЛЖИР");
        put("AIA", "АНГИЛЬЯ");
        put("AGO", "АНГОЛА");
        put("AND", "АНДОРРА");
        put("ATA", "АНТАРКТИДА");
        put("ATG", "АНТИГУА И БАРБУДА");
        put("XXA", "АПАТРИДЫ");
        put("ARG", "АРГЕНТИНА");
        put("ARM", "АРМЕНИЯ");
        put("ABW", "АРУБА");
        put("AFG", "АФГАНИСТАН");
        put("BYS", "Б. БЕЛАРУССКАЯ ССР");
        put("YUG", "Б. СЕРБИЯ И ЧЕРНОГОРИЯ");
        put("SUN", "Б. СССР");
        put("CSK", "Б. ЧЕХОСЛОВАКИЯ");
        put("XYU", "Б. ЮГОСЛАВИЯ");
        put("BHS", "БАГАМСКИЕ ОСТРОВА");
        put("BGD", "БАНГЛАДЕШ");
        put("BRB", "БАРБАДОС");
        put("BHR", "БАХРАЙН");
        put("XXC", "БЕЖЕНЦЫ (ВНЕ КОНВЕНЦИИ)");
        put("XXB", "БЕЖЕНЦЫ (КОНВЕНЦИЯ 1954 Г.)");
        put("BLR", "БЕЛАРУСЬ");
        put("BLZ", "БЕЛИЗ");
        put("BEL", "БЕЛЬГИЯ");
        put("BEN", "БЕНИН (ДАГОМЕЯ)");
        put("CIV", "БЕРЕГ СЛОНОВОЙ КОСТИ");
        put("BMU", "БЕРМУДСКИЕ ОСТРОВА");
        put("MMR", "БИРМА (МЬЯНМА)");
        put("BGR", "БОЛГАРИЯ");
        put("BOL", "БОЛИВИЯ");
        put("BIH", "БОСНИЯ И ГЕРЦЕГОВИНА");
        put("BWA", "БОТСВАНА");
        put("BRA", "БРАЗИЛИЯ");
        put("IOT", "БРИТАНСКАЯ ТЕРРИТОРИЯ В ИНДИЙСКОМ ОКЕАНЕ");
        put("BRN", "БРУНЕЙ");
        put("BVT", "БУВЕТСКИЕ ОСТРОВА");
        put("BFA", "БУРКИНА-ФАСО");
        put("BDI", "БУРУНДИ");
        put("BTN", "БУТАН");
        put("VUT", "ВАНУАТУ");
        put("VAT", "ВАТИКАН");
        put("GBR", "ВЕЛИКОБРИТАНИЯ");
        put("GBD", "ВЕЛИКОБРИТАНИЯ - ГРАЖДАНИН ЗАВИСИМОЙ ТЕРРИТОРИИ");
        put("GBO", "ВЕЛИКОБРИТАНИЯ - ЗАМОРСКИЕ ТЕРРИТОРИИ");
        put("GBP", "ВЕЛИКОБРИТАНИЯ - ЛИЦО, ИМЕЮЩЕЕ ЗАЩИТУ");
        put("HUN", "ВЕНГРИЯ");
        put("VEN", "ВЕНЕСУЭЛА");
        put("VIR", "ВИРГИНСКИЕ ОСТРОВА ВЛАД. СОЕДИНЕННЫХ ШТАТОВ");
        put("VGB", "ВИРГИНСКИЕ СОТРОВА ВЛАД. ВЕЛИКОБРИТАНИИ");
        put("TMP", "ВОСТОЧНЫЙ ТИМОР");
        put("VNM", "ВЬЕТНАМ");
        put("GAB", "ГАБОН");
        put("HTI", "ГАИТИ");
        put("GMB", "ГАМБИЯ");
        put("GHA", "ГАНА");
        put("GLP", "ГВАДЕЛУПА");
        put("GTM", "ГВАТЕМАЛА");
        put("GIN", "ГВИНЕЯ");
        put("GNB", "ГВИНЕЯ-БИССАУ");
        put("DEU", "ГЕРМАНИЯ");
        put("GIB", "ГИБРАЛТАР");
        put("ANT", "ГОЛЛАНДСКИЕ АНТИЛЬСКИЕ ОСТРОВА");
        put("HND", "ГОНДУРАС");
        put("HKG", "ГОНКОНГ");
        put("GRD", "ГРЕНАДА");
        put("GRL", "ГРЕНЛАНДИЯ");
        put("GRC", "ГРЕЦИЯ");
        put("GEO", "ГРУЗИЯ");
        put("GUM", "ГУАМ");
        put("GUY", "ГУЯНА");
        put("DNK", "ДАНИЯ");
        put("DJI", "ДЖИБУТИ");
        put("DMA", "ДОМИНИКА");
        put("DOM", "ДОМИНИКАНСКАЯ РЕСПУБЛИКА");
        put("EGY", "ЕГИПЕТ");
        put("ZMB", "ЗАМБИЯ");
        put("ESH", "ЗАПАДНАЯ САХАРА");
        put("ZWE", "ЗИМБАБВЕ");
        put("ISR", "ИЗРАИЛЬ");
        put("IND", "ИНДИЯ");
        put("IDN", "ИНДОНЕЗИЯ");
        put("JOR", "ИОРДАНИЯ");
        put("IRQ", "ИРАК");
        put("IRN", "ИРАН");
        put("IRL", "ИРЛАНДИЯ");
        put("ISL", "ИСЛАНДИЯ");
        put("ESP", "ИСПАНИЯ");
        put("ITA", "ИТАЛИЯ");
        put("YEM", "ЙЕМЕН");
        put("KAZ", "КАЗАХСТАН");
        put("CYM", "КАЙМАН ОСТРОВА");
        put("KHM", "КАМБОДЖА (КАМПУЧИЯ)");
        put("CMR", "КАМЕРУН");
        put("CAN", "КАНАДА");
        put("QAT", "КАТАР");
        put("KEN", "КЕНИЯ");
        put("CYP", "КИПР");
        put("KGZ", "КИРГИСТАН");
        put("KIR", "КИРИБАТИ");
        put("CHN", "КИТАЙ");
        put("CCK", "КОКОСОВЫЕ ОСТРОВА");
        put("COL", "КОЛУМБИЯ");
        put("COM", "КОМОРСКИЕ ОСТРОВА");
        put("COG", "КОНГО");
        put("ZAR", "КОНГО (ДЕМОКР. РЕСП. (Б. ЗАИР)");
        put("CRI", "КОСТА-РИКА");
        put("CUB", "КУБА");
        put("KWT", "КУВЕЙТ");
        put("LAO", "ЛАОС");
        put("LVA", "ЛАТВИЯ");
        put("LSO", "ЛЕСОТО");
        put("LBR", "ЛИБЕРИЯ");
        put("LBN", "ЛИВАН");
        put("LBY", "ЛИВИЯ");
        put("LTU", "ЛИТВА");
        put("LIE", "ЛИХТЕНШТЕЙН");
        put("LUX", "ЛЮКСЕМБУРГ");
        put("MUS", "МАВРИКИЙ");
        put("MRT", "МАВРИТАНИЯ");
        put("MDG", "МАДАГАСКАР");
        put("MYT", "МАЙОТТА");
        put("MAC", "МАКАО");
        put("MKD", "МАКЕДОНИЯ (ФИРОМ)");
        put("MWI", "МАЛАВИ");
        put("MYS", "МАЛАЙЗИЯ");
        put("MLI", "МАЛИ");
        put("MDV", "МАЛЬДИВЫ");
        put("MLT", "МАЛЬТА");
        put("MAR", "МАРОККО");
        put("MTQ", "МАРТИНИКА");
        put("MHL", "МАРШАЛЛОВЫ ОСТРОВА");
        put("CRC", "МЕЖДУНАРОДНЫЙ КОМИТЕТ КРАСНОГО КРЕСТА");
        put("MEX", "МЕКСИКА");
        put("FSM", "МИКРОНЕЗИЯ");
        put("UMI", "МИНОР");
        put("MOZ", "МОЗАМБИК");
        put("MDA", "МОЛДОВА");
        put("MCO", "МОНАКО");
        put("MNG", "МОНГОЛИЯ");
        put("MSR", "МОНТСЕРРАТ");
        put("NAM", "НАМИБИЯ");
        put("NRU", "НАУРУ");
        put("NTZ", "НЕЙТРАЛЬНАЯ ЗОНА");
        put("XXX", "НЕОПРЕДЕЛЕННОЙ НАЦИОНАЛЬНОСТИ");
        put("NPL", "НЕПАЛ");
        put("NER", "НИГЕР");
        put("NGA", "НИГЕРИЯ");
        put("NLD", "НИДЕРЛАНДЫ");
        put("NIC", "НИКАРАГУА");
        put("NIU", "НИУЭ");
        put("NZL", "НОВАЯ ЗЕЛАНДИЯ");
        put("NCL", "НОВАЯ КАЛЕДОНИЯ");
        put("NOR", "НОРВЕГИЯ");
        put("ARE", "ОБЪЕДИНЕННЫЕ АРАБСКИЕ ЭМИРАТЫ");
        put("FRO", "ОВЕЧЬИ ОСТРОВА");
        put("OMN", "ОМАН");
        put("UNO", "ОРГАНИЗАЦИЯ ОБЪЕДИНЕННЫХ НАЦИЙ");
        put("ZKM", "ОРДЕН МАЛЬТИЙСКИХ КАВАЛЕРОВ");
        put("NFK", "ОСТРОВ НОРФОЛК");
        put("CXR", "ОСТРОВ РОЖДЕСТВА");
        put("SHN", "ОСТРОВ СВЯТОЙ ЕЛЕНЫ");
        put("COK", "ОСТРОВА КУКА");
        put("STP", "ОСТРОВА СВЯТОГО ФОМЫ И КНЯЖЕСКИЕ");
        put("WLF", "ОСТРОВА УОЛЛИС И ФУТУНА");
        put("HMD", "ОСТРОВА ХЕРД И МАКДОНАЛЬД");
        put("PAK", "ПАКИСТАН");
        put("PLW", "ПАЛАУ");
        put("XXP", "ПАЛЕСТИНА");
        put("PAN", "ПАНАМА");
        put("PNG", "ПАПУА - НОВАЯ ГВИНЕЯ");
        put("PRY", "ПАРАГВАЙ");
        put("PER", "ПЕРУ");
        put("PCN", "ПИТКЭРН");
        put("POL", "ПОЛЬША");
        put("PRT", "ПОРТУГАЛИЯ");
        put("PRI", "ПУЭРТО-РИКО");
        put("CPV", "РЕСПУБЛИКА ОСТРОВА ЗЕЛЕНОГО МЫСА");
        put("REU", "РЕУНЬОН");
        put("RUS", "РОССИЯ");
        put("RWA", "РУАНДА");
        put("ROM", "РУМЫНИЯ");
        put("SLB", "САЛОМОНОВЫ ОСТРОВА");
        put("SLV", "САЛЬВАДОР");
        put("AS", "САМОА");
        put("SMR", "САН-МАРИНО");
        put("SAU", "САУДОВСКАЯ АРАВИЯ");
        put("SWZ", "СВАЗИЛЕНД");
        put("SJM", "СВАЛЬБАРД И ЯН-МАЙЕН");
        put("PRK", "СЕВЕРНАЯ КОРЕЯ (КОРЕЙСКАЯ НАРОДНО-ДЕМОКР. РЕСП.)");
        put("MNP", "СЕВЕРНЫЕ МАРИАНСКИЕ ОСТРОВА");
        put("SYC", "СЕЙШЕЛЬСКИЕ ОСТРОВА");
        put("SEN", "СЕНЕГАЛ");
        put("VCT", "СЕНТ-ВИНСЕНТ И ГРЕНАДИНЫ");
        put("KNA", "СЕНТ-КИТС И НЕВИС");
        put("LCA", "СЕНТ-ЛЮСИЯ");
        put("SRB", "СЕРБИЯ");
        put("SGP", "СИНГАПУР");
        put("SYR", "СИРИЯ");
        put("SVK", "СЛОВАКИЯ");
        put("SVN", "СЛОВЕНИЯ");
        put("USA", "СОЕДИНЕННЫЕ ШТАТЫ АМЕРИКИ");
        put("SOM", "СОМАЛИЯ");
        put("SDN", "СУДАН");
        put("SUR", "СУРИНАМ");
        put("SLE", "СЬЕРРА-ЛЕОНЕ");
        put("TJK", "ТАДЖИКИСТАН");
        put("THA", "ТАИЛАНД");
        put("TWN", "ТАЙВАНЬ");
        put("TZA", "ТАНЗАНИЯ");
        put("TCA", "ТЕРКС И КАЙКОС");
        put("XXT", "ТИБЕТ");
        put("TGO", "ТОГО");
        put("TKL", "ТОКЕЛАУ");
        put("TON", "ТОНГА");
        put("TTO", "ТРИНИДАД И ТОБАГО");
        put("TUV", "ТУВАЛУ");
        put("TUN", "ТУНИС");
        put("TKM", "ТУРКМЕНИСТАН");
        put("TUR", "ТУРЦИЯ");
        put("UNR", "УВК ООН ПО ДЕЛАМ БЕЖЕНЦЕВ");
        put("UGA", "УГАНДА");
        put("UZB", "УЗБЕКИСТАН");
        put("UKR", "УКРАИНА");
        put("URY", "УРУГВАЙ");
        put("FJI", "ФИДЖИ");
        put("PHL", "ФИЛИППИНЫ");
        put("FIN", "ФИНЛЯНДИЯ");
        put("FLK", "ФОЛКЛЕНДСКИЕ (МАЛЬВИНСКИЕ) ОСТРОВА");
        put("FRA", "ФРАНЦИЯ");
        put("GUF", "ФРАНЦУЗСКАЯ ГВИАНА");
        put("PYF", "ФРАНЦУЗСКАЯ ПОЛИНЕЗИЯ");
        put("FXX", "ФРАНЦУЗСКИЕ ЗАМОРСКИЕ ТЕРРИТОРИИ");
        put("HRV", "ХОРВАТИЯ");
        put("CAF", "ЦЕНТРАЛЬНО-АФРИКАНСКАЯ РЕСПУБЛИКА");
        put("TCD", "ЧАД");
        put("MNE", "ЧЕРНОГОРИЯ");
        put("CZE", "ЧЕХИЯ");
        put("CHL", "ЧИЛИ");
        put("CHE", "ШВЕЙЦАРИЯ");
        put("SWE", "ШВЕЦИЯ");
        put("LKA", "ШРИ-ЛАНКА");
        put("ECU", "ЭКВАДОР");
        put("GNQ", "ЭКВАТОРИАЛЬНАЯ ГВИНЕЯ");
        put("ERI", "ЭРИТРЕЯ");
        put("EST", "ЭСТОНИЯ");
        put("ETH", "ЭФИОПИЯ");
        put("SGS", "ЮЖНАЯ ДЖОРДЖИЯ И ЮЖНЫЕ САНДВИЧЕВЫ ОСТРОВА");
        put("KOR", "ЮЖНАЯ КОРЕЯ (РЕСПУБЛИКА КОРЕЯ)");
        put("ZAF", "ЮЖНО-АФРИКАНСКАЯ РЕСПУБЛИКА");
        put("JAM", "ЯМАЙКА");
        put("JPN", "ЯПОНИЯ");
    }});
    
    public static String getKeyByValue(Map<String , String> map,String valueToFind) {
      if (map.containsValue(valueToFind)) {
        for (final Map.Entry<String, String> entry : map.entrySet()) {
          if (entry.getValue().equals(valueToFind)) {
            return entry.getKey();
          }
        }
      }
      return null;
    }
}
