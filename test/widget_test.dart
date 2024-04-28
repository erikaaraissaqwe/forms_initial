// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:form_initial/main.dart';

void main() {
  testWidgets('Teste de salvamento de dados', (WidgetTester tester) async {

    await tester.pumpWidget(MyApp());

    expect(find.text('TELA DE CADASTRO'), findsOneWidget);

    await tester.enterText(find.byKey(ValueKey('Nome')), 'João');
    await tester.enterText(find.byKey(ValueKey('Endereço')), 'Rua A');
    await tester.enterText(find.byKey(ValueKey('Email')), 'joao@example.com');

    await tester.tap(find.text('Salvar'));
    await tester.pump();

    expect(find.text('Dados salvos com sucesso!'), findsOneWidget);
  });
}
