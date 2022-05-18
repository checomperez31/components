import 'package:components/screens/home_screen.dart';
import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:components/router/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
    );
  }

  /**
   * Function to navigate to another component from splashscreen
   */
  Widget createOrNavigateInSplashScreen(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: authService.hasToken(), //this should be the method and it has to return a futurebuilder
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if ( snapshot.hasData ) {
            return Text('Cargando');
          }
          Future.microtask(() {
            Navigator.pushReplacement(
              context, 
              PageRouteBuilder(
                pageBuilder: ((context, animation, secondaryAnimation) => const HomeScreen()),
                transitionDuration: Duration(seconds: 0)
                )
              );
          });

          return Container();
        },
      ),
    );
  }
}