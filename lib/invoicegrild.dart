import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          title: Text(
            'File/Invoice',
            style: FlutterFlowTheme.of(context).subtitle2,
          ),
          surfaceTintColor: Colors.black,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          elevation: 0,
        ),
        body: SafeArea(
      child: Expanded(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
          child: GridView.builder(
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
      ),
    ));
  }
}
