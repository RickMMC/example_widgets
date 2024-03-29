import 'package:ex_widget/presentation/providers/countdown_provider.dart';
import 'package:flutter/material.dart';
import 'package:ex_widget/presentation/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((_) => CountdownProvider())),
      ],
      child: const MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ), //MaterialApp
    ); //MultiProvider
  }
}
