import 'Language.dart';

mixin Convertor{
  Language? convert(String language){
    switch(language){
      case "Русский":
        return Language.russian;
      case "Английский":
        return Language.english;
      case "Французский":
        return Language.french;
      case "Немецкий":
        return Language.deutsch;
    }
    return null;
  }
}

extension ExtendedConvertor on Convertor {
  String? toPrettyString(Language language) {
    switch(language){
      case Language.russian:
        return "Русский";
      case Language.english:
        return "Английский";
      case Language.french:
        return "Французский";
      case Language.deutsch:
        return "Немецкий";
    }
    return null;
  }
}