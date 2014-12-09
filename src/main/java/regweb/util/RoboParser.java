package regweb.util;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import regweb.domain.Form;
import regweb.ConstLists;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by alex on 11/30/14.
 */
public class RoboParser {
  public List<Form> parseHTML(InputStream text) throws IOException {
    List<Form> result = new ArrayList<Form>();

    Document doc = Jsoup.parse(text,"UTF-8","");
    Elements tables = doc.getElementsByTag("table");

    for(Element table : tables) {
      Form currentForm = new Form();

      Elements rows = table.getElementsByTag("tr");

      currentForm.setSurname_1(getColumnValue("txtnazwisko",rows));
      currentForm.setSurname_2(getColumnValue("txtnazwiskorodowe", rows));

      currentForm.setName_3(getColumnValue("txtnazwiskorodowe", rows));
      currentForm.setBirthdate_4(getColumnValue("txtnazwiskorodowe", rows));
      currentForm.setPlacedate_5(getColumnValue("txtmiejsceurodzenia", rows));
      currentForm.setCountry_6(ConstLists.getKeyByValue(ConstLists.countriesList,  getColumnValue("cbkrajurodzenia", rows)));
      currentForm.setCitizenship_7(ConstLists.getKeyByValue(ConstLists.countriesList,  getColumnValue("cbobecneobywatelstwo", rows)));
      currentForm.setCitizenship_born_8(ConstLists.getKeyByValue(ConstLists.countriesList,  getColumnValue("cbposiadaneobywatelstwo", rows)));
      currentForm.setSex_9(getColumnKeyPart("rbplec", rows));
      currentForm.setFamily_10(getColumnKeyPart("rbstancywilny", rows));
      currentForm.setIdentnum_11(getColumnValue("txt5numerdowodu", rows));
      currentForm.setPassdata_12(getColumnKeyPart("rbl13", rows));
      currentForm.setPassnum_13(getColumnValue("txt14numerpaszportu", rows));
      currentForm.setPassissuedate_14(getColumnValue("txt16wydanydnia", rows));
      currentForm.setPassexpiration_15(getColumnValue("txt17waznydo", rows));
      currentForm.setPassby_16(getColumnValue("txt15wydanyprzez", rows));
      currentForm.setCountry_17(ConstLists.getKeyByValue(ConstLists.countriesList,  getColumnValue("ddl45panstwo", rows)));
      currentForm.setState_17(getColumnValue("txt45stanprowincja", rows));
      currentForm.setCity_17(getColumnValue("txt45miejscowosc", rows));
      currentForm.setIndex_17(getColumnValue("txt45kod", rows));
      currentForm.setAddress_17(getColumnValue("txt45adres", rows));
      currentForm.setEmail_17(getColumnValue("txt17email", rows));
      currentForm.setPreftel_17(getColumnValue("txt46telefonprefiks0", rows));
      currentForm.setTel_17(getColumnValue("txt46telefonnumer0", rows));
      if (!getColumnValue("chkNieDotyczy",rows).equals("")) {
        currentForm.setIs_children(true);
        currentForm.setCountry_child(ConstLists.getKeyByValue(ConstLists.countriesList,  getColumnValue("cbpanstwo1", rows)));
        currentForm.setCitizenship_child(ConstLists.getKeyByValue(ConstLists.countriesList,  getColumnValue("cbobywatelstwo1", rows)));
        currentForm.setName_child(getColumnValue("txtimie1",rows));
        currentForm.setSurname_child(getColumnValue("txtimie1",rows));
        currentForm.setState_child(getColumnValue("txtnazwisko1",rows));
        currentForm.setCity_child(getColumnValue("txtmiejscowosc1",rows));
        currentForm.setIndex_child(getColumnValue("txtkod1",rows));
        currentForm.setAddress_child(getColumnValue("txtadres1",rows));
      } else {
        currentForm.setIs_children(false);
      }
      if (getColumnKeyPart("rbl18",rows).equals("Tak")) {
        currentForm.setCountryvisitor_18("Tak");
        currentForm.setVisitdoc_18(getColumnValue("txt18anumer", rows));
        currentForm.setExpdate_18(getColumnValue("txt18bdatawaznosci", rows));
      } else {
        currentForm.setCountryvisitor_18("Nie");
      }
      currentForm.setProfession_19(ConstLists.getKeyByValue(ConstLists.professionList,  getColumnValue("ddl19wykonywanyzawod", rows)));
      currentForm.setEmployee_20(getColumnKeyPart("rbl20", rows));
      currentForm.setCountry_20(ConstLists
          .getKeyByValue(ConstLists.countriesList, getColumnValue("dd20bpanstwo", rows)));
      currentForm.setState_20(getColumnValue("txt20cstanprowincja", rows));
      currentForm.setCity_20(getColumnValue("txt20dmiejscowosc", rows));
      currentForm.setIndex_20(getColumnValue("txt20ekodpocztowy", rows));
      currentForm.setAddress_20(getColumnValue("txt20fadres", rows));
      currentForm.setPreftel_20(getColumnValue("txt20gprefix", rows));
      currentForm.setTel_20(getColumnValue("txt20htelefon", rows));
      currentForm.setPreffax_20(getColumnValue("txt20prefiksfax", rows));
      currentForm.setFax_20(getColumnValue("txt20numerfax", rows));
      currentForm.setTitle_20(getColumnValue("txt20nazwa", rows));
      currentForm.setEmail_20(getColumnValue("txt20email", rows));

      currentForm.setGoalother_21(getColumnValue("txt29celpodrozy", rows));
      currentForm.setDest_country_22(ConstLists
          .getKeyByValue(ConstLists.inputCountriesList, getColumnValue("ddl21krajdocelowy", rows)));
      currentForm.setFirst_country_23(ConstLists
          .getKeyByValue(ConstLists.inputCountriesList, getColumnValue("ddl23pierwszywjazd", rows)));
      currentForm.setTypevisa_24(getColumnKeyPart("rbl24", rows));
      currentForm.setLenvisa_25(getColumnValue("txt25okrespobytu", rows));
      currentForm.setPrevvisastart1_26(getColumnValue("poprzedniewizy_0_txtdataod", rows));
      currentForm.setPrevvisaend1_26(getColumnValue("poprzedniewizy_0_txtdatado", rows));
      currentForm.setPrevvisastart2_26(getColumnValue("poprzedniewizy_1_txtdataod", rows));
      currentForm.setPrevvisaend2_26(getColumnValue("poprzedniewizy_1_txtdatado", rows));
      currentForm.setPrevvisastart3_26(getColumnValue("poprzedniewizy_2_txtdataod", rows));
      currentForm.setPrevvisaend3_26(getColumnValue("poprzedniewizy_2_txtdatado", rows));
      currentForm.setFingerprint_27(getColumnKeyPart("rbl27", rows));
      if (getColumnValue("chkniedotyczy28",rows).equals("")) {
        currentForm.setEndcountrypermit_28("Tak");
      }
      currentForm.setEndcountryby_28(getColumnValue("ctl00$cp$f$txt27WydanePrzez", rows));
      currentForm.setEndcountryfrom_28(getColumnValue("txt27wydaneprzez", rows));
      currentForm.setEndcountryto_28(getColumnValue("txt27waznedo", rows));
      currentForm.setStartvisa_29(getColumnValue("txt30datawjazdu", rows));
      currentForm.setEndvisa_30(getColumnValue("txt31datawyjazdu", rows));
      currentForm.setInvite_31(getColumnKeyPart("rbl34", rows));
      currentForm.setTitle_31(getColumnValue("txt34nazwa", rows));
      currentForm.setName_31(getColumnValue("txt34imie", rows));
      currentForm.setSurname_31(getColumnValue("txt34nazwisko", rows));
      currentForm.setCountry_31(ConstLists
          .getKeyByValue(ConstLists.inputCountriesList, getColumnValue("ddl34panstwo", rows)));
      currentForm.setCity_31(getColumnValue("txt34miejscowosc", rows));
      currentForm.setIndex_31(getColumnValue("txt34kod", rows));
      currentForm.setPreftel_31(getColumnValue("txt34prefikstel", rows));
      currentForm.setTel_31(getColumnValue("txt34tel", rows));
      currentForm.setPreffax_31(getColumnValue("txt34prefiksfax", rows));
      currentForm.setFax_31(getColumnValue("txt34fax", rows));

      currentForm.setAddress_31(getColumnValue("txt34adres", rows));
      currentForm.setBuilding_31(getColumnValue("txt34numerdomu", rows));
      currentForm.setFlat_31(getColumnValue("txt34numerlokalu", rows));
      currentForm.setEmail_31(getColumnValue("txt34email", rows));
      currentForm.setExpencies_33(getColumnKeyPart("rbl35", rows));
      currentForm.setExpenciesother_33(getColumnValue("txt35ktopokrywakoszty", rows));
      //currentForm.setMoney_type_33(getColumnValue("txt36inne", rows));
      currentForm.setMoney_type_other_33(getColumnValue("txt36inne", rows));
      currentForm.setInshurance_33(getColumnValue("txt36waznedo", rows));
      currentForm.setPersonaldataes_34(getColumnValue("chkniedotyczy43", rows));
      currentForm.setPersonaldatasurname_34(getColumnValue("txt43nazwisko", rows));
      currentForm.setPersonaldatadate_34(getColumnValue("txt43dataurodzenia", rows));
      currentForm.setPersonaldatapass_34(getColumnValue("txt43paszport", rows));
      currentForm.setPersonaldatacitizen_34(ConstLists
          .getKeyByValue(ConstLists.inputCountriesList, getColumnValue("ddl43obywatelstwo", rows)));
      currentForm.setPersonaldatarelation_34(getColumnKeyPart("rbl43", rows));

      result.add(currentForm);
    }

    return result;
  }

  private String getColumnValue(String name,Elements rows) {
    for(Element row: rows) {
      Elements cols = row.getElementsByTag("td");
      String firstCell = cleanString(cols.get(0).text());
      if (firstCell.startsWith(name) && cols.size() > 2) {
        return cleanString(cols.get(2).text());
      }
    }
    return "";
  }

  private String cleanString(String str) {

    return Jsoup.parse(str.replaceAll("[^A-Za-z0-9А-Яа-я\\.\\,\\-\\_\\&\\*@\\!\\(\\)\\+=:;\\\"\\\'\\?]", "")).text();
  }

  private String getColumnKeyPart(String name,Elements rows) {
    for(Element row: rows) {
      Elements cols = row.getElementsByTag("td");
      String firstCell = cleanString(cols.get(0).text());
      if (firstCell.startsWith(name) && cols.size() > 2) {
        String[] parts = firstCell.split(":");
        if (parts.length > 1) {
          return parts[1];
        } else {
          return "";
        }
      }
    }
    return "";
  }

}
