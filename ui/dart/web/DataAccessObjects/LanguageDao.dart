library SolasMatchDart;

import "dart:async";
import "dart:json" as json;
//import 'package:js/js.dart' as js;

import "../lib/models/Language.dart";
import "../lib/APIHelper.dart";
import "../lib/ModelFactory.dart";

class LanguageDao
{
  static Future<List<dynamic>> getActiveLanguages()
  {
    APIHelper client = new APIHelper(".proto");
    Future<List<dynamic>> languages = client.call("Language", "v0/languages/active/languages", 
      "GET", "", new Map())
      /*.then((String proto) {
      List<dynamic> activeLangs = new List<dynamic>();
      var SolasMatch = client.getJSProtoContext();
      try {
        var protoList = SolasMatch.ProtoList.decode(json);  //This doesn't work
      } catch (e) {
        print("ERROR: " + e.toString());
      }
      protoList.forEach((String protoLang) {
        activeLangs.add(SolasMatch.Language.decode(protoLang));
      });*/
      .then((String jsonText) {
      List<Language> activeLangs = new List<Language>();
      Map jsonParsed = json.parse(jsonText);
      if (jsonParsed.length > 0) {
        jsonParsed['item'].forEach((String data) {
          Map lang = json.parse(data);
          activeLangs.add(ModelFactory.generateLanguageFromMap(lang));
        });
      }
      return activeLangs;
    });
    return languages;
  }
  
  // This works
  /*static Future<dynamic> getLanguage(int id)
  {
    APIHelper client = new APIHelper(".proto");
    Future<dynamic> language = client.call("Language", "v0/languages/$id", "GET")
        .then((String proto)
            {
              var SolasMatch = client.getJSProtoContext();
              var lang = SolasMatch.Language.decode(proto);
              return lang;
            });
    return language;
  }*/
}