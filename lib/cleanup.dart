import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'flutter_flow/flutter_flow_icon_button.dart';
import 'main.dart';

class CleanupWidget extends StatefulWidget {
  const CleanupWidget({Key? key}) : super(key: key);

  @override
  _CleanupWidgetState createState() => _CleanupWidgetState();
}

class _CleanupWidgetState extends State<CleanupWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late int sdk;
  getinfo()
  async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    final androidInfo = await deviceInfoPlugin.androidInfo;
    sdk=androidInfo.version.sdkInt;
    return androidInfo.version.sdkInt;
  }
  @override
  void initState() {
    getinfo();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () {
           Navigator.pop(context);
          },
        ),
        title: Text(
          'Clean DataBase',
          style: FlutterFlowTheme.of(context).subtitle2,
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 250,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Image.asset(
                        'asset/cleanSpace.png',
                        width: 100,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Cleaning your database will \nDelete All The File from Your \nInternal Storage',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title1,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) =>  AlertDialog(
                        title: const Text('Log Out'),
                        content: new Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("are you sure you want to log out"),
                          ],
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'),
                          ),
                          ElevatedButton(
                            onPressed: () async {

                              var status = await Permission.storage.status;
                              if (!status.isGranted) {
                                await Permission.storage.request();
                                await Permission.accessMediaLocation.request();
                                if(sdk >= 30) {
                                  await Permission.manageExternalStorage.request();
                                }
                                return;
                              }

                              else {
                                Navigator.of(context).pop();

                                final directory = await getExternalStorageDirectory();
                                var directory1 = await Directory('${directory!.parent.parent.parent.parent.path}/dir').create(recursive: true);
                                directory1.deleteSync(recursive: true);
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const dasbod()));
                              }
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                  text: 'Clean',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius:8,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
