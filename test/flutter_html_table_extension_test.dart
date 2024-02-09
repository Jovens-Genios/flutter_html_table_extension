import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_html_table_extension/flutter_html_table_extension.dart';

void main() {
  testWidgets('HtmlTableExtension builds DataTable widget',
      (WidgetTester tester) async {
    final html = Html(
      data:
          '<table><tr><td>Row 1 Col 1</td><td>Row 1 Col 2</td></tr><tr><td>Row 2 Col 1</td><td>Row 2 Col 2</td></tr></table>',
      extensions: [
        HtmlTableExtension(),
      ],
    );

    await tester.pumpWidget(MaterialApp(home: Scaffold(body: html)));

    // Verify that DataTable widget is built
    expect(find.byKey(const Key("DataTable")), findsOneWidget);

    // Verify the text content of cells
    expect(find.text('Row 1 Col 1'), findsOneWidget);
    expect(find.text('Row 1 Col 2'), findsOneWidget);
    expect(find.text('Row 2 Col 1'), findsOneWidget);
    expect(find.text('Row 2 Col 2'), findsOneWidget);
  });
}
