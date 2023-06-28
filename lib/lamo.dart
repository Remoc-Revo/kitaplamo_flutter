import 'package:flutter/material.dart';
import 'package:kitaplamo_flutter/lamo_array.dart';
import 'package:flutter_html/flutter_html.dart';

class Lamo extends StatefulWidget {
  const Lamo({super.key, required this.lamo_id});

  final int lamo_id;

  @override
  State<Lamo> createState() => LamoState();
}

class LamoState extends State<Lamo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 68, 71, 255),
          title: Text(lamo_array[widget.lamo_id][0],
              style: const TextStyle(
                color: Colors.white,
              )),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Html(
                data: lamo_array[widget.lamo_id][1],
                style: {'pre': Style(fontSize: FontSize(19.0))})));
  }
}
