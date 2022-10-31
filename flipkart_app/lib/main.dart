import 'package:flipkart_app/DskListv2.dart';
import 'package:flipkart_app/Mlistv2.dart';
import 'package:flipkart_app/Tablistv2.dart';
import 'package:flipkart_app/Tabviewbtn.dart';
import 'package:flipkart_app/comAppbar.dart';
import 'package:flipkart_app/deskViewbtn.dart';
import 'package:flipkart_app/deskimgslider.dart';
import 'package:flipkart_app/desktoplist.dart';
import 'package:flipkart_app/imageslider.dart';
import 'package:flipkart_app/list.dart';
import 'package:flipkart_app/mobileAppbar.dart';
import 'package:flipkart_app/mobimgslider.dart';
import 'package:flipkart_app/mobviewbtn.dart';
import 'package:flipkart_app/responsive.dart';
import 'package:flipkart_app/tabAppbar.dart';
import 'package:flipkart_app/tablist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Responsive.isDesktop(context)
            ? ComAppbar()
            : Responsive.isTab(context)
                ? TabAppbar()
                : MobileAppbar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: Responsive.isDesktop(context)
                  ? const [ListD(), sliderD(), Dview(), Listv2()]
                  : Responsive.isTab(context)
                      ? const [ListT(), sliderT(), Tview(), ListT2()]
                      : const [
                          Listv(),
                          sliderM(),
                          Mview(),
                          ListM2(),
                        ],
            ),
          ),
        ),
      ),
    );
  }
}
