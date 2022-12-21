import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'flutter_flow/flutter_flow_icon_button.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'invoicelist.dart';

class InvoiceGrid extends StatefulWidget {
  const InvoiceGrid({Key? key}) : super(key: key);

  @override
  State<InvoiceGrid> createState() => _InvoiceGridState();
}

class _InvoiceGridState extends State<InvoiceGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
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
    'File/Invoice',
    style: FlutterFlowTheme.of(context).subtitle2,
    ),
    actions: [],
    centerTitle: true,
    elevation: 0,
    ),
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 6,
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 3,
            mainAxisSpacing: 2,
            childAspectRatio: 1,
          ),
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context) =>
                          listinvoice()
                      ));
                },
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFFF5F5F5),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      'File ${index}',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              );

          },
        ),
      ),
    ));
  }
}
