import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kirish_ui/home/home.dart';
import 'package:kirish_ui/initstate/initstate_page.dart';
import 'package:kirish_ui/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  await GetStorage.init();
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final getStorage = GetStorage();
  bool? isToHome;
  @override
  void initState() {
    super.initState();
    isToHome = getStorage.read("isToHome");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      home: isToHome != null
          ? isToHome == true
              ? const HomePage()
              : const InitStatePage()
          : const InitStatePage(),
    );
  }
}
