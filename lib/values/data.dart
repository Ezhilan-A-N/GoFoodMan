import 'package:flutter/material.dart';
import 'package:potbelly/values/values.dart';

List<String> restaurantNames = [
  "Happy Bones",
  "Pappas Pizza",
  "Shantell's",
  "Dragon Heart"
];
List<String> ratings = ["4.5", "4.0", "4.0", "4.9"];

List<String> imagePaths = [
  ImagePath.breakfastInBed,
  ImagePath.dinnerIsServed,
  ImagePath.breakfastInBed,
  ImagePath.dinnerIsServed
];

List<String> status = [
  StringConst.STATUS_OPEN,
  StringConst.STATUS_OPEN,
  StringConst.STATUS_CLOSE,
  StringConst.STATUS_CLOSE
];

List<String> price = [
  StringConst.PRICE,
];


List<String> category = [
  StringConst.ITALIAN,
  StringConst.CHINESE,
  StringConst.MEXICAN,
  StringConst.THAI,
  StringConst.ARABIAN,
  StringConst.INDIAN,
  StringConst.AMERICAN,
  StringConst.KOREAN,
];

List<String> distance = ["12 km", "2 km", "4 km", "5 km"];

List<String> addresses = [
  "417 Doom St, California, CA 90013, USA",
  "34 Devil St, New York, NY 11013, USA",
  "917 Zoom St, California, CA 20093, USA",
  "394 Broome St, New York, NY 10013, USA"
];

List<Gradient> gradients = [
  Gradients.italianGradient,
  Gradients.chineseGradient,
  Gradients.mexicanGradient,
  Gradients.thaiGradient,
  Gradients.arabianGradient,
  Gradients.indianGradient,
  Gradients.americanGradient,
  Gradients.koreanGradient,
];

List<String> categoryImagePaths = [
  ImagePath.italian,
  ImagePath.chinese,
  ImagePath.mexican,
  ImagePath.italian,
];

List<String> categoryListImagePaths = [
  ImagePath.italianCover,
  ImagePath.chineseCover,
  ImagePath.mexicanCover,
  ImagePath.thaiCover,
  ImagePath.arabianCover,
  ImagePath.indianCover,
  ImagePath.americanCover,
  ImagePath.koreanCover,
];

List<String> menuPhotosImagePaths = [
  ImagePath.doughnuts,
  ImagePath.cake_slice,
  ImagePath.avocado,
  ImagePath.black_berries,
  ImagePath.strawberries,
  ImagePath.cake_small,
  ImagePath.cake_big,
];

List<String> categoryDetailImagePaths = [
  ImagePath.cake_big,
  ImagePath.oranges,
  ImagePath.bread_on_tray,
];

final List<String> defaultLanguagesList = [
  "Abkhazian",
  "Afar",
  "Afrikaans",
  "Akan",
  "Albanian",
  "Amharic",
  "Arabic",
  "Aragonese",
  "Armenian",
  "Assamese",
  "Avaric",
  "Avestan",
  "Aymara",
  "Azerbaijani",
  "Bambara",
  "Bashkir",
  "Basque",
  "Belarusian",
  "Bengali",
  "Bihari Languages",
  "Bislama",
  "Norwegian",
  "Bosnian",
  "Breton",
  "Bulgarian",
  "Burmese",
  "Catalan",
  "Central Khmer",
  "Chamorro",
  "Chechen",
  "Chewa (Nyanja)",
  "Chinese (Simplified)",
  "Chinese (Traditional)",
  "Church Slavonic",
  "Chuvash",
  "Cornish",
  "Corsican",
  "Cree",
  "Croatian",
  "Czech",
  "Danish",
  "Dhivehi",
  "Dutch",
  "Dzongkha",
  "English",
  "Esperanto",
  "Estonian",
  "Ewe",
  "Faroese",
  "Fijian",
  "Finnish",
  "French",
  "Fulah",
  "Gaelic",
  "Galician",
  "Ganda",
  "Georgian",
  "German",
  "Greek, Modern (1453-)",
  "Guarani",
  "Gujarati",
  "Haitian",
  "Hausa",
  "Hebrew",
  "Herero",
  "Hindi",
  "Hiri Motu",
  "Hungarian",
  "Icelandic",
  "Ido",
  "Igbo",
  "Indonesian",
  "Interlingua",
  "Interlingue",
  "Inuktitut",
  "Inupiaq",
  "Irish",
  "Italian",
  "Japanese",
  "Javanese",
  "Kalaallisut",
  "Kannada",
  "Kanuri",
  "Kashmiri",
  "Kazakh",
  "Kikuyu",
  "Kinyarwanda",
  "Kirghiz",
  "Komi",
  "Kongo",
  "Korean",
  "Kuanyama",
  "Kurdish",
  "Lao",
  "Latin",
  "Latvian",
  "Limburgan",
  "Lingala",
  "Lithuanian",
  "Luba-Katanga",
  "Luxembourgish",
  "Macedonian",
  "Malagasy",
  "Malay",
  "Malayalam",
  "Maltese",
  "Manx",
  "Maori",
  "Marathi",
  "Marshallese",
  "Mongolian",
  "Nauru",
  "Navajo",
  "Ndebele, North",
  "Ndebele, South",
  "Ndonga",
  "Nepali",
  "Northern Sami",
  "Norwegian",
  "Norwegian Nynorsk",
  "Occitan (post 1500)",
  "Ojibwa",
  "Oriya",
  "Oromo",
  "Ossetian",
  "Pali",
  "Panjabi",
  "Persian",
  "Polish",
  "Portuguese",
  "Pushto",
  "Quechua",
  "Romanian",
  "Romansh",
  "Rundi",
  "Russian",
  "Samoan",
  "Sango",
  "Sanskrit",
  "Sardinian",
  "Serbian",
  "Shona",
  "Sichuan Yi",
  "Sindhi",
  "Sinhala",
  "Slovak",
  "Slovenian",
  "Somali",
  "Sotho, Southern",
  "Spanish",
  "Sundanese",
  "Swahili",
  "Swati",
  "Swedish",
  "Tagalog",
  "Tahitian",
  "Tajik",
  "Tamil",
  "Tatar",
  "Telugu",
  "Thai",
  "Tibetan",
  "Tigrinya",
  "Tonga (Tonga Islands)",
  "Tsonga",
  "Tswana",
  "Turkish",
  "Turkmen",
  "Twi",
  "Uighur",
  "Ukrainian",
  "Urdu",
  "Uzbek",
  "Venda",
  "Vietnamese",
  "Volapük",
  "Walloon",
  "Welsh",
  "Western Frisian",
  "Wolof",
  "Xhosa",
  "Yiddish",
  "Yoruba",
  "Zhuang",
  "Zulu"
];
