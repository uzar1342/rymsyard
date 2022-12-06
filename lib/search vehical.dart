import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'flutter_flow/flutter_flow_theme.dart';

class searchvehicle extends StatefulWidget {
  const searchvehicle({Key? key}) : super(key: key);

  @override
  State<searchvehicle> createState() => _searchvehicleState();
}





final TextEditingController _searchController = TextEditingController();
class _searchvehicleState extends State<searchvehicle> {
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
  var data;
  fetchemployelist() async {
    data={"data":[
      {"emp_name":"A"},{"emp_name":"B"},{"emp_name":"C"},{"emp_name":"D"},{"emp_name":"E"},{"emp_name":"H"},{"emp_name":"Aq"}
    ]};
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
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;
    return Scaffold(
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
                        "Employe List",
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
                  height: h*0.75,
                  child: ListView.builder(
                    itemCount: data["data"].length,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, position) {
                      if (data["data"][position]['emp_name']
                          .toString()
                          .toLowerCase()
                          .contains(
                          _searchController.text.toLowerCase())) {
                        return

                          Padding(
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
                                        data["data"][position]['emp_name'],
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