// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class QuotesApp extends StatefulWidget {
  const QuotesApp({super.key});

  @override
  State<QuotesApp> createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {
  int _index = 0;
  List quotes = [
    "I'm an engineer, not an artist 0",
    "I'm an engineer, not an artist 1",
    "I'm an engineer, not an artist 3"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quotes App'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent,
                    ),
                    child: Center(
                        child: Text(quotes[_index % quotes.length],
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontStyle: FontStyle.italic)))),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: OutlinedButton.icon(
                onPressed: _showQuote,
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green.shade700,
                ),
                icon: Icon(Icons.wb_sunny),
                label: Text(
                  "Inspire me!",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  _showQuote() {
    setState(() {
      _index += 1;
    });
  }
}
