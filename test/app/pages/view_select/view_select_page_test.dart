import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_slidy_modular/app/pages/view_select/view_select_page.dart';

main() {
  testWidgets('ViewSelectPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(ViewSelectPage(title: 'ViewSelect')));
    final titleFinder = find.text('ViewSelect');
    expect(titleFinder, findsOneWidget);
  });
}
