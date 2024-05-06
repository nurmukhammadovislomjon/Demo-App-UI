// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kirish_ui/initstate/theme_tanlash.dart';
import 'package:page_transition/page_transition.dart';

class InitStatePage extends StatefulWidget {
  const InitStatePage({super.key});

  @override
  State<InitStatePage> createState() => _InitStatePageState();
}

class _InitStatePageState extends State<InitStatePage> {
  String? tilText;
  String? yourTil;
  String? keyingiText;
  @override
  void initState() {
    super.initState();
    reloadTil();
  }

  reloadTil() {
    GetStorage().read("yourTil") == null
        ? GetStorage().write("yourTil", "uz")
        : null;
    yourTil = GetStorage().read("yourTil");
    if (yourTil == "uz") {
      tilText = "Tilni tanlang 🇺🇿";
      keyingiText = "Keyingi";
    } else if (yourTil == "en") {
      tilText = "Select a language 🇬🇧";
      keyingiText = "Next";
    } else if (yourTil == "ru") {
      tilText = "Выберите язык 🇷🇺";
      keyingiText = "Следующий";
    }
    setState(() {});
  }

  saveLanguage(String value) {
    GetStorage().write("yourTil", value);
    reloadTil();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              tilText.toString(),
              style: GoogleFonts.poppins(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: size.width,
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
                borderRadius: BorderRadius.circular(5),
                border: yourTil == "uz"
                    ? Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 1,
                      )
                    : null,
                boxShadow: yourTil == "uz"
                    ? [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.tertiary,
                          blurRadius: 20,
                        ),
                      ]
                    : null,
              ),
              child: InkWell(
                onTap: yourTil != "uz"
                    ? () {
                        saveLanguage("uz");
                      }
                    : null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "O'zbekcha",
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        "🇺🇿",
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: size.width,
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
                borderRadius: BorderRadius.circular(5),
                border: yourTil == "en"
                    ? Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 1,
                      )
                    : null,
                boxShadow: yourTil == "en"
                    ? [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.tertiary,
                          blurRadius: 20,
                        ),
                      ]
                    : null,
              ),
              child: InkWell(
                onTap: yourTil != "en"
                    ? () {
                        saveLanguage("en");
                      }
                    : null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "English",
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        "🇬🇧",
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: size.width,
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
                borderRadius: BorderRadius.circular(5),
                border: yourTil == "ru"
                    ? Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 1,
                      )
                    : null,
                boxShadow: yourTil == "ru"
                    ? [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.tertiary,
                          blurRadius: 20,
                        ),
                      ]
                    : null,
              ),
              child: InkWell(
                onTap: yourTil != "ru"
                    ? () {
                        saveLanguage("ru");
                      }
                    : null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Русский",
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        "🇷🇺",
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              width: size.width,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.tertiary,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        child: ThemeTanlash(
                          nextText: keyingiText.toString(),
                        ),
                        type: PageTransitionType.rightToLeft,
                      ));
                },
                child: Center(
                  child: Text(
                    keyingiText.toString(),
                    style: GoogleFonts.poppins(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
