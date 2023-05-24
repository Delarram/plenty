import 'package:flutter/material.dart';
import 'package:newpj/bloc/my_theme_bloc.dart';
import 'package:provider/provider.dart';

class ThemeButtonWidget extends StatelessWidget {
  const ThemeButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myThemeBloc = Provider.of<MyThemeBloc>(context);
    return Switch.adaptive(value: myThemeBloc.isDarkMode, onChanged: (value){
   final myThemeBloc = Provider.of<MyThemeBloc>(context,listen: false);
   myThemeBloc.switchTheme(value);
    });
  }
}
