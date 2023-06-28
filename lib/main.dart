import 'package:flutter/material.dart';
import 'lamo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kitap Lamo',
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Kitap Lamo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> buttonLabels = [
    '1.    Lamo mar Okinyi',
    '2.    Lamo mar Odhiambo',
    '3.    Lamo Mar Odhiambo Moniang\'',
    '4.    Lamo mar Batiso',
    '5.    Lamo mar Batiso Mantie Kiawa',
    '6.    Batiso Ma Apoya',
    '7.    Katkaism Manyien',
    '8.    Lamo mar Rwako ji e Sawo',
    '9.    Lamo mar Yieyo Lwedo kod Ote Dhi Tiyo gi Timo nend Yesu',
    '10.   Lamo mar pogo Sawo Maler mar Ruoth',
    '11.   Lamo mar Kend Maler',
    '12.   Guedho Kend',
    '13.   Nuoyo kuong\'ruok mar kend',
    '14.   Lamo Moket ni Juma ka Juma',
    '15.   Lamo mar Keto Mise mar Kanisa',
    '16.   Lamo mar Walo Kanisa',
    '17.   Lamo ma Itimo ni Kanisa mane Osewal to koro Iduoko e Tije Mamoko',
    '18.   Lamo mar Yiko Ng\'at Motho',
    '19.   Lamo mar Yik Machielo',
    '20.   Lamo mar Yiko Ng\'at Modere',
    '21.   Rwako Jopuonj Kanisa',
    '22.   Lamo mar Pwodho Gik Lemo Mogak',
    '23.   Rwako jo-Kristo moa e Kanise mamoko',
    '24.   Rwako jo-kristo mane oa to koro Duogo e Kanisa mar Anglikan',
    '25.   Lamo mar lokruok a e Richo',
    '26.   Lamo mar Limo Jotuo',
    '27.   Lamo mar Chang',
    '28.   Lemo mag Ndalo Moyiedhi',
    '29.   Lamo Mamoko',
    '30.   Lemo moyiedhi mag goyo erokamano',
    '31.   Goyo Erokamano ni Nyasaye: Lamo bang\' gimoro motimore ni Ja-Kristo mobwogo ngimane',
    '32.   Goyo Erokamano bang\' Keyo',
    '33.   Goyo Erokamano bang\' Nyuol',
    '34.   Lamo mar Goyo Erokamano'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 71, 255),
        title: Text(widget.title,
            style: const TextStyle(
              color: Colors.white,
            )),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: buttonLabels.length,
            itemBuilder: (context, int index) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Lamo(lamo_id: index),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(buttonLabels[index],
                            style: const TextStyle(
                              color: Colors.black,
                            )),
                      )));
            }),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
