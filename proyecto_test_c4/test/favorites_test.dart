import 'package:flutter_test/flutter_test.dart';

import 'package:proyecto_test/models/favorites.dart';

void main() {
  final favoritos = Favorites();
  // pruebas unitarias
  group('grupoPruebas', () {
    int numero = 1;
    test('Prueba 1', () {
      favoritos.add(numero);
      expect(favoritos.items.contains(numero), true);
    });

    test('Prueba 2', () {
      int valor = 2;
      favoritos.remove(valor);
      expect(favoritos.items.contains(valor), false);
    });
  });
}
