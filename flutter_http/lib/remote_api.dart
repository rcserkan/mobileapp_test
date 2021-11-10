import 'dart:convert';

import 'package:flutter/material.dart';

class RemoteApiKullanimi extends StatefulWidget {
  RemoteApiKullanimi({Key? key}) : super(key: key);
  String value = "";

  @override
  _RemoteApiKullanimiState createState() => _RemoteApiKullanimiState();
}

class _RemoteApiKullanimiState extends State<RemoteApiKullanimi> {
  TextEditingController txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remote Api'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: txtController,
              onChanged: (val) {
                setState(() {
                  widget.value = val;
                  print(widget.value);
                });
              },
              onSubmitted: (val) {
                txtController.clear();
              },
            ),
            Text(
              widget.value,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
