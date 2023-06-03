import 'package:fluent_ui/fluent_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: 'Flutter Demo',
      theme: FluentThemeData(
        accentColor: Colors.green,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network("https://w.wallhaven.cc/full/ex/wallhaven-ex9gwo.png"),
        Row(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
                  child: SizedBox(
                    width: 400,
                    height: 48,
                    child: TextBox(
                      placeholder: "Поиск...",
                      style: TextStyle().copyWith(fontSize: 22),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
                  child: SizedBox(
                      child: Button(
                          child: Icon(FluentIcons.context_menu),
                          onPressed: () => {}),
                      width: 48,
                      height: 48),
                ),
              ],
            ),
          ],
        ),
        Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(child: Button(child: Icon(FluentIcons.add), onPressed: () => {}), width: 48, height: 48),
              SizedBox(height: 8),
              SizedBox(child: Button(child: Icon(FluentIcons.add), onPressed: () => {}), width: 48, height: 48),
              SizedBox(height: 8),
              SizedBox(child: Button(child: Icon(FluentIcons.add), onPressed: () => {}), width: 48, height: 48),
            ],
          ),
        ),
      ],
    );
  }
}
