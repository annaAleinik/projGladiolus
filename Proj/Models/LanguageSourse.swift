//
//  LanguageSourse.swift
//  Proj
//
//  Created by Admin on 5/14/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation
import UIKit

class LanguageSourse {

  static let shared = LanguageSourse()
    
     let dictLang:[(name: String, code: String)] =
        [("Azərbaycan","az-AZ"),
        ("Shqiptar","sq-AL"),
        ("አማርኛ","am-ET"),
        ("English","en-GB"),
        ("العربية","ar-AE"),
        
        ("Հայերեն","hy-AM"),
        ("Afrikaans","af-ZA"),
        ("Euskal","eu-ES"),
        ("Беларускі","be-BY"),
        ("বাঙালি","bn-IN"),
        ("Bermansky","my-MY"),
        ("Български","bg-BG"),
        ("Bosanski","bs-BA"),
        ("Cymraeg","cy-GB"),
        ("Magyar","hu-HU"),
        ("Người việt nam","vi-VN"),
        ("Hawaiian","haw-US"),
        ("Galego","gl-ES"),
        ("Ελληνικά","el-GR"),
        ("ქართული","ka-GE"),
        ("ગુજરાતી","gu-IN"),
        ("Dansk","da-DK"),
        ("Zulu","zu-ZA"),
    ("עברית","he-IL"),
        ("Igbo","ig-NG"),
        ("ייִדיש","yi-US"),
        ("Indonesian","in-ID"),
        ("Gaeilge","ga-IE"),
        ("Íslensku","is-IS"),
        ("Español","es-ES"),
        ("italiano","it-IT"),
        ("Yorùbá","yo-NG"),
        ("Қазақша","kk-KZ"),
        ("ಕನ್ನಡ","kn-IN"),
        ("Català","ca-ES"),
        ("Кыргыз","ky-KG"),
        ("中国","zh-CN"),
        ("한국어","ko-KR"),
        ("Kurmancî","ku-TR"),
        ("ភាសាខ្មែរ","km-KH"),
        ("ລາວ","lo-LA"),
        ("Latviešu","lv-LV"),
        ("Lietuviškai","lt-LT"),
        ("Lëtzebuergesch","lb-LU"),
        ("Македонски","mk-MK"),
        ("Malagasy","mg-MG"),
        ("Malayan","ms-MY"),
        ("മലയാളം","ml-IN"),
        ("Malti","mt-MT"),
        ("Maori","mi-NZ"),
        ("मराठी","mr-IN"),
        ("Монгол хэл","mn-MN"),
        ("Deutsch","de-DE"),
        ("नेपाली","ne-NP"),
        ("Nederland","nl-NL"),
        ("Norsk","no-NO"),
        ("ਪੰਜਾਬੀ","pa-Arab"),
        ("فارسی","fa-IR"),
        ("Polski","pl-PL"),
        ("Português","pt-PT"),
        ("پښتو","ps-AF"),
        ("Românesc","ro-RO"),
        ("Русский","ru-RU"),
        ("Samoa","sm-WS"),
        ("Српски","sr-RS"),
        ("සිංහල","si-LK"),
        ("سنڌي","sd-IN"),
        ("Slovenský","sk-SK"),
        ("Slovenščina","sl-SI"),
        ("Somaliqui","so-SO"),
        ("Kiswahili","sw-KE"),
        ("Тоҷикӣ","tg-TJ"),
        ("ไทย","th-TH"),
        ("தமிழ்","ta-IN"),
        ("తెలుగు","te-IN"),
        ("Türk","tr-TR"),
        ("O`zbek","uz-UZ"),
        ("Український","uk-UA"),
        ("اردو","ur-PK"),
        ("Suomalainen","fi-FI"),
        ("Français","fr-FR"),
        ("Frysk","fy-DE"),
        ("हिन्दी","hi-IN"),
        ("Hrvatski","hr-HR"),
        ("Česky","cs-CZ"),
        ("Svenska","sv-SE"),
        ("Alba","gd-GB"),
        ("Esperanto","eo"),
        ("Eesti","et-EE"),
        ("日本語","ja-JP")
    ]
    
    
    let dictFlag:[(name: String, img: UIImage)] =
        [("Azərbaycan",UIImage(named: "flag_azerbaijan_icon.png") ?? UIImage()),
         ("Shqiptar",UIImage(named: "flag_albania_icon.png") ?? UIImage()),
         ("አማርኛ",UIImage(named: "flag_ethiopia_icon.png") ?? UIImage()),
         ("English",UIImage(named: "flag_england_icon.png") ?? UIImage()),
         ("العربية",UIImage(named: "flag_united_arab_emirates_icon.png")!),
         ("Հայերեն",UIImage(named: "flag_armenia_icon.png") ?? UIImage()),
         ("Afrikaans",UIImage(named: "flag_south_africa_icon.png") ?? UIImage()),
         ("Euskal",UIImage(named: "flag_spain_icon.png") ?? UIImage()),
         ("Беларускі",UIImage(named: "flag_belarus_icon.png") ?? UIImage()),
         ("বাঙালি",UIImage(named: "flag_bangladesh_icon.png") ?? UIImage()),
         ("Bermansky",UIImage(named: "flag_indonesia_icon.png") ?? UIImage()),
         ("Български",UIImage(named: "flag_bulgaria_icon.png") ?? UIImage()),
         ("Bosanski",UIImage(named: "flag_bosnia_and_herzegovina_icon.png") ?? UIImage()),
         ("Cymraeg",UIImage(named: "flag_wales_icon.png") ?? UIImage()),
         ("Magyar",UIImage(named: "flag_hungary_icon.png") ?? UIImage()),
         ("Người việt nam",UIImage(named: "flag_vietnam_icon.png") ?? UIImage()),
         ("Hawaiian",UIImage(named: "flag_hawaii_icon.png") ?? UIImage()),
         ("Galego",UIImage(named: "flag_spain_icon.png") ?? UIImage()),
         ("Ελληνικά",UIImage(named: "flag_greece_icon.png") ?? UIImage()),
         ("ქართული",UIImage(named: "flag_georgia_icon.png") ?? UIImage()),
         ("ગુજરાતી",UIImage(named: "flag_india_icon.png") ?? UIImage()),
         ("Dansk",UIImage(named: "flag_denmark_icon.png") ?? UIImage()),
         ("Zulu",UIImage(named: "flag_south_africa_icon.png") ?? UIImage()),
         ("עברית",UIImage(named: "flag_israel_icon.png")!),
         ("Igbo",UIImage(named: "flag_nigeria_icon.png") ?? UIImage()),
         ("ייִדיש",UIImage(named: "icon_logo.png")!),
         ("Indonesian",UIImage(named: "flag_indonesia_icon.png") ?? UIImage()),
         ("Gaeilge",UIImage(named: "flag_ireland_icon.png") ?? UIImage()),
         ("Íslensku",UIImage(named: "flag_iceland_icon.png") ?? UIImage()),
         ("Español",UIImage(named: "flag_spain_icon.png") ?? UIImage()),
         ("italiano",UIImage(named: "flag_italy_icon.png") ?? UIImage()),
         ("Yorùbá",UIImage(named: "flag_nigeria_icon.png") ?? UIImage()),
         ("Қазақша",UIImage(named: "flag_kazakhstan_icon.png") ?? UIImage()),
         ("ಕನ್ನಡ",UIImage(named: "flag_india_icon.png") ?? UIImage()),
         ("Català",UIImage(named: "flag_catalonia_icon.png") ?? UIImage()),
         ("Кыргыз",UIImage(named: "flag_kyrgyzstan_icon.png") ?? UIImage()),
         ("中国",UIImage(named: "flag_china_icon.png") ?? UIImage()),
         ("한국어",UIImage(named: "flag_south_korea_icon.png") ?? UIImage()),
         ("Kurmancî",UIImage(named: "icon_logo.png") ?? UIImage()),
         ("ភាសាខ្មែរ",UIImage(named: "flag_cambodia_icon.png") ?? UIImage()),
         ("ລາວ",UIImage(named: "flag_laos_icon.png") ?? UIImage()),
         ("Latviešu",UIImage(named: "flag_latvia_icon.png") ?? UIImage()),
         ("Lietuviškai",UIImage(named: "flag_lithuania_icon.png") ?? UIImage()),
         ("Lëtzebuergesch",UIImage(named: "flag_luxembourg_icon.png") ?? UIImage()),
         ("Македонски",UIImage(named: "flag_macedonia_icon.png") ?? UIImage()),
         ("Malagasy",UIImage(named: "flag_madagascar_icon.png") ?? UIImage()),
         ("Malayan",UIImage(named: "flag_malaysia_icon.png") ?? UIImage()),
         ("മലയാളം",UIImage(named: "flag_india_icon.png") ?? UIImage()),
         ("Malti",UIImage(named: "flag_malta_icon.png") ?? UIImage()),
         ("Maori",UIImage(named: "flag_new_zealand_icon.png") ?? UIImage()),
         ("मराठी",UIImage(named: "icon_logo.png") ?? UIImage()),
         ("Монгол хэл",UIImage(named: "flag_mongolia_icon.png") ?? UIImage()),
         ("Deutsch",UIImage(named: "flag_germany_icon.png") ?? UIImage()),
         ("नेपाली",UIImage(named: "flag_nepal_icon.png") ?? UIImage()),
         ("Nederland",UIImage(named: "flag_netherlands_icon.png") ?? UIImage()),
         ("Norsk",UIImage(named: "flag_norway_icon.png") ?? UIImage()),
         ("ਪੰਜਾਬੀ",UIImage(named: "flag_pakistan_icon.png") ?? UIImage()),
         ("فارسی",UIImage(named: "flag_iran_icon.png")!),
         ("Polski",UIImage(named: "flag_poland_icon.png") ?? UIImage()),
         ("Português",UIImage(named: "flag_portugal_icon.png") ?? UIImage()),
         ("پښتو",UIImage(named: "flag_afghanistan_icon.png")!),
         ("Românesc",UIImage(named: "flag_romania_icon.png") ?? UIImage()),
         ("Русский",UIImage(named: "flag_russia_icon.png") ?? UIImage()),
         ("Samoa",UIImage(named: "flag_samoa_icon.png") ?? UIImage()),
         ("Српски",UIImage(named: "flag_serbia_icon.png") ?? UIImage()),
         ("සිංහල",UIImage(named: "flag_sri_lanka_icon.png") ?? UIImage()),
         ("سنڌي",UIImage(named: "flag_pakistan_icon.png")!),
         ("Slovenský",UIImage(named: "flag_slovakia_icon.png") ?? UIImage()),
         ("Slovenščina",UIImage(named: "flag_slovenia_icon.png") ?? UIImage()),
         ("Somaliqui",UIImage(named: "flag_somalia_icon.png") ?? UIImage()),
         ("Kiswahili",UIImage(named: "icon_logo.png") ?? UIImage()),
         ("Тоҷикӣ",UIImage(named: "flag_tajikistan_icon.png") ?? UIImage()),
         ("ไทย",UIImage(named: "flag_thailand_icon.png") ?? UIImage()),
         ("தமிழ்",UIImage(named: "icon_logo.png") ?? UIImage()),
         ("తెలుగు",UIImage(named: "flag_india_icon.png") ?? UIImage()),
         ("Türk",UIImage(named: "flag_turkey_icon.png") ?? UIImage()),
         ("O`zbek",UIImage(named: "flag_uzbekistan_icon.png") ?? UIImage()),
         ("Український",UIImage(named: "flag_ukraine_icon.png") ?? UIImage()),
        ("اردو",UIImage(named: "icon_logo.png")!),
         ("Suomalainen",UIImage(named: "flag_finland_icon.png") ?? UIImage()),
         ("Français",UIImage(named: "flag_france_icon.png") ?? UIImage()),
         ("Frysk",UIImage(named: "icon_logo.png") ?? UIImage()),
         ("हिन्दी",UIImage(named: "flag_india_icon.png") ?? UIImage()),
         ("Hrvatski",UIImage(named: "flag_croatia_icon.png") ?? UIImage()),
         ("Česky",UIImage(named: "flag_czech_icon.png") ?? UIImage()),
         ("Svenska",UIImage(named: "flag_sweden_icon.png") ?? UIImage()),
         ("Alba",UIImage(named: "flag_cotland_icon.png") ?? UIImage()),
         ("Esperanto",UIImage(named: "icon_logo.png") ?? UIImage()),
         ("Eesti",UIImage(named: "flag_estonia_icon.png") ?? UIImage()),
         ("日本語",UIImage(named: "flag_japan_icon.png") ?? UIImage())
    ]

    
}
