
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:rymsyard/firstpage.dart';
import 'package:rymsyard/searchedittext.dart';
import 'package:rymsyard/urls.dart';

import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart'as di;
import 'demo.dart';
import 'flutter_flow/flutter_flow_radio_button.dart';
import 'flutter_flow/flutter_flow_widgets.dart';

class ChecboxWidget extends StatefulWidget {
  const ChecboxWidget({Key? key, required Set<void> Function() fun}) : super(key: key);

  @override
  _ChecboxWidgetState createState() => _ChecboxWidgetState();
}

class _ChecboxWidgetState extends State<ChecboxWidget> {

  TextEditingController? Registration_No;
  TextEditingController? Contract_No;
  TextEditingController? Chasis_Number;
  TextEditingController? Engine_No;
  TextEditingController? Customer_Name;
  TextEditingController? INSURANCE_VALIDITY;
  TextEditingController? Mileageatrepo;
  TextEditingController? Mileage_at_yard;
  TextEditingController? Fuel;
  TextEditingController? Registered_Date;
  String? Repo_Agency_Name;
  String? STATUS;
  String? Make;
  String? Model;

  String? RC_Book_Availability;
  String? VEHICLE_INSURANCE;
  String? PUC_Certificate;
  String? Fitness_Certificate;
  String? TAX_Book;
  String? PERMIT;


  TextEditingController? Section_yard;
  String? Source;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    Registration_No = TextEditingController();
    Contract_No = TextEditingController();
    Chasis_Number = TextEditingController();
    Engine_No = TextEditingController();
    Customer_Name = TextEditingController();
    Mileageatrepo = TextEditingController();
    Mileage_at_yard = TextEditingController();
    Fuel = TextEditingController();
    INSURANCE_VALIDITY = TextEditingController();
    Registered_Date = TextEditingController();
    Section_yard = TextEditingController();
  }

  submit() async {
    try{
      Dio dio = Dio();
      var formData = di.FormData.fromMap({"video":
          await di.MultipartFile.fromFile(details["vidio"], filename:"a.mp4"
              ""),
        "yard_id":
          "1"
    });
      formData.files.add(MapEntry("images[]", await di.MultipartFile.fromFile(details["file"][0].path, filename:"a.jpg")));
       formData.files.add(MapEntry("images[]", await di.MultipartFile.fromFile(details["file"][1].path, filename:"b.jpg")));
       var response =
       await dio.post(addvehicledata, data: formData);

      // if (response.statusCode == 200) {
      //   var jason=jsonDecode(response.data);
      //   print(jason["success"]);
      //   if (jason["success"] == "1") {
      //     //   prefs.setString(userIdKey,data2);
      //
      //     Get.offAll(()=>const dasbod());
      //   } else {
      //     setState(() {
      //       context.loaderOverlay.hide();
      //     });
      //     var snackBar = SnackBar(
      //       content: Text(jason["message"].toString()),
      //       backgroundColor: (Colors.red),
      //     );
      //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
      //   }
      // } else {
      //   setState(() {
      //     context.loaderOverlay.hide();
      //   });
      // }
    }
    catch(e)
    {
      const snackBar = SnackBar(
        content: Text('Login Fail'),
        backgroundColor: (Colors.red),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> showMyDialog(loc) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext conte) {
        return  Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: 500,
                    child: scrachbox(loc)),

              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    Registration_No?.dispose();
    Contract_No?.dispose();
    Chasis_Number?.dispose();
    Engine_No?.dispose();
    Customer_Name?.dispose();
    Mileageatrepo?.dispose();
    Mileage_at_yard?.dispose();
    Fuel?.dispose();
    INSURANCE_VALIDITY?.dispose();
    Registered_Date?.dispose();
    Section_yard?.dispose();
    super.dispose();
  }
  Future<void> date(TextEditingController incalander1)
  async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime(2100));

    if (pickedDate != null) {
      //pickedDate output format => 2021-03-10 00:00:00.000
      String formattedDate =
      DateFormat('dd-MM-yyyy').format(pickedDate);
      //formatted date output using intl package =>  2021-03-16
      setState(() {
        incalander1.text =
            formattedDate; //set output date to TextField value.
      });
    } else {}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
    
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child:LoaderOverlay(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [

                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'RC Book Availability',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),



                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options: ['yes', 'no'].toList(),
                      onChanged: (val) => setState(() => RC_Book_Availability = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: const Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'VEHICLE INSURANCE',
                        style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options: ['yes', 'no'].toList(),
                      onChanged: (val) => setState(() => VEHICLE_INSURANCE = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: const Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'INSURANCE VALIDITY',
                        style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    date(INSURANCE_VALIDITY!);
                  },
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        controller: INSURANCE_VALIDITY,
enabled: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Enter date',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'PUC Certificate',
                        style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options: ['yes', 'no'].toList(),
                      onChanged: (val) => setState(() => PUC_Certificate = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: const Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'Fitness Certificate',
                        style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options: ['yes', 'no'].toList(),
                      onChanged: (val) => setState(() => Fitness_Certificate = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: const Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'TAX Book',
                        style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options: ['yes', 'no'].toList(),
                      onChanged: (val) => setState(() => TAX_Book = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: const Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'PERMIT',
                        style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                      ),
                    ),
                    child: FlutterFlowRadioButton(
                      options: ['yes', 'no'].toList(),
                      onChanged: (val) => setState(() => PERMIT = val),
                      optionHeight: 50,
                      textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      textPadding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: const Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'Registered Date',
                        style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              GestureDetector(
                  onTap: (){
                    date(Registered_Date!);
                  },
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        controller: Registered_Date,
enabled: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Enter date',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0)
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ),
                ),





                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Registration No',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        controller: Registration_No,

                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Enter Registration No',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0)
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Contract No',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        controller: Contract_No,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Enter Contract No',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          contentPadding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0)
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Make',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: FlutterFlowDropDown(
                        options: ['Option 1', '2', '3'],
                        onChanged: (val) => setState(() => Make = val),
                        width: 180,
                        height: 50,
                        textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                        hintText: 'Please select...',
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 0,
                        margin: const EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ),
                 Make!=null? Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Model',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ):Container(),
                  Make!=null? Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: FlutterFlowDropDown(
                        options: ['Option 1', '2', '3'],
                        onChanged: (val) => setState(() => Model = val),
                        width: 180,
                        height: 50,
                        textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                        hintText: 'Please select...',
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 0,
                        margin: const EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ):Container(),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Chasis Number',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        controller: Chasis_Number,

                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Enter Chasis Number',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0)
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Engine No',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        controller: Engine_No,

                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Enter Engine No',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0)
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Customer Name',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        controller: Customer_Name,

                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Enter Customer Name',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0)
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Repo Agency Name',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: FlutterFlowDropDown(
                        options: ['Option 1', '2', '3'],
                        onChanged: (val) => setState(() => Repo_Agency_Name = val),
                        width: 180,
                        height: 50,
                        textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                        hintText: 'Please select...',
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 0,
                        margin: const EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Mileage at  repo',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        controller: Mileageatrepo,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Enter Mileage at  repo',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0)
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Mileage at  yard',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        controller: Mileage_at_yard,

                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Enter Mileage at  repo',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0)
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Fuel (inches)',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        controller: Fuel,

                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Enter Fuel (inches)',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0)
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ),

                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'STATUS',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: FlutterFlowDropDown(
                        options: ['Towed', 'running'],
                        onChanged: (val) => setState(() => STATUS = val),
                        width: 180,
                        height: 50,
                        textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                        hintText: 'Please select...',
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 0,
                        margin: const EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Source',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: FlutterFlowDropDown(
                        options: ['Repo', 'Surrenderd'],
                        onChanged: (val) => setState(() => Source = val),
                        width: 180,
                        height: 50,
                        textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                        hintText: 'Please select...',
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 0,
                        margin: const EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                        hidesUnderline: true,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Section yard',
                          style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
,
                GestureDetector(
                  onTap: (){
                    Section_yard?.clear();
                    showMyDialog(Section_yard);
                  },
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                        ),
                      ),
                      child: TextFormField(
                        controller: Section_yard,
                            enabled: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Enter Fuel (inches)',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedErrorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0)
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ),
                ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color:
                            FlutterFlowTheme.of(context).secondaryBackground,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                            ),
                          ),
                          child: FFButtonWidget(
                            onPressed: () {
                              submit();
                              try
                              {
                                details['Repo_Agency_Name'] = Repo_Agency_Name!;
                                details['STATUS'] = STATUS!;
                                details['Make_and_Model'] = Make!;
                                details['RC_Book_Availability'] = RC_Book_Availability!;
                                details['VEHICLE_INSURANCE'] = VEHICLE_INSURANCE!;
                                details['PUC_Certificate'] = PUC_Certificate!;
                                details['Fitness_Certificate'] = Fitness_Certificate!;
                                details['TAX_Book'] = TAX_Book!;
                                details['PERMIT'] = PERMIT!;


                                details['Section_yard'] = Section_yard!;
                                details['Source'] = Source!;



                                if( Registration_No!.text!=""&&
                                Contract_No!.text!=""&&
                                Chasis_Number!.text!=""&&
                                Engine_No!.text!=""&&
                                Customer_Name!.text!=""&&
                                INSURANCE_VALIDITY!.text!=""&&
                                Mileageatrepo!.text!=""&&
                                Mileage_at_yard!.text!=""&&
                                Fuel!.text!=""&&Section_yard!.text!=""&&
                                Registered_Date!.text!="") {

                                  details['Registration_No'] =   Registration_No!.text;
                                      details['Contract_No'] =      Contract_No!.text;
                                      details['Chasis_Number'] =     Chasis_Number!.text;
                                      details['Engine_No'] =     Engine_No!.text;
                                      details['Customer_Name'] =    Customer_Name!.text;
                                      details['INSURANCE_VALIDITY'] =    INSURANCE_VALIDITY!.text;
                                      details['Mileageatrepo'] =    Mileageatrepo!.text;
                                      details['Mileage_at_yard'] =    Mileage_at_yard!.text;
                                      details['Fuel'] =    Fuel!.text;
                                      details['Section_yard'] =   Section_yard!.text;
                                      details['Registered_Date'] =   Registered_Date!.text;

                                  // print(vehicle!+transmission!);
                                  submit();
                                 // Get.offAll(()=>const dasbod());

                                }
                                else
                                {
                                  Fluttertoast.showToast(msg: "Fill Form");
                                }
                              }
                              catch(e)
                              {
                                Fluttertoast.showToast(msg: "Fill Form");
                              }
                            },
                            text: 'Submit',
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 8,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
