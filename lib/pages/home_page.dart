// import 'package:flutter/material.dart';
// import 'package:localiz_multi_language/classes/language.dart';
// import 'package:localiz_multi_language/classes/language_constants.dart';
// import 'package:localiz_multi_language/router/route_constants.dart';

// import '../main.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final GlobalKey<FormState> _key = GlobalKey<FormState>();

//   void _showSuccessDialog() {
//     showTimePicker(context: context, initialTime: TimeOfDay.now());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(AppLocalizations.of(context).homePage),
//         actions: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: DropdownButton<Language>(
//               underline: const SizedBox(),
//               icon: const Icon(
//                 Icons.language,
//                 color: Colors.white,
//               ),
//               onChanged: (Language? language) async {
//                 if (language != null) {
//                   Locale locale = await setLocale(language.languageCode);
//                   MyApp.setLocale(context, locale);
//                 }
//               },
//               items: Language.languageList()
//                   .map<DropdownMenuItem<Language>>(
//                     (e) => DropdownMenuItem<Language>(
//                       value: e,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: <Widget>[
//                           Text(
//                             e.flag,
//                             style: const TextStyle(fontSize: 30),
//                           ),
//                           Text(e.name)
//                         ],
//                       ),
//                     ),
//                   )
//                   .toList(),
//             ),
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: _drawerList(),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(20),
//         child: _mainForm(context),
//       ),
//     );
//   }

//   Form _mainForm(BuildContext context) {
//     return Form(
//       key: _key,
//       child: Column(
//         children: <Widget>[
//           SizedBox(
//             height: MediaQuery.of(context).size.height / 4,
//             child: Center(
//               child: Text(
//                 AppLocalizations.of(context).personalInformation,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           TextFormField(
//             validator: (val) {
//               if (val != null && val.isEmpty) {
//                 return AppLocalizations.of(context).requiredField;
//               }
//               return null;
//             },
//             decoration: InputDecoration(
//               border: const OutlineInputBorder(),
//               labelText: AppLocalizations.of(context).name,
//               hintText: AppLocalizations.of(context).nameHint,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           TextFormField(
//             validator: (val) {
//               if (val != null && val.isEmpty) {
//                 return AppLocalizations.of(context).requiredField;
//               }
//               return null;
//             },
//             decoration: InputDecoration(
//               border: const OutlineInputBorder(),
//               labelText: AppLocalizations.of(context).email,
//               hintText: AppLocalizations.of(context).emailHint,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           TextFormField(
//             decoration: InputDecoration(
//               border: const OutlineInputBorder(),
//               hintText: AppLocalizations.of(context).dateOfBirth,
//             ),
//             onTap: () async {
//               FocusScope.of(context).requestFocus(FocusNode());
//               await showDatePicker(
//                 context: context,
//                 initialDate: DateTime.now(),
//                 firstDate: DateTime(DateTime.now().year),
//                 lastDate: DateTime(DateTime.now().year + 20),
//               );
//             },
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           MaterialButton(
//             onPressed: () {
//               if (_key.currentState != null && _key.currentState!.validate()) {
//                 _showSuccessDialog();
//               }
//             },
//             height: 50,
//             shape: const StadiumBorder(),
//             color: Theme.of(context).primaryColor,
//             child: Center(
//               child: Text(
//                 AppLocalizations.of(context).submitInfo,
//                 style: const TextStyle(color: Colors.white, fontSize: 20),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Container _drawerList() {
//     TextStyle textStyle = const TextStyle(
//       color: Colors.white,
//       fontSize: 24,
//     );
//     return Container(
//       color: Theme.of(context).primaryColor,
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           const DrawerHeader(
//             child: SizedBox(
//               height: 100,
//               child: CircleAvatar(),
//             ),
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.info,
//               color: Colors.white,
//               size: 30,
//             ),
//             title: Text(
//               AppLocalizations.of(context).aboutUs,
//               style: textStyle,
//             ),
//             onTap: () {
//               // To close the Drawer
//               Navigator.pop(context);
//               // Navigating to About Page
//               Navigator.pushNamed(context, aboutRoute);
//             },
//           ),
//           ListTile(
//             leading: const Icon(
//               Icons.settings,
//               color: Colors.white,
//               size: 30,
//             ),
//             title: Text(
//               AppLocalizations.of(context).settings,
//               style: textStyle,
//             ),
//             onTap: () {
//               // To close the Drawer
//               Navigator.pop(context);
//               // Navigating to About Page
//               Navigator.pushNamed(context, settingsRoute);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
