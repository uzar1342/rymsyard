import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import 'package:device_info/device_info.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_watermark/image_watermark.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart'as mi;
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image/image.dart' as ui;
import 'demo.dart';
import 'flutter_flow_theme.dart';
import 'main.dart';
import 'main.dart' as d;


class Singlepic extends StatefulWidget {
  Singlepic({
    required this.title,required this.id
  });
  int len=0;
  var title;
  int id;
  bool camraloader=true;
  @override
  SinglepicState createState() => SinglepicState();
}
int i=0;
class SinglepicState extends State<Singlepic> {
  late Future<void> _initializeControllerFuture;
  bool net = false;
  var file=[];
  bool loader =true;
  late String Address;
  XFile? image=null;
  late Image camerraImage;
  late CameraController _controller;
  late List<CameraDescription> _availableCameras;
  int len =1;
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an Attendence'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () =>{
              Navigator.pop(context),
            Navigator.pop(context)

            },
            child: const Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }

  @override

  void initState() {
    super.initState();
    permition();
    print(file);
    _initializeControllerFuture= _getAvailableCameras();
  }

  // get available cameras
  Future<void> _getAvailableCameras() async{
    WidgetsFlutterBinding.ensureInitialized();
    _availableCameras = await availableCameras();
    _initCamera(_availableCameras.first);
  }

  // init camera
  Future<void> _initCamera(CameraDescription description) async{
    _controller = CameraController(description, ResolutionPreset.medium, enableAudio: true);

    try{
      await _controller.initialize();
      // to notify the widgets that camera has been initialized and now camera preview can be done
      setState((){});
    }
    catch(e){
      print(e);
    }
  }
  getinfo()
  async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    final androidInfo = await deviceInfoPlugin.androidInfo;
    return androidInfo.version.sdkInt;
  }
  permition()
  async {
    var status = await Permission.storage.status;
    var list = List<String>.generate(20, (i) => (i + 1).toString());
    if (!status.isGranted) {
      await Permission.storage.request();
      await Permission.accessMediaLocation.request();
      if(getinfo() >= 30) {
        await Permission.manageExternalStorage.request();
      }
      return;
    }

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleCameraLens() {
    // get current lens direction (front / rear)
    final lensDirection = _controller.description.lensDirection;
    CameraDescription newDescription;
    if (lensDirection == CameraLensDirection.front) {
      newDescription = _availableCameras.firstWhere((description) => description
          .lensDirection == CameraLensDirection.back);
    }
    else {
      newDescription = _availableCameras.firstWhere((description) => description
          .lensDirection == CameraLensDirection.front);
    }

    if (newDescription != null) {
      _initCamera(newDescription);
    }
    else {
      print('Asked camera not available');
    }
  }

  addimg(file3)
  async {
    File file2 = File(file3.path);
    var t = await file2.readAsBytes();
    ui.Image? originalImage = ui.decodeImage(file2.readAsBytesSync());
    var imgBytes = Uint8List.fromList(t);
    var watermarkedImg = await ImageWatermark.addTextWatermark(
        watermarkText            //image bytes
            :'watermarkText',      //watermark text
        color: Colors.black, //default : Colors.white
        dstX: (originalImage!.width*0.3).round(),         // default : imageWidth/4
        dstY: (originalImage.height*0.9).round() ,
        imgBytes: imgBytes);        // default : imageWidth/2
    final directory = await getExternalStorageDirectory();
    var directory1 = await Directory('${directory!.parent.parent.parent.parent.path}/RYMSValuer/dir').create(recursive: true);
    File file1 = File('${directory1.path}/${widget.id}.jpg');
    file1.writeAsBytesSync(watermarkedImg);
    singlepicfile[widget.id]=file1;
    print(singlepicfile[widget.id]);
    i++;
  }
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: WillPopScope(
          onWillPop: _onWillPop,
          child: Column(
            children: [
              Expanded(
                child: Container(
                    padding: const EdgeInsets.only(top: 0.0),
                    height: h * 0.09,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () =>{
                            Navigator.pop(context)
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                              // top: 10.0,
                              left: 15.0,
                            ),
                            //padding: const EdgeInsets.only(left: 5.0),
                            height: h * 0.05,
                            width: h * 0.05,
                            decoration: BoxDecoration(
                              // color: primaryColor,
                                border: Border.all(color: Colors.black26, width: 1.0),
                                borderRadius:
                                const BorderRadius.all(Radius.circular(12.0))),
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.black87,
                              size: 18.0,
                            ),
                          ),
                        ),
                        Text(
                          widget.len<len?widget.title[widget.id]:"Send",
                          style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        IconButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const AttendancePage()));
                          },
                          icon: const FaIcon(
                            FontAwesomeIcons.chartArea,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ],
                    )),
              ),
              Expanded(
                flex: 6,
                child:widget.len<len? widget.camraloader?
                FutureBuilder<void>(
                  future: _initializeControllerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      // If the Future is complete, display the preview.
                      return  CameraPreview(_controller);
                    } else {
                      // Otherwise, display a loading indicator.
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ): Image.file(File(image!.path)):Image.file(File(image!.path)),
              ),
              SizedBox(height: 5),
              widget.len<len?
              loader?
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding: const EdgeInsets.all(20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),

                    onPressed: () async {
                      try {
                        await _initializeControllerFuture;
                        image  = await _controller!.takePicture();
                        if (!mounted) return;
                        // If the picture was taken, display it on a new screen.
                        setState(() {
                          loader=false;
                          widget.camraloader=false;
                        });
                        // Navigator.pushReplacement(context,
                        //     MaterialPageRoute(builder:
                        //         (context) =>
                        //             picview( file: image!)
                        //     ));


                      } catch (e) {
                        // If an error occurs, log the error to the console.
                        print(e);
                      }
                    }
                    , child:Container(width: w*0.8,child: Center(child: const Text("Take picture",style: TextStyle(fontSize: 20),)))),
              ):
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        widget.camraloader=true;
                        loader=true;
                      });
                    },
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.replay_sharp,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      if(widget.len<len) {

                        setState(() {
                          widget.camraloader=true;
                          widget.len=widget.len+1;
                          loader=true;
                        });
                        if(widget.len==2||widget.len==3||widget.len==5||widget.len==6)
                        {
                          _toggleCameraLens();
                        }
                        // file.add(image);
                        addimg(image);
                      }
                      else
                      {

                      }
                    },
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ):
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(w*0.8, h*0.1),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),

                    onPressed: () async {
                      i=0;
                      ch="C";
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder:
                              (context) =>
                              HomePage(file: null)
                          ));
                    }
                    , child: const Text("Send",style: TextStyle(fontSize: 25),)),
              )


            ],
          ),
        ),
      ),


    );
  }

}

class picview extends StatelessWidget {
  picview({Key? key,required this.file}) : super(key: key);
  XFile file;
  @override
  Widget build(BuildContext context) {
    return Image.file(File(file!.path));
  }
}


