import 'package:flutter/material.dart';

class MyTheme{
static final darkTheme = ThemeData(
scaffoldBackgroundColor:Colors.grey.shade900,
  primaryColor:Colors.black,
iconTheme:IconThemeData(color: Colors.purple.withOpacity(0.5)),
colorScheme:ColorScheme.dark()
);

static final lightTheme = ThemeData(
scaffoldBackgroundColor:Colors.white,
  primaryColor:Colors.black,
iconTheme:IconThemeData(color: Colors.purple.withOpacity(0.5)),
    colorScheme: ColorScheme.light()
);
}