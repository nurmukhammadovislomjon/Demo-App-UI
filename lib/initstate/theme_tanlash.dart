// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kirish_ui/home/home.dart';
import 'package:kirish_ui/theme/dark_theme.dart';
import 'package:kirish_ui/theme/light_theme.dart';
import 'package:kirish_ui/theme/theme_provider.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ThemeTanlash extends StatefulWidget {
  const ThemeTanlash({super.key, required this.nextText});
  final String nextText;

  @override
  State<ThemeTanlash> createState() => _ThemeTanlashState();
}

class _ThemeTanlashState extends State<ThemeTanlash> {
  String? youThemeText;
  @override
  void initState() {
    super.initState();
    themeTexts();
  }

  void themeTexts() {
    String language = GetStorage().read("yourTil");
    if (language == "uz") {
      youThemeText = "Mavzuni tanlang";
    } else if (language == "en") {
      youThemeText = "Choose a theme";
    } else if (language == "ru") {
      youThemeText = "Выберите тему";
    }
    setState(() {});
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
              '$youThemeText 😎',
              style: GoogleFonts.poppins(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(
                  size.width * 0.05,
                ),
                child: InkWell(
                  onTap: () =>
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme(),
                  child: Container(
                    width: size.width * 0.4,
                    height: size.width * 0.4,
                    decoration: BoxDecoration(
                      color: lightTheme.colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: Theme.of(context).colorScheme.background ==
                              lightTheme.colorScheme.background
                          ? [
                              BoxShadow(
                                color: Theme.of(context).colorScheme.tertiary,
                                blurRadius: 30,
                              )
                            ]
                          : null,
                      border: Theme.of(context).colorScheme.background ==
                              lightTheme.colorScheme.background
                          ? Border.all(
                              color: Colors.blueAccent,
                              width: 1,
                            )
                          : null,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: size.width * 0.1,
                                height: size.width * 0.1,
                                decoration: BoxDecoration(
                                  color: lightTheme.colorScheme.tertiary,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: size.width * 0.2,
                                    height: size.width * 0.04,
                                    decoration: BoxDecoration(
                                      color: lightTheme.colorScheme.tertiary,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.width * 0.015,
                                  ),
                                  Container(
                                    width: size.width * 0.1,
                                    height: size.width * 0.025,
                                    decoration: BoxDecoration(
                                      color: lightTheme.colorScheme.tertiary,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.width * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: size.width * 0.1,
                                height: size.width * 0.1,
                                decoration: BoxDecoration(
                                  color: lightTheme.colorScheme.tertiary,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: size.width * 0.2,
                                    height: size.width * 0.04,
                                    decoration: BoxDecoration(
                                      color: lightTheme.colorScheme.tertiary,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.width * 0.015,
                                  ),
                                  Container(
                                    width: size.width * 0.1,
                                    height: size.width * 0.025,
                                    decoration: BoxDecoration(
                                      color: lightTheme.colorScheme.tertiary,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.width * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: size.width * 0.1,
                                height: size.width * 0.1,
                                decoration: BoxDecoration(
                                  color: lightTheme.colorScheme.tertiary,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: size.width * 0.2,
                                    height: size.width * 0.04,
                                    decoration: BoxDecoration(
                                      color: lightTheme.colorScheme.tertiary,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.width * 0.015,
                                  ),
                                  Container(
                                    width: size.width * 0.1,
                                    height: size.width * 0.025,
                                    decoration: BoxDecoration(
                                      color: lightTheme.colorScheme.tertiary,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  size.width * 0.05,
                ),
                child: InkWell(
                  onTap: () =>
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme(),
                  child: Container(
                    width: size.width * 0.4,
                    height: size.width * 0.4,
                    decoration: BoxDecoration(
                      color: darkTheme.colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: Theme.of(context).colorScheme.background ==
                              darkTheme.colorScheme.background
                          ? [
                              BoxShadow(
                                color: Theme.of(context).colorScheme.tertiary,
                                blurRadius: 30,
                              )
                            ]
                          : null,
                      border: Theme.of(context).colorScheme.background ==
                              darkTheme.colorScheme.background
                          ? Border.all(
                              color: Colors.blueAccent,
                              width: 1,
                            )
                          : null,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: size.width * 0.1,
                                height: size.width * 0.1,
                                decoration: BoxDecoration(
                                  color: darkTheme.colorScheme.tertiary,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: size.width * 0.2,
                                    height: size.width * 0.04,
                                    decoration: BoxDecoration(
                                      color: darkTheme.colorScheme.tertiary,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.width * 0.015,
                                  ),
                                  Container(
                                    width: size.width * 0.1,
                                    height: size.width * 0.025,
                                    decoration: BoxDecoration(
                                      color: darkTheme.colorScheme.tertiary,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.width * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: size.width * 0.1,
                                height: size.width * 0.1,
                                decoration: BoxDecoration(
                                  color: darkTheme.colorScheme.tertiary,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: size.width * 0.2,
                                    height: size.width * 0.04,
                                    decoration: BoxDecoration(
                                      color: darkTheme.colorScheme.tertiary,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.width * 0.015,
                                  ),
                                  Container(
                                    width: size.width * 0.1,
                                    height: size.width * 0.025,
                                    decoration: BoxDecoration(
                                      color: darkTheme.colorScheme.tertiary,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.width * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: size.width * 0.1,
                                height: size.width * 0.1,
                                decoration: BoxDecoration(
                                  color: darkTheme.colorScheme.tertiary,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: size.width * 0.2,
                                    height: size.width * 0.04,
                                    decoration: BoxDecoration(
                                      color: darkTheme.colorScheme.tertiary,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.width * 0.015,
                                  ),
                                  Container(
                                    width: size.width * 0.1,
                                    height: size.width * 0.025,
                                    decoration: BoxDecoration(
                                      color: darkTheme.colorScheme.tertiary,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
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
                  GetStorage().write("isToHome", true);
                  Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                          child: const HomePage(),
                          type: PageTransitionType.rightToLeft),
                      (route) => false);
                },
                child: Center(
                  child: Text(
                    widget.nextText,
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
