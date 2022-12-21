import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:share_plus/share_plus.dart';
import 'dashbord.dart';
import 'firstpage.dart';
import 'flutter_flow/flutter_flow_icon_button.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'form1.dart';
import 'main.dart';
Map<String,dynamic> details={} ;
class tab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RYMSYard",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

String iAndv="",f1="",f2="";



class HomePage extends StatefulWidget {
   HomePage({Key? key, this.file}) : super(key: key);
var file;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  late TabController tabController;
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
    super.initState();
    checkinternet();
    print("object");
    tabController =  TabController(vsync: this, length: 2);
  }
  @override
  void dispose() {
    print("ob");
    subscription.cancel;
    tabController.dispose();
    super.dispose();
  }

  void refress()
  {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: net?Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          Share.share('check out my website https://example.com');
        },child: Icon(Icons.send),),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30,
            ),
            onPressed: () {
              Get.offAll(()=>const dasbod());
            },
          ),
          title: Text(
            'Image and Video',
            style: FlutterFlowTheme.of(context).subtitle2,
          ),
          actions: [],
          centerTitle: true,
          elevation: 0,
          bottom:  TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                child: Container(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Image And Video",textAlign: TextAlign.center,style: TextStyle(color: Colors.blueAccent,fontSize: 10),),
                    iAndv!=""?Icon(Icons.check,color: Colors.blue,):Container()
                  ],
                ),),
              ),
              Tab(
                  child:  Container(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       const Text("Inventry",textAlign: TextAlign.center,style: TextStyle(color: Colors.blueAccent,fontSize: 10),),
                      f1!=""? Icon(Icons.check,color: Colors.blue,):Container()
                    ],
                  ),)
              ),
            ],
          ),
        ),
        body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
          children: [
            ImageAndVidio(title: 'asd', file: widget.file, fun: ()=>{refress()},),
            ChecboxWidget(fun: ()=>{refress()}),

          ],
        ),
      ):Scaffold(
        body: SafeArea(
            child: Column(
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
            )),
      ),
    );
  }
}
