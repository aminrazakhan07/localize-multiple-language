// import 'package:flutter/material.dart';
// import 'package:localiz_multi_language/classes/language.dart';
// import 'package:localiz_multi_language/classes/language_constants.dart';
// import 'package:localiz_multi_language/main.dart';

// class SettingsPage extends StatefulWidget {
//   const SettingsPage({super.key});

//   @override
//   _SettingsPageState createState() => _SettingsPageState();
// }

// class _SettingsPageState extends State<SettingsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(AppLocalizations.of(context).settings),
//       ),
//       body: Center(
//           child: DropdownButton<Language>(
//         iconSize: 30,
//         hint: Text(AppLocalizations.of(context).changeLanguage),
//         onChanged: (Language? language) async {
//           if (language != null) {
//             Locale locale = await setLocale(language.languageCode);
//             MyApp.setLocale(context, locale);
//           }
//         },
//         items: Language.languageList()
//             .map<DropdownMenuItem<Language>>(
//               (e) => DropdownMenuItem<Language>(
//                 value: e,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: <Widget>[
//                     Text(
//                       e.flag,
//                       style: const TextStyle(fontSize: 30),
//                     ),
//                     Text(e.name)
//                   ],
//                 ),
//               ),
//             )
//             .toList(),
//       )),
//     );
//   }
// }
