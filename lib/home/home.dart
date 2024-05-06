// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kirish_ui/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final storage = GetStorage();
  String? language;
  String? dropdownValue;

  @override
  void initState() {
    super.initState();
    reloadLanguage();
  }

  void reloadLanguage() {
    language = storage.read("yourTil");
    dropdownValue = language;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.secondary,
        ),
        title: Text(
          "Demo app ui",
          style: GoogleFonts.poppins(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.tertiary,
      ),
      body: Center(
        child: Text(
          language == "uz"
              ? "Salom foydalanuvchi 👋"
              : language == "en"
                  ? "Hello user 👋"
                  : "Привет пользователь 👋",
          style: GoogleFonts.poppins(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: themeData.colorScheme.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CupertinoSwitch(
              value: Provider.of<ThemeProvider>(context).getDarkMode,
              onChanged: (value) {
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme();
              },
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButton(
              value: dropdownValue,
              style: GoogleFonts.poppins(
                color: themeData.colorScheme.secondary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              items: const [
                DropdownMenuItem(
                  value: "uz",
                  child: Text("Uzbek 🇺🇿"),
                ),
                DropdownMenuItem(
                  value: "en",
                  child: Text("English 🇬🇧"),
                ),
                DropdownMenuItem(
                  value: "ru",
                  child: Text("Русский 🇷🇺"),
                ),
              ],
              onChanged: (value) {
                GetStorage().write("yourTil", value);
                reloadLanguage();
              },
              isExpanded: false,
            ),
          ],
        ),
      ),
    );
  }
}
