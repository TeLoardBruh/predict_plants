// ignore_for_file: avoid_print
// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:frontend_flutter/web/custom_tab.dart';
import 'package:frontend_flutter/web/custom_tab_bar.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:frontend_flutter/web/content_view.dart';

class MyAppWeb extends StatefulWidget {
  const MyAppWeb({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAppWeb> with SingleTickerProviderStateMixin {
  bool loading = false;
  late TabController tabController;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  late double screenHeight;
  late double screenWidth;

  
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: contentViews.length, vsync: this);
  }

  @override
  List<ContentView> contentViews = [
    ContentView(
      tab: CustomTab(title: 'Home'),
      content: Center(
        child: ChangeNotifierProvider<MyProvider>(
          create: (context) => MyProvider(),
          child: Consumer<MyProvider>(
            builder: (context, provider, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (provider.image != null)
                          Image.network(provider.image.path)
                        else
                          Container(
                            child: Column(
                              children: [
                                // Loader(Color(0xff2EB736)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Please Input your plant'),
                              ],
                            ),
                          ),

                        SizedBox(
                          height: 10,
                        ),
                        if (provider.textConfidence == null)
                          ElevatedButton(
                            onPressed: () async {
                              var image = await ImagePicker()
                                  .getImage(source: ImageSource.gallery);
                              provider.setImage(image, true, true);
                              // provider.isClear = true;
                            },
                            // color: Colors.blue,
                            // textColor: Colors.white,
                            child: Text('Get image'),
                            style: ElevatedButton.styleFrom(
                                // onPrimary: Color(0xFF2FC438),
                                // onSurface: Color(0xFF9DBF9F),
                                primary: Color(0xFF2FC438)),
                          )
                        else
                          ElevatedButton(
                            onPressed: () async {
                              provider.setImage(null, false, false);
                              provider.textConfidence = null;
                              provider.textConfidence = null;
                              // provider.isClear = false;
                            },
                            // color: Colors.blue,
                            // textColor: Colors.white,
                            child: Text('Clear image'),
                            style: ElevatedButton.styleFrom(
                                // onPrimary: Color(0xFF2FC438),
                                // onSurface: Color(0xFF9DBF9F),
                                primary: Color(0xFF2FC438)),
                          ),
                        SizedBox(
                          height: 20,
                        ),
                        // if (provider.image != null)
                        //   ElevatedButton(
                        //     onPressed: () {
                        //       if (provider.image == null) return;
                        //       provider.makePostRequest();

                        //       // }
                        //     },
                        //     // color: Colors.blue,
                        //     // textColor: Colors.white,
                        //     child: Text('make post request...'),
                        //     style: ElevatedButton.styleFrom(
                        //         // onPrimary: Color(0xFF2FC438),
                        //         // onSurface: Color(0xFF9DBF9F),
                        //         primary: Color(0xFF2FC438)),
                        //   ),
                        if (provider.textConfidence != null)
                          Text(provider.textClass),

                        // ignore: unnecessary_null_comparison
                        if (provider.textConfidence != null)
                          Text(provider.textConfidence.toString() + '%'),
                        SizedBox(
                          height: 20,
                        ),
                        
                        // if (provider.loading == true) Loader(Color(0xff2EB736))
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    ),
    ContentView(
      tab: CustomTab(title: 'About'),
      content: Center(
        child: Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
      ),
    ),
    ContentView(
      tab: CustomTab(title: 'Contact'),
      content: Center(
        child: Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
      ),
    ),
  ];
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Color(0xFF1B5F1F),
      appBar: AppBar(
        title: Text('Plants Detections'),
        centerTitle: true,
        backgroundColor: Color(0xff2EB736),
        iconTheme: IconThemeData(color: Colors.white, size: 500 * 0.08),
      ),

      key: scaffoldKey,
      body: LayoutBuilder(
        builder: (context, constrains) {
          if (constrains.maxWidth > 715) {
            return deskTopView();
          } else {
            return moblieView();
          }
        },
      ),
    );
  }

  // ignore: non_constant_identifier_names
  CircularProgressIndicator Loader(Color valueColor) {
    return CircularProgressIndicator(
      // backgroundColor: backgroundColor,
      valueColor: AlwaysStoppedAnimation(valueColor),
      // strokeWidth: 10,
    );
  }

  Widget deskTopView() {
    return ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(),
      child: Consumer<MyProvider>(
        builder: (context, provider, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomTabBar(
                controller: tabController,
                tabs: contentViews.map((e) => e.tab).toList(),
              ),
              Container(
                height: 400,
                child: TabBarView(
                  children: contentViews.map((e) => e.content).toList(),
                  controller: tabController,
                ),
              ),
              // Center(
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       if (provider.image != null)
              //         Image.network(provider.image.path)
              //       else
              //         Container(
              //           child: Column(
              //             children: [
              //               Loader(Color(0xff2EB736)),
              //               SizedBox(
              //                 height: 10,
              //               ),
              //               Text('Please Input your plant'),
              //             ],
              //           ),
              //         ),

              //       SizedBox(
              //         height: 10,
              //       ),
              //       if (provider.textConfidence == null)
              //         ElevatedButton(
              //           onPressed: () async {
              //             var image = await ImagePicker()
              //                 .getImage(source: ImageSource.gallery);
              //             provider.setImage(image, true, true);
              //             // provider.isClear = true;
              //           },
              //           // color: Colors.blue,
              //           // textColor: Colors.white,
              //           child: Text('Get image'),
              //           style: ElevatedButton.styleFrom(
              //               // onPrimary: Color(0xFF2FC438),
              //               // onSurface: Color(0xFF9DBF9F),
              //               primary: Color(0xFF2FC438)),
              //         )
              //       else
              //         ElevatedButton(
              //           onPressed: () async {
              //             provider.setImage(null, false, false);
              //             provider.textConfidence = null;
              //             provider.textConfidence = null;
              //             // provider.isClear = false;
              //           },
              //           // color: Colors.blue,
              //           // textColor: Colors.white,
              //           child: Text('Clear image'),
              //           style: ElevatedButton.styleFrom(
              //               // onPrimary: Color(0xFF2FC438),
              //               // onSurface: Color(0xFF9DBF9F),
              //               primary: Color(0xFF2FC438)),
              //         ),
              //       SizedBox(
              //         height: 20,
              //       ),
              //       // if (provider.image != null)
              //       //   ElevatedButton(
              //       //     onPressed: () {
              //       //       if (provider.image == null) return;
              //       //       provider.makePostRequest();

              //       //       // }
              //       //     },
              //       //     // color: Colors.blue,
              //       //     // textColor: Colors.white,
              //       //     child: Text('make post request...'),
              //       //     style: ElevatedButton.styleFrom(
              //       //         // onPrimary: Color(0xFF2FC438),
              //       //         // onSurface: Color(0xFF9DBF9F),
              //       //         primary: Color(0xFF2FC438)),
              //       //   ),
              //       if (provider.textConfidence != null)
              //         Text(provider.textClass),

              //       // ignore: unnecessary_null_comparison
              //       if (provider.textConfidence != null)
              //         Text(provider.textConfidence.toString() + '%'),
              //       SizedBox(
              //         height: 20,
              //       ),
              //       if (provider.loading == true) Loader(Color(0xff2EB736))
              //     ],
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }

  Widget moblieView() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTabBar(
              controller: tabController,
              tabs: contentViews.map((e) => e.tab).toList(),
            ),
            Container(
              height: 400,
              child: TabBarView(
                children: contentViews.map((e) => e.content).toList(),
                controller: tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyProvider extends ChangeNotifier {
  var image;
  var textClass;
  var textConfidence;
  bool loading = false;
  bool isClear = false;

  Future setImage(img, isClear, loading) async {
    this.image = img;
    this.loading = loading;
    this.isClear = isClear;
    this.notifyListeners();
    // }
    String url = 'http://127.0.0.1:8000/predict';
    String urlCloud =
        'https://us-central1-agu-plants-detections.cloudfunctions.net/cors';
    var headers = {
      //YOUR HEADERS
      "Accept": "application/json",
      "Access-Control_Allow_Origin": "*"
    };
    var request = http.MultipartRequest('POST', Uri.parse(urlCloud));
    // request.headers.addAll(headers);

    // Now we can make this call
    print("IN HERE");
    print(this.isClear);
    // print(this.image == Null);
    // print(this.image.path != Null);
    // //Let's read response now
    // // Future makePostRequest() async {
    if (this.isClear) {
      Uint8List data = await this.image.readAsBytes();
      List<int> list = data.cast();
      request.files.add(
          http.MultipartFile.fromBytes('file', list, filename: 'myFile.png'));
      // print("inside not null "+this.image);
      var response = await request.send();
      // We've made a post request...
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
        this.loading = false;
        // print(textClass);
        this.notifyListeners();
        // ignore: void_checks
        return parsedJson;
        //It's done...
      });
    }
  }
}
