// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_test/models/favorites.dart';
import 'package:proyecto_test/screens/home.dart';

Widget homePage() => ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp(
        home: homePage(),
      ),
    );

void main() {
  group('prueba widget', () {
    testWidgets('Test widget 1', (WidgetTester tester) async {
      await tester.pumpWidget(homePage());
      expect(find.text('Ejemplo Test'), findsOneWidget);
    });
    testWidgets('Test widget 2', (WidgetTester tester) async {
      await tester.pumpWidget(homePage());
      expect(find.byIcon(Icons.favorite), findsNothing);
      expect(find.byIcon(Icons.favorite_border), findsWidgets);

      await tester.tap(find.byIcon(Icons.favorite_border).first);
      expect(find.byIcon(Icons.favorite), findsNothing);
    });
  });
}
