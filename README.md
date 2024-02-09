# flutter_html_table_extension

## Features

It renders tables easily with flutter_html version ^3.0.0-beta.2.

## Getting started

Put flutter_html_table_extension in your pubspec.yaml:

```yml
dependencies:
  flutter:
    sdk: flutter

  flutter_html: ^3.0.0-beta.2
  flutter_html_table_extension: 0.0.1-beta.1
```

Install the dependencies:

```bash
flutter pub get
```

## Usage

```dart
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("flutter_html_table_extension"),
      ),
      body: Html(
        data:
            '<table><tr><td>Row 1 Col 1</td><td>Row 1 Col 2</td></tr><tr><td>Row 2 Col 1</td><td>Row 2 Col 2</td></tr></table>',
        extensions: [
          HtmlTableExtension(),
        ],
      ),
    );
  }
}
```
