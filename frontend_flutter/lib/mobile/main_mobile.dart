// ignore_for_file: avoid_print
// ignore_for_file: avoid_print
// ignore: avoid_web_libraries_in_flutter
import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Color(0xFF1B5F1F),
        appBar: AppBar(
          title: Text('Plants Detections'),
          centerTitle: true,
          backgroundColor: Color(0xff2EB736),
        ),
        body: ChangeNotifierProvider<MyProvider>(
          create: (context) => MyProvider(),
          child: Consumer<MyProvider>(
            builder: (context, provider, child) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      if (provider.image != null)
                        Image.file(File(provider.image.path)),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        var image = await ImagePicker()
                            .getImage(source: ImageSource.gallery);
                        provider.setImage(image);
                      },
                      // color: Colors.blue,
                      // textColor: Colors.white,
                      child: Text('Get image'),
                      style: ElevatedButton.styleFrom(
                          // onPrimary: Color(0xFF2FC438),
                          // onSurface: Color(0xFF9DBF9F),
                          primary: Color(0xFF2FC438)),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (provider.image == null) return;
                        provider.makePostRequest();
                      },
                      // color: Colors.blue,
                      // textColor: Colors.white,
                      child: Text('make post request...'),
                      style: ElevatedButton.styleFrom(
                          // onPrimary: Color(0xFF2FC438),
                          // onSurface: Color(0xFF9DBF9F),
                          primary: Color(0xFF2FC438)),
                    ),
                    if (provider.textClass != null) Text(provider.textClass),
                    // ignore: unnecessary_null_comparison
                    if (provider.textConfidence.toString() != null)
                      Text(provider.textConfidence.toString()),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class MyProvider extends ChangeNotifier {
  var image;
  var textClass;
  var textConfidence;

  Future setImage(img) async {
    this.image = img;
    this.notifyListeners();
  }

  Future makePostRequest() async {
    String url = 'http://127.0.0.1:8000/predict';
    String url_cloud =
        'https://us-central1-agu-plants-detections.cloudfunctions.net/cors';
    var headers = {
      //YOUR HEADERS
      "Accept": "application/json",
      "Access-Control_Allow_Origin": "*"
    };
    var request = http.MultipartRequest('POST', Uri.parse(url_cloud));
    // request.headers.addAll(headers);
    Uint8List data = await this.image.readAsBytes();
    List<int> list = data.cast();
    request.files.add(
        http.MultipartFile.fromBytes('file', list, filename: 'myFile.png'));

    // Now we can make this call

    var response = await request.send();
    //We've made a post request...
    //Let's read response now

    response.stream.bytesToString().asStream().listen((event) {
      var parsedJson = json.decode(event);
      print(parsedJson);
      print(response.statusCode);
      print("========================");
      // print(parsedJson['class']);
      // print(parsedJson['confidence']);

      // print("========================");
      // // print(json.decode(parsedJson));
      // Text("Class : $parsedJson['class']");
      // Text("Class : $parsedJson['confidence']");
      textClass = parsedJson['class'];
      textConfidence = parsedJson['confidence'];
      // print(textClass);
      this.notifyListeners();
      // ignore: void_checks
      return parsedJson;
      //It's done...
    });
  }
}
