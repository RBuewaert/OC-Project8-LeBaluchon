//
//  Lists.swift
//  LeBaluchon
//
//  Created by Romain Buewaert on 25/08/2021.
//

import Foundation

// MARK: - List of City
struct City {
    let name: String
    let device: String
    let language: String
    let cityID: Int
}

// ID à garder ou recherche par nom??????? -> A TESTER

let paris = City(name: "Paris", device: "EUR", language: "French", cityID: 2988507 )
let london = City(name: "London", device: "GBP", language: "English", cityID: 2643743)
let newYork = City(name: "New-York", device: "USD", language: "English", cityID: 5128581)
let berlin = City(name: "Berlin", device: "EUR", language: "German", cityID: 2950159)



// MARK: - List of Currency
let currencyList = ["AED": "UAE dirham",
                    "AFN": "Afghan afghani",
                    "ALL": "Albanian lek",
                    "AMD": "Armenian dram",
                    "ANG": "Netherlands Antillean guilder",
                    "AOA": "Angolan kwanza",
                    "ARS": "Argentine peso",
                    "AUD": "Australian dollar",
                    "AWG": "Aruban florin",
                    "AZN": "Azerbaijani manat",
                    "BAM": "Bosnia and Herzegovina convertible mark",
                    "BBD": "Barbados dollar",
                    "BDT": "Bangladeshi taka",
                    "BGN": "Bulgarian lev",
                    "BHD": "Bahraini dinar",
                    "BIF": "Burundian franc",
                    "BMD": "Bermudian dollar",
                    "BND": "Brunei dollar",
                    "BOB": "Boliviano",
                    "BRL": "Brazilian real",
                    "BSD": "Bahamian dollar",
                    "BTC": "Bitcoin",
                    "BTN": "Bhutanese ngultrum",
                    "BWP": "Botswana pula",
                    "BYN": "Belarusian ruble",
                    "BZD": "Belize dollar",
                    "CAD": "Canadian dollar",
                    "CDF": "Congolese franc",
                    "CHF": "Swiss franc",
                    "CLF": "Unidad de Fomento: Chile",
                    "CLP": "Chilean peso",
                    "CNY": "Chinese yuan",
                    "COP": "Colombian peso",
                    "CRC": "Costa Rican colon",
                    "CUC": "Cuban convertible peso",
                    "CUP": "Cuban peso",
                    "CVE": "Cape Verdean escudo",
                    "CZK": "Czech koruna",
                    "DJF": "Djiboutian franc",
                    "DKK": "Danish krone",
                    "DOP": "Dominican peso",
                    "DZD": "Algerian dinar",
                    "EGP": "Egyptian pound",
                    "ERN": "Eritrean nakfa",
                    "ETB": "Ethiopian birr",
                    "EUR": "Euro",
                    "FJD": "Fiji dollar",
                    "FKP": "Falkland Islands pound",
                    "GBP": "Pound sterling",
                    "GEL": "Georgian lari",
                    "GGP": "Guernsey pound",
                    "GHS": "Ghanaian cedi",
                    "GIP": "Gibraltar pound",
                    "GMD": "Gambian dalasi",
                    "GNF": "Guinean franc",
                    "GTQ": "Guatemalan quetzal",
                    "GYD": "Guyanese dollar",
                    "HKD": "Hong Kong dollar",
                    "HNL": "Honduran lempira",
                    "HRK": "Croatian kuna",
                    "HTG": "Haitian gourde",
                    "HUF": "Hungarian forint",
                    "IDR": "Indonesian rupiah",
                    "ILS": "Israeli new shekel",
                    "IMP": "Manx pound",
                    "INR": "Indian rupee",
                    "IQD": "Iraqi dinar",
                    "IRR": "Iranian rial",
                    "ISK": "Icelandic króna",
                    "JEP": "Jersey pound",
                    "JMD": "Jamaican dollar",
                    "JOD": "Jordanian dinar",
                    "JPY": "Japanese yen",
                    "KES": "Kenyan shilling",
                    "KGS": "Kyrgyzstani som",
                    "KHR": "Cambodian riel",
                    "KMF": "Comoro franc",
                    "KPW": "North Korean won",
                    "KRW": "South Korean won",
                    "KWD": "Kuwaiti dinar",
                    "KYD": "Cayman Islands dollar",
                    "KZT": "Kazakhstani tenge",
                    "LAK": "Lao kip",
                    "LBP": "Lebanese pound",
                    "LKR": "Sri Lankan rupee",
                    "LRD": "Liberian dollar",
                    "LSL": "Lesotho loti",
                    "LYD": "Libyan dinar",
                    "MAD": "Moroccan dirham",
                    "MDL": "Moldovan leu",
                    "MGA": "Malagasy ariary",
                    "MKD": "Macedonian denar",
                    "MMK": "Myanmar kyat",
                    "MNT": "Mongolian tögrög",
                    "MOP": "Macanese pataca",
                    "MUR": "Mauritian rupee",
                    "MVR": "Maldivian rufiyaa",
                    "MWK": "Malawian kwacha",
                    "MXN": "Mexican peso",
                    "MYR": "Malaysian ringgit",
                    "MZN": "Mozambican metical",
                    "NAD": "Namibian dollar",
                    "NGN": "Nigerian naira",
                    "NIO": "Nicaraguan córdoba",
                    "NOK": "Norwegian krone",
                    "NPR": "Nepalese rupee",
                    "NZD": "New Zealand dollar",
                    "OMR": "Omani rial",
                    "PAB": "Panamanian balboa",
                    "PEN": "Peruvian sol",
                    "PGK": "Papua New Guinean kina",
                    "PHP": "Philippine peso",
                    "PKR": "Pakistani rupee",
                    "PLN": "Polish złoty",
                    "PYG": "Paraguayan guaraní",
                    "QAR": "Qatari riyal",
                    "RON": "Romanian leu",
                    "RSD": "Serbian dinar",
                    "RUB": "Russian ruble",
                    "RWF": "Rwandan franc",
                    "SAR": "Saudi riyal",
                    "SBD": "Solomon Islands dollar",
                    "SCR": "Seychelles rupee",
                    "SDG": "Sudanese pound",
                    "SEK": "Swedish krona",
                    "SGD": "Singapore dollar",
                    "SHP": "Saint Helena pound",
                    "SLL": "Sierra Leonean leone",
                    "SOS": "Somali shilling",
                    "SRD": "Surinamese dollar",
                    "SVC": "Salvadoran colón",
                    "SYP": "Syrian pound",
                    "SZL": "Swazi lilangeni",
                    "THB": "Thai baht",
                    "TJS": "Tajikistani somoni",
                    "TMT": "Turkmenistan manat",
                    "TND": "Tunisian dinar",
                    "TOP": "Tongan paʻanga",
                    "TRY": "Turkish lira",
                    "TTD": "Trinidad and Tobago dollar",
                    "TWD": "New Taiwan dollar",
                    "TZS": "Tanzanian shilling",
                    "UAH": "Ukrainian hryvnia",
                    "UGX": "Ugandan shilling",
                    "USD": "US dollar",
                    "UYU": "Uruguayan peso",
                    "UZS": "Uzbekistan som",
                    "VND": "Vietnamese đồng",
                    "VUV": "Vanuatu vatu",
                    "WST": "Samoan tala",
                    "XAF": "CFA franc BEAC",
                    "XCD": "East Caribbean dollar",
                    "XOF": "CFA franc BCEAO",
                    "XPF": "CFP franc",
                    "YER": "Yemeni rial",
                    "ZAR": "South African rand",
                    "ZMW": "Zambian kwacha",
                    "ZWL": "Zimbabwean dollar"]

// MARK: - List of Language
let languageList = ["af": "Afrikaans",
                    "sq": "Albanian",
                    "am": "Amharic",
                    "ar": "Arabic",
                    "hy": "Armenian",
                    "az": "Azerbaijani",
                    "eu": "Basque",
                    "be": "Belarusian",
                    "bn": "Bengali",
                    "bs": "Bosnian",
                    "bg": "Bulgarian",
                    "ca": "Catalan",
                    "ceb": "Cebuano",
                    "zh-CN": "Chinese (Simplified)",
                    "zh-TW": "Chinese (traditional)",
                    "co": "Corsica",
                    "hr": "Croatian",
                    "cs": "Czech",
                    "da": "Danish",
                    "nl": "Dutch",
                    "en": "English",
                    "eo": "Esperanto",
                    "et": "Estonian",
                    "fi": "Finnish",
                    "fr": "French",
                    "fy": "Frisian",
                    "gl": "Galician",
                    "ka": "Georgian",
                    "de": "German",
                    "el": "Greek",
                    "gu": "Gujarati",
                    "ht": "Haitian Creole",
                    "ha": "Hausa",
                    "haw": "Hawaiian",
                    "he": "Hebrew",
                    "hi": "Hindi",
                    "hmn": "Hmong",
                    "hu": "Hungarian",
                    "is": "Icelandic",
                    "ig": "Igbo",
                    "id": "Indonesian",
                    "ga": "Irish",
                    "it": "Italian",
                    "ja": "Japanese",
                    "jv": "Javanese",
                    "kn": "Kannada",
                    "kk": "Kazakh",
                    "km": "Khmer",
                    "rw": "Kinyarwanda",
                    "ko": "Korean",
                    "ku": "Kurdish",
                    "ky": "Kyrgyz",
                    "lo": "Laotian",
                    "lv": "Latvian",
                    "lt": "Lithuanian",
                    "lb": "Luxembourgish",
                    "mk": "Macedonian",
                    "mg": "Malagasy",
                    "ms": "Malay",
                    "ml": "Malayâlam",
                    "mt": "Maltese",
                    "mi": "Maori",
                    "mr": "Marathi",
                    "mn": "Mongolian",
                    "my": "Burmese",
                    "ne": "Nepali",
                    "no": "Norwegian",
                    "ny": "Nyanja (Chichewa)",
                    "or": "Odia (Oriya)",
                    "ps": "Pashto",
                    "fa": "Persian",
                    "pl": "Polish",
                    "pt": "Portuguese",
                    "pa": "Panjabi",
                    "ro": "Romanian",
                    "ru": "Russian",
                    "sm": "Samoan",
                    "gd": "Gaelic",
                    "sr": "Serbian",
                    "st": "Sesotho",
                    "sn": "Shona",
                    "sd": "Sindhi",
                    "si": "Singhalese",
                    "sk": "Slovak",
                    "sl": "Slovenian",
                    "so": "Somali",
                    "es": "Spanish",
                    "su": "Soundanese",
                    "sw": "Swahili",
                    "sv": "Swedish",
                    "tl": "Tagalog (Filipino)",
                    "tg": "Tajik",
                    "ta": "Tamil",
                    "tt": "Tatar",
                    "te": "Telougou",
                    "th": "Thai",
                    "tr": "Turkish",
                    "tk": "Turkmen",
                    "uk": "Ukrainian",
                    "ur": "Urdu",
                    "ug": "Uyghur",
                    "uz": "Uzbek",
                    "vi": "Vietnamese",
                    "cy": "Welsh",
                    "xh": "Xhosa",
                    "yi": "Yiddish",
                    "yo": "Yoruba",
                    "zu": "Zulu"]
