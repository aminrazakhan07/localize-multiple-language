// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeScr extends StatefulWidget {
  const HomeScr({super.key});

  @override
  State<HomeScr> createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: Text('appTitle').tr(),
        actions: [
          // Popup menu button in app bar
          PopupMenuButton<String>(
            onSelected: (value) {
              // You can set the locale based on selection here
              if (value == 'Urdu') {
                context.setLocale(Locale('ur', 'PK'));
              } else if (value == 'English') {
                context.setLocale(Locale('en', 'ES'));
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: 'Urdu',
                child: Text('اردو'),
              ),
              PopupMenuItem<String>(
                value: 'English',
                child: Text('English'),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('langTitle', style: TextStyle(fontSize: 18)).tr(),
                SizedBox(width: 10),
                Text('language', style: TextStyle(fontSize: 16)).tr(),
              ],
            ),
            SizedBox(height: 150),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('enterText', style: TextStyle(fontSize: 16)).tr(),
                SizedBox(height: 10),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'labelText'.tr(),
                    hintText: 'hintText'.tr(),
                  ),
                ),
                ////////////////
                SizedBox(height: 10),
                Text('passCode', style: TextStyle(fontSize: 16)).tr(),
                SizedBox(height: 10),
                TextField(
                  controller: _passController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'passCode'.tr(),
                    hintText: 'passCode'.tr(),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutUSpage(),
                        ));
                    print('Entered Text: ${_emailController.text}');
                  },
                  child: Text('submit').tr(),
                ),

                // SizedBox(height: 50),
                // ElevatedButton(
                //   onPressed: () {
                //     context.setLocale(Locale('ur', 'PK'));
                //   },
                //   child: Text('اردو'),
                // ),
                // SizedBox(height: 10),
                // ElevatedButton(
                //   onPressed: () {
                //     context.setLocale(Locale('en', 'ES'));
                //   },
                //   child: Text('English'),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AboutUSpage extends StatelessWidget {
  const AboutUSpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20.0),
          child: Text(
            'about',
            style: TextStyle(fontSize: 24),
          ).tr(),
        ),
      ),
    );
  }
}
