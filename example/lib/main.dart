import 'package:flutter/material.dart';
import 'package:webscrollbar/webscrollbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WebScrollBar Demo',
      home: WebScrollBarExample(),
    );
  }
}

class WebScrollBarExample extends StatefulWidget {
  const WebScrollBarExample({Key? key}) : super(key: key);

  @override
  State<WebScrollBarExample> createState() => _WebScrollBarExampleState();
}

class _WebScrollBarExampleState extends State<WebScrollBarExample> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: WebScrollBar(
          controller: controller,
          visibleHeight: MediaQuery.of(context).size.height + 300,
          scrollbarMinWidth: 14,
          scrollThumbColor: Colors.white,
          child: SingleChildScrollView(
            controller: controller,
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(children: [
              child(),
              child(),
              child(),
              child(),
              child(),
              child(),
              child(),
              child(),
              child(),
              child(),
              child(),
              child(),
              child(),
              child(),
            ]),
          )),
    );
  }

  child() => Container(
        height: 150,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 20),
        color: Colors.amber,
        child: const Center(
            child: Text('Text Example', textAlign: TextAlign.center)),
      );
}
