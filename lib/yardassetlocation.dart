import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rymsyard/test.dart';

import 'flutter_flow/flutter_flow_theme.dart';

class yardasset extends StatefulWidget {
  const yardasset({Key? key}) : super(key: key);

  @override
  State<yardasset> createState() => _yardassetState();
}



var data=[
  "A","B","C","D","E","F","AG"
];

final TextEditingController _searchController = TextEditingController();
class _yardassetState extends State<yardasset> {
  bool isLoading=true;
  bool showSearch = true;
  Color primaryColor = const Color(0xff1f7396);

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

  fetchemployelist() async {
    // Dio dio=Dio();
    // var formData = FormData.fromMap({
    //   "emp_id":1
    // });
    // print(formData.fields);
    // var response = await dio.post('http://training.virash.in/employee_list', data: formData);
    // if (response.statusCode == 200) {
    //   print(response.data);
    //   data= response.data;
    //   setState(() {
    //     isLoading = false;
    //   });
    // } else {
    //   data= response.data;
    //   setState(() {
    //     isLoading = false;
    //   });
    // }
  }

  @override
  void initState() {
    checkinternet();
    fetchemployelist();
    super.initState();
  }
  @override
  void dispose() {
    _searchController.clear();
    subscription.cancel;
    super.dispose();
  }
  refress()
  {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    showDataAlert() {
      showDialog(
          context: context,
          builder: (context) {
            TextEditingController c= TextEditingController();
            return AlertDialog(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20.0,
                  ),
                ),
              ),
              contentPadding: const EdgeInsets.only(
                top: 10.0,
              ),
              title: const Text(
                "Create Yard Asset",
                style: TextStyle(fontSize: 24.0),
              ),
              content: Container(
                height: 300,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Yard Asset ",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child:  TextField(
                          controller: c,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Yard Asset ',
                              labelText: 'Asset'),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            data.add(c.text);
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            // fixedSize: Size(250, 50),
                          ),
                          child: const Text(
                            "Submit",
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            );
          });
    }
    EditshowDataAlert(int position) {
      showDialog(
          context: context,
          builder: (context) {
            TextEditingController c= TextEditingController();
            c.text=data[position];
            return AlertDialog(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    20.0,
                  ),
                ),
              ),
              contentPadding: const EdgeInsets.only(
                top: 10.0,
              ),
              title: const Text(
                "Create Yard Asset",
                style: TextStyle(fontSize: 24.0),
              ),
              content: Container(
                height: 300,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Yard Asset ",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child:  TextField(
                          controller: c,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Yard Asset ',
                              labelText: 'Asset'),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            data[position]=c.text;
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            // fixedSize: Size(250, 50),
                          ),
                          child: const Text(
                            "Submit",
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            );
          });
    }
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {

        showDataAlert();


      },child: Icon(Icons.add),),
        body:net?SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                showSearch ?Container(
                    width: w,
                    height: h * 0.09,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Yard Asset",
                              style:  FlutterFlowTheme.of(context).subtitle2,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      showSearch = !showSearch;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.search,
                                    color: primaryColor,
                                  )),
                            ],
                          ),
                        )
                      ],
                    )):
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: w * 0.7,
                      child: Card(
                        //margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                        elevation: 4,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(12))),
                        child: TextFormField(
                          autofocus: true,
                          controller: _searchController,
                          onChanged: (value) {
                            setState(() {

                            });
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.orange.shade200,
                              ),
                              suffixIcon: IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.black38,
                                  size: 20.0,
                                ),
                                onPressed: () {
                                  setState(() {

                                  });
                                  _searchController.clear();
                                },
                              ),
                              hintText: "Search",
                              hintStyle: const TextStyle(
                                  color: Colors.black26),
                              filled: true,
                              fillColor: Colors.white,
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(18.0)),
                              ),
                              contentPadding:
                              const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                  vertical: 16.0)),
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            _searchController.clear();
                            showSearch = !showSearch;
                          });
                        },
                        child: Text("Close",
                            style: TextStyle(
                              color: Colors.black54,
                              decoration: TextDecoration.underline,
                            ))),
                  ],
                ),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.length,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, position) {
                      if (data[position]
                          .toString()
                          .toLowerCase()
                          .contains(
                          _searchController.text.toLowerCase())) {
                        return

                          GestureDetector(
                            onTap: (){
                              EditshowDataAlert(position);
                            },
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Color(0xFFF1F4F8),
                                    width: 2,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF1F4F8),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          data[position],
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context).title2.override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF101213),
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Lesson Name',
                                                style: FlutterFlowTheme.of(context).subtitle1.override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF101213),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                child: Text(
                                                  'A description of your lesson goes here...',
                                                  style: FlutterFlowTheme.of(context).bodyText2.override(
                                                    fontFamily: 'Outfit',
                                                    color: Color(0xFF57636C),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                      }
                      else
                        return Container();
                    },
                  ),
                )

              ],
            ),
          ),
        ):SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/no_internet.png",
                  height: 300,
                  width: 300,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14.0),
                  child: Text(
                    "Looks like you got disconnected, Please check your Internet connection",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff1f7396),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ))

    );
  }
}
