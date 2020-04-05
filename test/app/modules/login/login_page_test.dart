import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_slidy_modular/app/modules/login/login_page.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets('LoginPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(LoginPage()));
    final titleFinder = find.text('Login');
    expect(titleFinder, findsOneWidget);
  });
}
