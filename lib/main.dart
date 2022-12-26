import 'dart:io';
import 'dart:typed_data';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:path/path.dart' as ba;
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:http/http.dart' as http;
import 'package:image_watermark/image_watermark.dart';
import 'package:path/path.dart' as path;
import 'package:camera/camera.dart';
import 'package:rymsyard/search%20vehical.dart';
import 'package:rymsyard/singlepic.dart';
import 'package:rymsyard/splacescreen.dart';
import 'package:rymsyard/vehicalexit.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as ui;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:light_compressor/light_compressor.dart';
import 'camera.dart';
import 'dashbord.dart';
import 'demo.dart';
import 'flutter_flow_theme.dart';
import 'menus.dart';



List<Widget> _widgetOptions=[] ;
void main() {
  runApp(const vidioupload());
}
String desFile="";
class dasbod extends StatefulWidget {
  const dasbod({Key? key}) : super(key: key);

  @override
  State<dasbod> createState() => _dasbodState();
}
var ch;
int _selectedIndex = 0;
class _dasbodState extends State<dasbod> {
  bool net = true;
  var subscription;
  checkinternet() async {

    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        setState(() {
          setState(() {

            net = false;

          });
        });
      } else {
        setState(() {
          net = true;
        });
      }
    });
  }

  @override
  void initState() {
    checkinternet();
    iAndv="";
    f1="";
    f2="";
    _widgetOptions = <Widget>[
      const vehicalentry(),
      const vehicalexit(),
      const searchvehicle(),
      const ProfWidget()
    ];
    super.initState();
  }
  @override
  void dispose() {
    subscription.cancel;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return
      net?Scaffold(
        body:
        _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar:  Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 4,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: FontAwesomeIcons.car,
                  text: 'Vehicle entry',
                ),
                GButton(
                  icon:  Icons.local_car_wash_sharp,
                  text: 'Vehicle exit',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search Vehicle',
                ),
                GButton(
                  icon: Icons.menu,
                  text: 'menu',
                ),

              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          )
        ),
      ):
      SafeArea(
          child: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "asset/no_internet.png",
                  height: 300,
                  width: 300,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14.0),
                  child: const Text(
                    "Looks like you got disconnected, Please check your Internet connection",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff1f7396),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ));




  }
}
class vidioupload extends StatelessWidget {
  const vidioupload({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'RYMSYard',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
        debugShowCheckedModeBanner: false,
      home:  const splacescreen()
    );
  }
}
List singlepicfile=List.filled(20, "");
class ImageAndVidio extends StatefulWidget {
   ImageAndVidio(  {super.key, required this.title, required this.fun,required this.file});
  var file;
   Function fun;
  final String title;
  @override
  State<ImageAndVidio> createState() => _ImageAndVidioState();
}
var vidio;
class _ImageAndVidioState extends State<ImageAndVidio> {


var list=[
  "INVENTORY IMAGES",
  "VEHICLE IMAGES(FRONT)",
  "REAR IMAGES",
  "LEFT IMAGES",
  "RIGHT IMAGES",
  "INTERIOR FRONT IMAGES",
  "ENGINE IMAGES",
  "CHASIS IMAGES",
  "INTERIOR REAR IMAGES",
  "SPEEDOMETER IMAGES",
  "SPARE photo",
  "TYRE1 IMAGES",
  "TYRE2 IMAGES",
  "TYRE3 IMAGES",
  "TYRE4 IMAGES",
  "Step-ney tyre IMAGES",
  "VEHICLE EXIT DETAILS",
  "VEHICLE PHOTO with AGENT",
  "RELEASE LETTER IMAGES",
  "DOCUMENTS IMAGES"
];
  int _counter = 0;
  int percentage=0;
  bool loadee=true;

  final picker = ImagePicker();



  Future<String> get _destinationFile async {
    String directoryp;
    final String videoName = '${DateTime.now().millisecondsSinceEpoch}.mp4';
    final directory = await getExternalStorageDirectory();
    var directory1 = await Directory('${directory!.parent.parent.parent.parent.path}/dir/${widget.title}').create(recursive: true);

    if (Platform.isAndroid) {

      directoryp = directory1.path;
      return File('$directoryp/$videoName').path;
    } else {
      return File('$directory/$videoName').path;
    }
  }

  String? _displayedFile;
  late int _duration;
  String? _failureMessage;
  String? _filePath;
  bool _isVideoCompressed = false;
  final LightCompressor _lightCompressor = LightCompressor();
  Future<void> _pickVideo() async {


    File file;

    final picker = ImagePicker();
    var pickedFile = await  picker.pickVideo(source: ImageSource.camera);
    file = File(pickedFile!.path);
    if (file == null) {
      return;
    }
    setState(() {
      context.loaderOverlay.show();
    });
    _isVideoCompressed = false;



    _filePath = file.path;

    setState(() {
      _failureMessage = null;
    });

    desFile = await _destinationFile;
    final Stopwatch stopwatch = Stopwatch()..start();
    final dynamic response = await _lightCompressor.compressVideo(
        path: _filePath!,
        destinationPath: desFile,
        videoQuality: VideoQuality.very_low,
        isMinBitrateCheckEnabled: false,
        iosSaveInGallery: false);
    stopwatch.stop();
    final Duration duration =
    Duration(milliseconds: stopwatch.elapsedMilliseconds);
    _duration = duration.inSeconds;

    if (response is OnSuccess) {
      desFile = response.destinationPath;
      print(_duration);
      setState(() {
        context.loaderOverlay.hide();
        _displayedFile = desFile;
        _isVideoCompressed = true;
      });
    } else if (response is OnFailure) {

      setState(() {
        context.loaderOverlay.hide();
        _failureMessage = response.message;
      });
    } else if (response is OnCancelled) {
      setState(() {
        context.loaderOverlay.hide();
      });
      print(response.isCancelled);
    }
  }
late int sdk;
getinfo()
  async {
  DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  final androidInfo = await deviceInfoPlugin.androidInfo;
  sdk=androidInfo.version.sdkInt;
  return androidInfo.version.sdkInt;
}
  save()
  async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
      await Permission.accessMediaLocation.request();
      if(sdk >= 30) {
        await Permission.manageExternalStorage.request();
      }
      return;
    }
    else
      {
        final directory = await getExternalStorageDirectory();
        var directory1 = await Directory('${directory!.parent.parent.parent.parent.path}/RYMSValuer/${widget.title}').create(recursive: true);
        for(int i=0 ; i<int.parse(widget.file.length.toString());i++)
        {
          File(widget.file[i].path).copy("${directory1!.path}/$i.jpg");
        }

      }

  }
  // void uploadFileToServer(File imagePath) async {
  //
  //   var dio = Dio();
  //
  //   var formData = FormData.fromMap({
  //     'prop_id': '28',
  //     'file': await MultipartFile.fromFile(imagePath.path, filename: 'upload.mp4'),
  //   });
  //
  //   try {
  //     var response = await dio.post(
  //         'https://propertystop.com/uploadVideos', data: formData,
  //         onSendProgress: (int sent, int total) {
  //           percentage    = ((sent / total) * 100).floor();
  //           setState(() {
  //             percentage=percentage;
  //           });
  //
  //         });
  //     if(response.statusCode==200)
  //       {
  //         setState(() {
  //           context.loaderOverlay.hide();
  //         });
  //         Fluttertoast.showToast(msg: response.data.toString());
  //       }
  //     else
  //       {
  //         setState(() {
  //           context.loaderOverlay.hide();
  //         });
  //         Fluttertoast.showToast(msg: response.data.toString());
  //       }
  //   }
  //   catch (error) {
  //  print(error);
  // }
  // }
  void uploadFileToServerimg() async {
    setState(() {
      context.loaderOverlay.show();
    });
    final Stopwatch stopwatch = Stopwatch()..start();
    var request = http.MultipartRequest('POST', Uri.parse("http://training.virash.in/uploadTesting"));
    for(int i=0 ; i<int.parse(widget.file.length.toString());i++) {
          request.files.add(
              http.MultipartFile(
                  'images',
                  File(widget.file[i].path).readAsBytes().asStream(),
                  File(widget.file[i].path).lengthSync(),
                  filename: "$i.jpg"
              )
         );
         }
    request.files.add(
        http.MultipartFile(
            'video',
            File(desFile).readAsBytes().asStream(),
            File(desFile).lengthSync(),
            filename: "uploadvid.mp4"
        )
    );
    var res = await request.send();
    if(res.statusCode==200)
    {
      print(request.fields);
      setState(() {
        context.loaderOverlay.hide();
      });
      Fluttertoast.showToast(msg: res.statusCode.toString());
    }
    else
    {
      setState(() {
        context.loaderOverlay.hide();
      });
      print(request.toString());
      Fluttertoast.showToast(msg: res.statusCode.toString());
    }
  //   var dio = Dio();
  //   var formData = FormData();
  //   for(int i=0 ; i<int.parse(widget.file.length.toString());i++) {
  //     formData.files.add(
  //     MapEntry("images", await MultipartFile.fromFile(widget.file[i].path)),
  //   );
  //   }
  //   formData.files.add(
  //       MapEntry("images", await MultipartFile.fromFile(_desFile))
  //   );
  //   try {
  //     var response = await dio.post(
  //         'http://training.virash.in/uploadTesting', data: formData,
  //         onSendProgress: (int sent, int total) {
  //           percentage    = ((sent / total) * 100).floor();
  //           setState(() {
  //             percentage=percentage;
  //           });
  //
  //         });
  //     if(response.statusCode==200)
  //       {
  //         setState(() {
  //           context.loaderOverlay.hide();
  //         });
  //         Fluttertoast.showToast(msg: response.data.toString());
  //       }
  //     else
  //       {
  //         setState(() {
  //           context.loaderOverlay.hide();
  //         });
  //         Fluttertoast.showToast(msg: response.data.toString());
  //       }
  //   }
  //   catch (error) {
  //     setState(() {
  //       context.loaderOverlay.hide();
  //     });
  //     Fluttertoast.showToast(msg:error.toString());
  // }



    stopwatch.stop();
    final Duration duration =
    Duration(milliseconds: stopwatch.elapsedMilliseconds);
    _duration = duration.inSeconds;
    print("upload time$duration");
  }
  final ImagePicker _picker = ImagePicker();
  picimg(int index, String s)
  async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera,imageQuality: 50);
    if(image!=null) {
      File file2 = File(image.path);
      var t = await file2.readAsBytes();
      var imgBytes = Uint8List.fromList(t);
      var watermarkedImg = await ImageWatermark .addTextWatermark(
          watermarkText            //image bytes
              :'watermarkText',      //watermark text
          color: Colors.black, //default : Colors.white
          dstX: 100,         // default : imageWidth/4
          dstY: 100 ,
          imgBytes: imgBytes);        // default : imageWidth/2
      final directory = await getExternalStorageDirectory();
      var directory1 = await Directory('${directory!.parent.parent.parent.parent.path}/RYMSValuer/${widget.title}').create(recursive: true);
      print(directory.path);
      File file1 = await File('${directory1.path}/$index.png').create();
      file1.writeAsBytesSync(watermarkedImg);
      s=="S"?singlepicfile[index]=file1:widget.file[index] = file1;
    //  saveimg(image, index);
    }
    setState(() {
    });
  }
  singpicimg(index)
  async {
    // final XFile? image = await _picker.pickImage(source: ImageSource.camera,imageQuality: 50);
    // if(image!=null) {
    //   File file2 = File(image.path);
    //   var t = await file2.readAsBytes();
    //   var imgBytes = Uint8List.fromList(t);
    //   var watermarkedImg = await ImageWatermark.addTextWatermark(
    //       watermarkText //image bytes
    //           : 'watermarkText',
    //       //watermark text
    //       color: Colors.black,
    //       //default : Colors.white
    //       dstX: 100,
    //       // default : imageWidth/4
    //       dstY: 100,
    //       imgBytes: imgBytes); // default : imageWidth/2
    //   final directory = await getExternalStorageDirectory();
    //   var directory1 = await Directory(
    //       '${directory!.parent.parent.parent.parent.path}/RYMSValuer/${widget
    //           .title}').create(recursive: true);
    //   print(directory.path);
    //   File file1 = await File('${directory1.path}/${index}.png').create();
    //   file1.writeAsBytesSync(watermarkedImg);
    //   singlepicfile[index] = file1;
    //   setState(() {
    //
    //   });
    // }
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                Singlepic(
                  title: list,
                  id: index,
                )));


  }
var  file1;
getlist() async {
  var i=0;
  var directory1 = await Directory('/storage/emulated/0/RYMSValuer/dir/').create(recursive: true);
  file1 = Directory(directory1.path).listSync();
  print(file1);
  for (File parth in file1)
  {
    i=int.parse(ba.basename(parth.path).split(".").first);
    if (parth.path.endsWith(".jpg")) {
      singlepicfile[i]=parth;

    }
  }
  setState(() {
  });
}
  permition()
  async {
    var status = await Permission.storage.status;
    var list = List<String>.generate(20, (i) => (i + 1).toString());
    if (!status.isGranted) {
      await Permission.storage.request();
      await Permission.accessMediaLocation.request();
      if(sdk >= 30) {
        await Permission.manageExternalStorage.request();
      }
      return;
    }

  }
  @override
  void initState() {
    widget.file !=null? (){} :(){
      setState(() {

      });
    };
   // ch=="C"?getlist():(){};

    permition();
    getinfo();
    super.initState();
  }
var selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: LoaderOverlay(
        child:SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () async {
                                  if(desFile.trim()=="") {
                                    var status =
                                        await Permission.storage.status;
                                    var list = List<String>.generate(
                                        20, (i) => (i + 1).toString());
                                    if (!status.isGranted) {
                                      await Permission.storage.request();
                                      await Permission.accessMediaLocation
                                          .request();
                                      if (sdk >= 30) {
                                        await Permission.manageExternalStorage
                                            .request();
                                      }
                                      return;
                                    } else {
                                      _pickVideo();
                                    }
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(-0.6, 0),
                                      child: Padding(
                                        padding:
                                        EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                        child: Text(
                                          'Select Video',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context).bodyText1,
                                        ),
                                      ),
                                    ),
                                    desFile.trim()!=""?Icon(Icons.check):Container()
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 2,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () async {
                                  if(widget.file==null)
                                  {
                                    var status =
                                        await Permission.storage.status;
                                    if (!status.isGranted) {
                                      await Permission.storage.request();
                                      await Permission.accessMediaLocation
                                          .request();
                                      if (sdk >= 30) {
                                        await Permission.manageExternalStorage
                                            .request();
                                      }
                                      return;
                                    } else {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TakePictureScreen(
                                                    title: list,
                                                    name: 'arbaz',
                                                  )));
                                    }
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Text(
                                        'Select multiple Image',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context).bodyText1,
                                      ),
                                    ),
                                    widget.file!=null?Icon(Icons.check):Container()
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Row(
              //   mainAxisSize: MainAxisSize.max,
              //   children: [
              //     desFile.trim()==""?Expanded(
              //       child: GestureDetector(
              //         onTap: () async {
              //               var status = await Permission.storage.status;
              //               var list = List<String>.generate(20, (i) => (i + 1).toString());
              //               if (!status.isGranted) {
              //               await Permission.storage.request();
              //               await Permission.accessMediaLocation.request();
              //               if(sdk >= 30) {
              //               await Permission.manageExternalStorage.request();
              //               }
              //               return;
              //               }
              //
              //               else {
              //                 _pickVideo();
              //               }
              //         },
              //         child: Padding(
              //           padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //           child: Container(
              //             width: 50,
              //             height: 50,
              //             decoration: BoxDecoration(
              //               color: FlutterFlowTheme.of(context).secondaryBackground,
              //               borderRadius: BorderRadius.circular(10),
              //               border: Border.all(
              //                 color: FlutterFlowTheme.of(context).secondaryColor,
              //                 width: 1,
              //               ),
              //             ),
              //             child: Row(
              //               mainAxisSize: MainAxisSize.max,
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Align(
              //                   alignment: AlignmentDirectional(-0.6, 0),
              //                   child: Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //                     child: Text(
              //                       'Select Video',
              //                       textAlign: TextAlign.start,
              //                       style: FlutterFlowTheme.of(context).bodyText1,
              //                     ),
              //                   ),
              //                 ),
              //                 Icon(
              //                   Icons.navigate_next,
              //                   color: Colors.black,
              //                   size: 24,
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ):
              //     Expanded(
              //       child: GestureDetector(
              //         onTap: (){
              //         },
              //         child: Padding(
              //           padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //           child: Container(
              //             width: 50,
              //             height: 50,
              //             decoration: BoxDecoration(
              //               color: FlutterFlowTheme.of(context).secondaryBackground,
              //               borderRadius: BorderRadius.circular(10),
              //               border: Border.all(
              //                 color: FlutterFlowTheme.of(context).secondaryColor,
              //                 width: 1,
              //               ),
              //             ),
              //             child: Row(
              //               mainAxisSize: MainAxisSize.max,
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Align(
              //                   alignment: AlignmentDirectional(-0.6, 0),
              //                   child: Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //                     child: Text(
              //                       'Select Video',
              //                       textAlign: TextAlign.start,
              //                       style: FlutterFlowTheme.of(context).bodyText1,
              //                     ),
              //                   ),
              //                 ),
              //                 const Icon(
              //                   Icons.check,
              //                   color: Colors.black,
              //                   size: 24,
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),





              // widget.file!=null? Row(
              //   mainAxisSize: MainAxisSize.max,
              //   children: [
              //     Expanded(
              //       child: GestureDetector(
              //         onTap: () async {
              //
              //         },
              //         child: Padding(
              //           padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //           child: Container(
              //             width: 50,
              //             height: 50,
              //             decoration: BoxDecoration(
              //               color: FlutterFlowTheme.of(context).secondaryBackground,
              //               borderRadius: BorderRadius.circular(10),
              //               border: Border.all(
              //                 color: FlutterFlowTheme.of(context).secondaryColor,
              //                 width: 1,
              //               ),
              //             ),
              //             child: Row(
              //               mainAxisSize: MainAxisSize.max,
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Align(
              //                   alignment: AlignmentDirectional(-0.6, 0),
              //                   child: Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //                     child: Text(
              //                       'Select Image',
              //                       textAlign: TextAlign.start,
              //                       style: FlutterFlowTheme.of(context).bodyText1,
              //                     ),
              //                   ),
              //                 ),
              //                 Icon(
              //                   Icons.check,
              //                   color: Colors.black,
              //                   size: 24,
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ):
              // Row(
              //   mainAxisSize: MainAxisSize.max,
              //   children: [
              //     Expanded(
              //       child: GestureDetector(
              //         onTap: () async {
              //           var status = await Permission.storage.status;
              //           if (!status.isGranted) {
              //             await Permission.storage.request();
              //             await Permission.accessMediaLocation.request();
              //             if(sdk >= 30) {
              //               await Permission.manageExternalStorage.request();
              //             }
              //             return;
              //           }
              //
              //           else
              //           {
              //
              //             Navigator.pushReplacement(context,
              //                 MaterialPageRoute(builder:
              //                     (context) =>
              //                     TakePictureScreen( title: list, name: 'arbaz',)
              //                 ));
              //           }
              //
              //
              //         },
              //         child: Padding(
              //           padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //           child: Container(
              //             width: 50,
              //             height: 50,
              //             decoration: BoxDecoration(
              //               color: FlutterFlowTheme.of(context).secondaryBackground,
              //               borderRadius: BorderRadius.circular(10),
              //               border: Border.all(
              //                 color: FlutterFlowTheme.of(context).secondaryColor,
              //                 width: 1,
              //               ),
              //             ),
              //             child: Row(
              //               mainAxisSize: MainAxisSize.max,
              //               mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Align(
              //                   alignment: AlignmentDirectional(-0.6, 0),
              //                   child: Padding(
              //                     padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              //                     child: Text(
              //                       'Select Image',
              //                       textAlign: TextAlign.start,
              //                       style: FlutterFlowTheme.of(context).bodyText1,
              //                     ),
              //                   ),
              //                 ),
              //                 const Icon(
              //                   Icons.navigate_next,
              //                   color: Colors.black,
              //                   size: 24,
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              widget.file!=null? Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:  widget.file.length,
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    childAspectRatio: 1,
                  ),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text(
                                "View Image",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              content: SingleChildScrollView(
                                child: Form(
                                  child: Column(
                                    children: [
                                      Image.file(File(widget.file[index]!.path)),
                                      Row(
                                        children: [
                                          ElevatedButton(onPressed: (){

                                            setState(() {
                                              Navigator.pop(context);
                                              widget.file.removeAt(index);
                                            });}, child: Text("Delete")),
                                          ElevatedButton(onPressed: (){
                                            setState(() {
                                              Navigator.pop(context);
                                              picimg(index,"M");
                                            });}, child: Text("retake")),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ));
                      },
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Container(

                                child: Image.file(
                                  File(widget.file[index]!.path),
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              )
                            ,
                              Align(
                                alignment: AlignmentDirectional(0.02, 0.95),
                                child: Container(
                                  width: 150,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    list[index],
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },

                ),
              ):
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:  singlepicfile.length,
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    childAspectRatio: 1,
                  ),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        singlepicfile[index]!=""?showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text(
                                "View Image",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              content: SingleChildScrollView(
                                child: Form(
                                  child: Column(
                                    children: [
                                      Image.file(File(singlepicfile[index]!.path)),
                                      Row(
                                        children: [
                                          ElevatedButton(onPressed: (){
                                            setState(() {
                                              Navigator.pop(context);
                                              singlepicfile.removeAt(index);
                                            });}, child: Text("Delete")),
                                          ElevatedButton(onPressed: (){
                                            setState(() {
                                              Navigator.pop(context);
                                              picimg(index,"S");
                                            });}, child: Text("retake")),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )):singpicimg(index);
                      },
                      child:  Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Stack(
                            children: [
                          singlepicfile[index]!=""?Container(

                            child: Image.file(
                            File(singlepicfile[index]!.path),
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                                ),
                          ):
                          Image.asset("asset/pi.png"),
                              Align(
                                alignment: AlignmentDirectional(0.02, 0.95),
                                child: Container(
                                  width: 150,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    list[index].toString(),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context).bodyText1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },

                ),
              ),
      ElevatedButton(onPressed: (){

        print(singlepicfile.toString());
        if(widget.file==null) {
                      int c = 0;
                      for (var x in singlepicfile) {
                        if (x.toString().trim() == "") {
                          c++;
                        }
                      }
                      if (c == 0 && desFile.trim()!="") {
                        iAndv="kdf";
                        widget.fun();
                        context.loaderOverlay.hide();
                        details['file']=singlepicfile;
                        details["vidio"]=desFile;
                        DefaultTabController.of(context)?.animateTo(1);

                      }
                      else
                        {
                          context.loaderOverlay.hide();
                          Fluttertoast.showToast(msg: "Select All image And Video");
                        }

                     // DefaultTabController.of(context)?.notifyListeners();

                    }

        else
          {
            if(desFile.trim()!="") {
              details['file']=widget.file;
              details["vidio"]=desFile;
              iAndv="kdf";
              widget.fun();
              Get.offAll(()=>const dasbod());
              //  DefaultTabController.of(context)?.animateTo(1);
            }
            else
              {

                Fluttertoast.showToast(msg: "Select Video");
              }
          }
                  }, child: const Text("Proceed to Inventry"))
            ],
          ),
        )
        ,
      ),
    );
  }
  saveimg(file,int i)
  async {
    try {

    } catch (e) {
      return null;
    }
  }
}
