import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




// import 'package:dropdown_search/dropdown_search.dart';

var vehicle;

class MyApps extends StatefulWidget {
  const MyApps({Key? key}) : super(key: key);

  @override
  State<MyApps> createState() => _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
   int selected = 0;
    Widget customRadio(String text, int index){
      return OutlinedButton(
        onPressed: (){
          setState(() {
            selected= index;
            vehicle=text;
          });
        },
        child: Text(text,
          style: TextStyle(
            color: (selected==index)? Colors.white: Colors.black,
            fontSize: 15,
          ), ),
        style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                 width: 1, ))),
        backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
        ),
      );
    }
    Widget custommRadio(String text, int index){
      return OutlinedButton(
        onPressed: (){
          setState(() {
            selected= index;

          });
        },
        child: Text(text,
          style: TextStyle(
            color: (selected==index)? Colors.white: Colors.black,
            fontSize: 15,
          ), ),
        style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                 width: 1, ))),
        backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
        ),
      );
    }


  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ) ,

                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.all(6)),
                      customRadio("Tranparent", 1),
                      Padding(padding: EdgeInsets.all(6)),
                      customRadio("Private", 2),
                    ],
                  ),

            // SizedBox(height: 7,),
            // Container(
            //   child: ListTile(
            //     title: Text("Vehicle Category",
            //         style : TextStyle(
            //           fontSize: 17,
            //         )),
            //     subtitle: Container(
            //       decoration: BoxDecoration(
            //         border: Border.all(
            //           width: 0.5,
            //         ),
            //         borderRadius: BorderRadius.circular(5),
            //       ) ,
            //       child: Column(
            //         children: [
            //           Row(
            //             children: [
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("LCV", 1),
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("SCV", 2),
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("BUS", 3),
            //             ],
            //           ),
            //           Row(
            //             children: [
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("MHCV", 4),
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("ICV", 5),
            //             ],
            //           )
            //         ],
            //       ),
            //
            //     ),
            //   ),
            // ),
            // SizedBox(height: 7,),
            // Container(
            //   child: ListTile(
            //       title: Text("Month & Year of manufacture",
            //         style : TextStyle(
            //           fontSize: 17,
            //         )),
            //     subtitle: Container(
            //       decoration: BoxDecoration(
            //         border: Border.all(
            //           width: 0.5,
            //         ),
            //         borderRadius: BorderRadius.circular(5),
            //       ) ,
            //
            //       child: Text("Calendar"),
            //     ),

            // SizedBox(height: 7,),
            // Container(
            //   child: ListTile(
            //     title: Text("Make",
            //         style : TextStyle(
            //           fontSize: 17,
            //         )),
            //     subtitle: Container(
            //       decoration: BoxDecoration(
            //         border: Border.all(
            //           width: 0.5,
            //         ),
            //         borderRadius: BorderRadius.circular(5),
            //       ) ,
            //
            //       child: ListTile(
            //         title: DropdownSearch<String>(
            //             mode: Mode.MENU,
            //             items: ["ISUZU", "AMW", "HINO MOTORS", "MAHINDRA", "PIAGGIO",
            //               "VOLVO", "MAHINDRA NAVISTER", "CARGOTECH", "HINDUSTAN MOTORS",
            //               "SCANIA", "MARUTI SUXZUKI", "MERCEDES BENZ", "EICHER", "MAN FORCE", "KAMAZ",
            //               "KIRLOSKAR PNEUMATIC CO.LTD","BAJAJ","TATA","PREET", "PREMIER"],
            //             popupItemDisabled: (String s) => s.startsWith('I'),
            //             onChanged: print,
            //             selectedItem: "ISUZU",
            //             dropdownSearchDecoration:InputDecoration(enabledBorder: InputBorder.none )),
            //       ),
            //     ),
            //   ),
            // ),
            //SizedBox(height: 7),
            // SizedBox(height: 7,),
            // Container(
            //   child: ListTile(
            //     title: Text("Model",
            //         style : TextStyle(
            //           fontSize: 17,
            //         )),
            //     subtitle: Container(
            //       decoration: BoxDecoration(
            //         border: Border.all(
            //           width: 0.5,
            //         ),
            //         borderRadius: BorderRadius.circular(5),
            //       ) ,
            //
            //       child: ListTile(
            //         title: DropdownSearch<String>(
            //                   mode: Mode.MENU,
            //                   items: ["500 FL8J", ],
            //                   popupItemDisabled: (String s) => s.startsWith('I'),
            //                   onChanged: print,
            //                   selectedItem: "500 FL8J",
            //                   dropdownSearchDecoration:InputDecoration(enabledBorder: InputBorder.none )),
            //             ,
            //     ),
            //   ),
            // ),
            //SizedBox(height: 7,),
            // SizedBox(height: 7,),
            // Container(
            //   child: ListTile(
            //     title: Text("Varient",
            //         style : TextStyle(
            //           fontSize: 17,
            //         )),
            //     subtitle: Container(
            //       decoration: BoxDecoration(
            //         border: Border.all(
            //           width: 0.5,
            //         ),
            //         borderRadius: BorderRadius.circular(5),
            //       ) ,
            //
            //       child: ListTile(
            //         title: DropdownSearch<String>(
            //                   mode: Mode.MENU,
            //                   items: ["KGD-1 2627", ],
            //                   popupItemDisabled: (String s) => s.startsWith('I'),
            //                   onChanged: print,
            //                   selectedItem: "KGD-1 2627",
            //                   dropdownSearchDecoration:InputDecoration(enabledBorder: InputBorder.none )),
            //             ,
            //     ),
            //   ),
            // ),
            //SizedBox(height: 7,),
            // Container(
            //   child: ListTile(
            //     title: Text("Body Type",
            //         style : TextStyle(
            //           fontSize: 17,
            //         )),
            //     subtitle: Container(
            //       decoration: BoxDecoration(
            //         border: Border.all(
            //           width: 0.5,
            //         ),
            //         borderRadius: BorderRadius.circular(5),
            //       ) ,
            //
            //       child: Column(
            //         children: [
            //           Row(
            //             children: [
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("Fixed Side Deck", 1),
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("1613", 2),
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("4/186", 3),
            //             ],
            //           ),
            //           Row(
            //             children: [
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("High Side Desk", 4),
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("14000000", 5),
            //             ],
            //           ),Row(
            //             children: [
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("Bus", 6),
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("Transit Mixer", 7),
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("31 BSlll", 8),
            //             ],
            //           ),Row(
            //             children: [
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("5300 bSIV", 9),
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("ALPSV 4-255", 10),
            //             ],
            //           ),Row(
            //             children: [
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("DC MHAWK BS4", 11),
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("Cabin Chassis", 12),
            //             ],
            //           ),Row(
            //             children: [
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("Concrete Pump", 13),
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("Cowl & Chassis", 14),
            //             ],
            //           ),Row(
            //             children: [
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("MS Tanker", 15),
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("Flat Bed", 16),
            //             ],
            //           ),Row(
            //             children: [
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("Flat Bed Trailer", 17),
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("MLX", 18),
            //             ],
            //           ),Row(
            //             children: [
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("Fully Build Vehicle", 19),
            //               Padding(padding: EdgeInsets.all(6)),
            //               customRadio("Passenger", 20),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
           // SizedBox(height: 7,),
            // SizedBox(height: 7,),
            // Container(
            //   child: ListTile(
            //     title: Text("Colors",
            //         style : TextStyle(
            //           fontSize: 17,
            //         )),
            //     subtitle: Container(
            //       decoration: BoxDecoration(
            //         border: Border.all(
            //           width: 0.5,
            //         ),
            //         borderRadius: BorderRadius.circular(5),
            //       ) ,
            //
            //       child: ListTile(
            //         title: DropdownSearch<String>(
            //                   mode: Mode.MENU,
            //                   items:  ["White", "Silver", "Beige", "Brown", "Grey", "Black",
            //                   "Red", "Blue", "Green", "Gold", "Yellow", "Others"],
            //                   ,
            //                   popupItemDisabled: (String s) => s.startsWith('I'),
            //                   onChanged: print,
            //                   selectedItem: "white",
            //                   dropdownSearchDecoration:InputDecoration(enabledBorder: InputBorder.none )),
            //             ,
            //     ),
            //   ),
            // ),
            //SizedBox(height: 7,),
            // SizedBox(height: 7,),
            // Container(
            //   child: ListTile(
            //     title: Text("Colors",
            //         style : TextStyle(
            //           fontSize: 17,
            //         )),
            //     subtitle: Container(
            //       decoration: BoxDecoration(
            //         border: Border.all(
            //           width: 0.5,
            //         ),
            //         borderRadius: BorderRadius.circular(5),
            //       ) ,
            //
            //       child: ListTile(
            //         title: DropdownSearch<String>(
            //                   mode: Mode.MENU,
            //                   items: ["Manual", "Automatic", "AMT", ],
            //                   popupItemDisabled: (String s) => s.startsWith('I'),
            //                   onChanged: print,
            //                   selectedItem: "Manual",
            //                   dropdownSearchDecoration:InputDecoration(enabledBorder: InputBorder.none )),
            //
            //     ),
            //   ),
            // ),
            // SizedBox(height: 7,),
            // Container(
            //   child: ListTile(
            //     title: Text("Odometer Reading ",
            //         style : TextStyle(
            //           fontSize: 17,
            //         )),
            //     subtitle: Container(
            //       decoration: BoxDecoration(
            //         border: Border.all(
            //           width: 0.5,
            //         ),
            //         borderRadius: BorderRadius.circular(5),
            //       ) ,
            //
            //       child: TextField(
            //         keyboardType: TextInputType. number,
            //         inputFormatters: <TextInputFormatter>[
            //           FilteringTextInputFormatter. digitsOnly
            //         ], // Only numbers can be entered.
            //         decoration: InputDecoration(
            //           border:InputBorder.none,
            //           hintText: "Only in Numbers",
            //         ),
            //         style: TextStyle(
            //           color: Colors.black,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(height: 7,),
            // SizedBox(height: 7,),
            // Container(
            //   child: ListTile(
            //     title: Text("Fuel Type",
            //         style : TextStyle(
            //           fontSize: 17,
            //         )),
            //     subtitle: Container(
            //       decoration: BoxDecoration(
            //         border: Border.all(
            //           width: 0.5,
            //         ),
            //         borderRadius: BorderRadius.circular(5),
            //       ) ,
            //
            //       child: ListTile(
            //         title: DropdownSearch<String>(
            //                   mode: Mode.MENU,
            //                   items:  ["Petrol", "Diesel", "LPG", "CNG",
            //             "Hybrid(P&CNG)", "Hybrid(D&CNG)", "Hybrid(P&LPG)", "Hybrid(D&LPG)", "Battery"],
            //
            //                   popupItemDisabled: (String s) => s.startsWith('I'),
            //                   onChanged: print,
            //                   selectedItem: "white",
            //                   dropdownSearchDecoration:InputDecoration(enabledBorder: InputBorder.none )),
            //             ,
            //     ),
            //   ),
            // ),
//               SizedBox(height: 7),
//               Container(
//                 child: ListTile(
//                   title: Text("Vehicle Registration Number",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: Text("Calendar"),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Nos. of Owner",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: TextField(
//                       keyboardType: TextInputType. number,
//                       inputFormatters: <TextInputFormatter>[
//                         FilteringTextInputFormatter. digitsOnly
//                       ], // Only numbers can be entered.
//                       decoration: InputDecoration(
//                         border:InputBorder.none,
//                         hintText: "Only in Numbers",
//                       ),
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text(" Owner Name",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: TextField(
//                       keyboardType: TextInputType.name,
//                       inputFormatters: <TextInputFormatter>[
//                         FilteringTextInputFormatter.singleLineFormatter,
//                       ], // Only numbers can be entered.
//                       decoration: InputDecoration(
//                         border:InputBorder.none,
//                         hintText: "Enter Name",
//                       ),
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Engine CC",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: TextField(
//                       keyboardType: TextInputType.name,
//                       inputFormatters: <TextInputFormatter>[
//                         FilteringTextInputFormatter.singleLineFormatter,
//                       ], // Only numbers can be entered.
//                       decoration: InputDecoration(
//                         border:InputBorder.none,
//                         hintText: "Enter Name",
//                       ),
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Chassis Number",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: TextField(
//                       keyboardType: TextInputType.name,
//                       inputFormatters: <TextInputFormatter>[
//                         FilteringTextInputFormatter.singleLineFormatter,
//                       ], // Only numbers can be entered.
//                       decoration: InputDecoration(
//                         border:InputBorder.none,
//                         hintText: "Enter Name",
//                       ),
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Engine Number",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: TextField(
//                       keyboardType: TextInputType. number,
//                       inputFormatters: <TextInputFormatter>[
//                         FilteringTextInputFormatter. digitsOnly
//                       ], // Only numbers can be entered.
//                       decoration: InputDecoration(
//                         border:InputBorder.none,
//                         hintText: "Enter Your Enginer Number",
//                       ),
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Accident",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: Row(
//                       children: [
//                         Padding(padding: EdgeInsets.all(6)),
//                         customRadio("Yes", 1),
//                         Padding(padding: EdgeInsets.all(6)),
//                         customRadio("No", 2),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Major Issue",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//                     child: Column(
//                       children: [
//                         Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("No Damage Vehicle", 1),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("4/186", 2),
//                          ],
//                         ),
//                         Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Chassis Misaliged During Repair Job", 3),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Major Accident", 4),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Transit Mixer", 5),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("High Value Parts Missing", 6),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Scrap Condition", 7),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Minor Accident", 8),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Engine Broken/ Not Available", 9),
//                             ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Wheele Axile Broken/ Not Available", 10),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Flooded Vehicle", 11),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Chassis Re-Punched", 12),
//
// ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Chassis Damage Rusted", 13),
//
//                           ],
//                         ),Row(
//                           children: [
//
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Parked For More Than Two Years", 14),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Inspection Location",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//                     child: Column(
//                       children: [
//                         Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Yard", 1),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Resident", 2),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("RTO", 3),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Police Station", 4),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Highway", 5),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Customer Cousin Place", 6),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Court", 7),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Customer's Office", 8),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Public Police", 9),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Dealer Office", 10),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Service Station", 11),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Local Machanic Shop", 12),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Client Office", 13),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Shopping Mall", 14),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Others", 15),
//
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Vehicle Summary",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: TextField(
//                       keyboardType: TextInputType.name,
//                       inputFormatters: <TextInputFormatter>[
//                         FilteringTextInputFormatter.singleLineFormatter,
//                       ], // Only numbers can be entered.
//                       decoration: InputDecoration(
//                         border:InputBorder.none,
//                         hintText: "Enter Your Vehicle Details",
//                       ),
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),

        //   )
        // )

    );
  }

}

var Vehicle_Category;
class MyAppps extends StatefulWidget {
  const MyAppps({Key? key}) : super(key: key);

  @override
  State<MyAppps> createState() => _MyApppsState();
}

class _MyApppsState extends State<MyAppps> {
   int select = 0;
    Widget customRadio(String text, int index){
      return OutlinedButton(
        onPressed: (){
          setState(() {
            select= index;
            Vehicle_Category=text;
          });
        },
        child: Text(text,
          style: TextStyle(
            color: (select==index)? Colors.white: Colors.black,
            fontSize: 15,
          ), ),
        style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (select == index)? Colors.white : Colors.green,
                 width: 1, ))),
        backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(select == index)? Colors.blue : Colors.grey.shade50, )
        ),
      );
    }
    Widget custommRadio(String text, int index){
      return OutlinedButton(
        onPressed: (){
          setState(() {
            select= index;

          });
        },
        child: Text(text,
          style: TextStyle(
            color: (select==index)? Colors.white: Colors.black,
            fontSize: 15,
          ), ),
        style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (select == index)? Colors.white : Colors.green,
                 width: 1, ))),
        backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(select == index)? Colors.blue : Colors.grey.shade50, )
        ),
      );
    }
    // @override
    // void initState() {
    //   if (selected != null)
    //   {
    //     print("Selected");
    //   }
    //   else
    //   {
    //     print("Not Selcted");
    //   }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // bottomNavigationBar: CupertinoButton(
        //   child: Text("Next", style: TextStyle(
        //     color: Colors.black,
        //   ),), borderRadius: BorderRadius.circular(0.0),
        //   onPressed: (){
        //     // Navigator.push(
        //     //   context,
        //     //   MaterialPageRoute(builder: (context) =>  secondPage()),
        //     // );
        //
        //   }, color: Colors.blue.shade400,
        // ),
        body: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ) ,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(6)),
                            customRadio("LCV", 1),
                            Padding(padding: EdgeInsets.all(6)),
                            customRadio("SCV", 2),
                            Padding(padding: EdgeInsets.all(6)),
                            customRadio("BUS", 3),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(6)),
                            customRadio("MHCV", 4),
                            Padding(padding: EdgeInsets.all(6)),
                            customRadio("ICV", 5),
                          ],
                        )
                      ],
                    ),

                  ),
                ),

    );
  }

}

var BodyType;

class bodyType extends StatefulWidget {
  const bodyType({Key? key}) : super(key: key);

  @override
  State<bodyType> createState() => _bodyTypeState();
}

class _bodyTypeState extends State<bodyType> {
  int selected =0;

  Widget bodyType(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          BodyType=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
           Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(5),
              ) ,

              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("Fixed Side Deck", 1),
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("1613", 2),
                                                  ],
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("4/186", 3),
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("High Side Desk", 4),
],
                  ),Row(
                    children: [
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("14000000", 5),
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("Bus", 6),
                      ],
                  ),Row(
                    children: [
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("Transit Mixer", 7),
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("31 BSlll", 8),


                    ],
                  ),Row(
                    children: [
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("5300 bSIV", 9),
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("ALPSV 4-255", 10),
                     ],
                  ),Row(
                    children: [
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("DC MHAWK BS4", 11),
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("Cabin Chassis", 12),

                    ],
                  ),Row(
                    children: [
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("Concrete Pump", 13),
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("MLX", 14),

                     ],
                  ),Row(
                    children: [
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("MS Tanker", 15),

                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("Cowl & Chassis", 16),

                     ],
                  ),Row(
                    children: [
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("Flat Bed ", 17),

                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("MLX", 18),

                                                  ],
                  ),Row(
                    children: [
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("Fully Build Vehicle", 19),
                      Padding(padding: EdgeInsets.all(6)),
                      bodyType("Passenger", 20),
                    ],
                  ),
                ],
              ),


           )]);
  }
}
var transmission1;
class transmission extends StatefulWidget {
  const transmission({Key? key}) : super(key: key);

  @override
  State<transmission> createState() => _transmissionState();
}

class _transmissionState extends State<transmission> {
 int selected = 0;
  Widget bodyType(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          transmission1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
     Container(
        decoration: BoxDecoration(
        border: Border.all(
        width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
        ) ,
            child: Column(
    children: [
      Row(
      children: [
      Padding(padding: EdgeInsets.all(6)),
      bodyType("Manual", 1),
      Padding(padding: EdgeInsets.all(6)),
      bodyType("Automatic", 2),
        Padding(padding: EdgeInsets.all(6)),
      bodyType("AMT", 3),
      ],
      ),
    ]))]);
  }
}
var fuel_type1;
class fuel_type extends StatefulWidget {
  const fuel_type({Key? key}) : super(key: key);

  @override
  State<fuel_type> createState() => _fuel_typeState();
}

class _fuel_typeState extends State<fuel_type> {
   int selected=0;
   Widget bodyType(String text, int index){
     return OutlinedButton(
       onPressed: (){
         setState(() {
           selected= index;
           fuel_type1=text;
         });
       },
       child: Text(text,
         style: TextStyle(
           color: (selected==index)? Colors.white: Colors.black,
           fontSize: 15,
         ), ),
       style:ButtonStyle(
           shape: MaterialStateProperty.all(
               RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(30.0),
                   side: BorderSide(
                     color: (selected == index)? Colors.white : Colors.green,
                     width: 1, ))),
           backgroundColor: MaterialStateColor.resolveWith(
                 (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
       ),
     );
   }

   @override
  Widget build(BuildContext context) {
    return Column(
      children:[
     Container(
         decoration: BoxDecoration(
         border: Border.all(
         width: 0.5,
         ),
         borderRadius: BorderRadius.circular(5),
     ) ,

     child: Column(
        children: [
        Row(
        children: [
         Padding(padding: EdgeInsets.all(6)),
         bodyType("Pertrol", 1),
         Padding(padding: EdgeInsets.all(6)),
         bodyType("Diesel", 2),
         Padding(padding: EdgeInsets.all(6)),
         bodyType("LPG", 3),

     ],
     ),
          Row(
        children: [
          Padding(padding: EdgeInsets.all(6)),
          bodyType("CNG", 4),
         Padding(padding: EdgeInsets.all(6)),
         bodyType("Battery", 5),
             ],
     ), Row(
        children: [
         Padding(padding: EdgeInsets.all(6)),
         bodyType("Hybrid (P&CNG)", 6),
         Padding(padding: EdgeInsets.all(6)),
         bodyType("Hybrid (D&CNG)", 7),
             ],
     ),
Row(
        children: [
         Padding(padding: EdgeInsets.all(6)),
         bodyType("Hybrid (P&PNG)", 8),
         Padding(padding: EdgeInsets.all(6)),
         bodyType("Hybrid (D&PNG", 9),
             ],
     ),

     ]
    ),
     )]);
  }
}
var accident1;
class accident extends StatefulWidget {
  const accident({Key? key}) : super(key: key);

  @override
  State<accident> createState() => _accidentState();
}

class _accidentState extends State<accident> {
  int selected=0;
  Widget accident(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          accident1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,

      child: Row(
        children: [
          Padding(padding: EdgeInsets.all(6)),
          accident("Yes", 1),
          Padding(padding: EdgeInsets.all(6)),
          accident("No", 2),
        ],
      ),

      // SizedBox(height: 7,),
      // Container(
      //   child: ListTile(
      //     title: Text("Vehicle Category",
      //         style : TextStyle(
      //           fontSize: 17,
      //         )),
      //     subtitle: Container(
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           width: 0.5,
      //         ),
      //         borderRadius: BorderRadius.circular(5),
      //       ) ,
      //       child: Column(
      //         children: [
      //           Row(
      //             children: [
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("LCV", 1),
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("SCV", 2),
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("BUS", 3),
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("MHCV", 4),
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("ICV", 5),
      //             ],
      //           )
      //         ],
      //       ),
      //
      //     ),
      //   ),
      // ),
      // SizedBox(height: 7,),
      // Container(
      //   child: ListTile(
      //       title: Text("Month & Year of manufacture",
      //         style : TextStyle(
      //           fontSize: 17,
      //         )),
      //     subtitle: Container(
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           width: 0.5,
      //         ),
      //         borderRadius: BorderRadius.circular(5),
      //       ) ,
      //
      //       child: Text("Calendar"),
      //     ),

      // SizedBox(height: 7,),
      // Container(
      //   child: ListTile(
      //     title: Text("Make",
      //         style : TextStyle(
      //           fontSize: 17,
      //         )),
      //     subtitle: Container(
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           width: 0.5,
      //         ),
      //         borderRadius: BorderRadius.circular(5),
      //       ) ,
      //
      //       child: ListTile(
      //         title: DropdownSearch<String>(
      //             mode: Mode.MENU,
      //             items: ["ISUZU", "AMW", "HINO MOTORS", "MAHINDRA", "PIAGGIO",
      //               "VOLVO", "MAHINDRA NAVISTER", "CARGOTECH", "HINDUSTAN MOTORS",
      //               "SCANIA", "MARUTI SUXZUKI", "MERCEDES BENZ", "EICHER", "MAN FORCE", "KAMAZ",
      //               "KIRLOSKAR PNEUMATIC CO.LTD","BAJAJ","TATA","PREET", "PREMIER"],
      //             popupItemDisabled: (String s) => s.startsWith('I'),
      //             onChanged: print,
      //             selectedItem: "ISUZU",
      //             dropdownSearchDecoration:InputDecoration(enabledBorder: InputBorder.none )),
      //       ),
      //     ),
      //   ),
      // ),
      //SizedBox(height: 7),
      // SizedBox(height: 7,),
      // Container(
      //   child: ListTile(
      //     title: Text("Model",
      //         style : TextStyle(
      //           fontSize: 17,
      //         )),
      //     subtitle: Container(
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           width: 0.5,
      //         ),
      //         borderRadius: BorderRadius.circular(5),
      //       ) ,
      //
      //       child: ListTile(
      //         title: DropdownSearch<String>(
      //                   mode: Mode.MENU,
      //                   items: ["500 FL8J", ],
      //                   popupItemDisabled: (String s) => s.startsWith('I'),
      //                   onChanged: print,
      //                   selectedItem: "500 FL8J",
      //                   dropdownSearchDecoration:InputDecoration(enabledBorder: InputBorder.none )),
      //             ,
      //     ),
      //   ),
      // ),
      //SizedBox(height: 7,),
      // SizedBox(height: 7,),
      // Container(
      //   child: ListTile(
      //     title: Text("Varient",
      //         style : TextStyle(
      //           fontSize: 17,
      //         )),
      //     subtitle: Container(
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           width: 0.5,
      //         ),
      //         borderRadius: BorderRadius.circular(5),
      //       ) ,
      //
      //       child: ListTile(
      //         title: DropdownSearch<String>(
      //                   mode: Mode.MENU,
      //                   items: ["KGD-1 2627", ],
      //                   popupItemDisabled: (String s) => s.startsWith('I'),
      //                   onChanged: print,
      //                   selectedItem: "KGD-1 2627",
      //                   dropdownSearchDecoration:InputDecoration(enabledBorder: InputBorder.none )),
      //             ,
      //     ),
      //   ),
      // ),
      //SizedBox(height: 7,),
      // Container(
      //   child: ListTile(
      //     title: Text("Body Type",
      //         style : TextStyle(
      //           fontSize: 17,
      //         )),
      //     subtitle: Container(
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           width: 0.5,
      //         ),
      //         borderRadius: BorderRadius.circular(5),
      //       ) ,
      //
      //       child: Column(
      //         children: [
      //           Row(
      //             children: [
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("Fixed Side Deck", 1),
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("1613", 2),
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("4/186", 3),
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("High Side Desk", 4),
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("14000000", 5),
      //             ],
      //           ),Row(
      //             children: [
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("Bus", 6),
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("Transit Mixer", 7),
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("31 BSlll", 8),
      //             ],
      //           ),Row(
      //             children: [
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("5300 bSIV", 9),
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("ALPSV 4-255", 10),
      //             ],
      //           ),Row(
      //             children: [
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("DC MHAWK BS4", 11),
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("Cabin Chassis", 12),
      //             ],
      //           ),Row(
      //             children: [
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("Concrete Pump", 13),
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("Cowl & Chassis", 14),
      //             ],
      //           ),Row(
      //             children: [
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("MS Tanker", 15),
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("Flat Bed", 16),
      //             ],
      //           ),Row(
      //             children: [
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("Flat Bed Trailer", 17),
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("MLX", 18),
      //             ],
      //           ),Row(
      //             children: [
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("Fully Build Vehicle", 19),
      //               Padding(padding: EdgeInsets.all(6)),
      //               customRadio("Passenger", 20),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      // SizedBox(height: 7,),
      // SizedBox(height: 7,),
      // Container(
      //   child: ListTile(
      //     title: Text("Colors",
      //         style : TextStyle(
      //           fontSize: 17,
      //         )),
      //     subtitle: Container(
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           width: 0.5,
      //         ),
      //         borderRadius: BorderRadius.circular(5),
      //       ) ,
      //
      //       child: ListTile(
      //         title: DropdownSearch<String>(
      //                   mode: Mode.MENU,
      //                   items:  ["White", "Silver", "Beige", "Brown", "Grey", "Black",
      //                   "Red", "Blue", "Green", "Gold", "Yellow", "Others"],
      //                   ,
      //                   popupItemDisabled: (String s) => s.startsWith('I'),
      //                   onChanged: print,
      //                   selectedItem: "white",
      //                   dropdownSearchDecoration:InputDecoration(enabledBorder: InputBorder.none )),
      //             ,
      //     ),
      //   ),
      // ),
      //SizedBox(height: 7,),
      // SizedBox(height: 7,),
      // Container(
      //   child: ListTile(
      //     title: Text("Colors",
      //         style : TextStyle(
      //           fontSize: 17,
      //         )),
      //     subtitle: Container(
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           width: 0.5,
      //         ),
      //         borderRadius: BorderRadius.circular(5),
      //       ) ,
      //
      //       child: ListTile(
      //         title: DropdownSearch<String>(
      //                   mode: Mode.MENU,
      //                   items: ["Manual", "Automatic", "AMT", ],
      //                   popupItemDisabled: (String s) => s.startsWith('I'),
      //                   onChanged: print,
      //                   selectedItem: "Manual",
      //                   dropdownSearchDecoration:InputDecoration(enabledBorder: InputBorder.none )),
      //
      //     ),
      //   ),
      // ),
      // SizedBox(height: 7,),
      // Container(
      //   child: ListTile(
      //     title: Text("Odometer Reading ",
      //         style : TextStyle(
      //           fontSize: 17,
      //         )),
      //     subtitle: Container(
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           width: 0.5,
      //         ),
      //         borderRadius: BorderRadius.circular(5),
      //       ) ,
      //
      //       child: TextField(
      //         keyboardType: TextInputType. number,
      //         inputFormatters: <TextInputFormatter>[
      //           FilteringTextInputFormatter. digitsOnly
      //         ], // Only numbers can be entered.
      //         decoration: InputDecoration(
      //           border:InputBorder.none,
      //           hintText: "Only in Numbers",
      //         ),
      //         style: TextStyle(
      //           color: Colors.black,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      // SizedBox(height: 7,),
      // SizedBox(height: 7,),
      // Container(
      //   child: ListTile(
      //     title: Text("Fuel Type",
      //         style : TextStyle(
      //           fontSize: 17,
      //         )),
      //     subtitle: Container(
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           width: 0.5,
      //         ),
      //         borderRadius: BorderRadius.circular(5),
      //       ) ,
      //
      //       child: ListTile(
      //         title: DropdownSearch<String>(
      //                   mode: Mode.MENU,
      //                   items:  ["Petrol", "Diesel", "LPG", "CNG",
      //             "Hybrid(P&CNG)", "Hybrid(D&CNG)", "Hybrid(P&LPG)", "Hybrid(D&LPG)", "Battery"],
      //
      //                   popupItemDisabled: (String s) => s.startsWith('I'),
      //                   onChanged: print,
      //                   selectedItem: "white",
      //                   dropdownSearchDecoration:InputDecoration(enabledBorder: InputBorder.none )),
      //             ,
      //     ),
      //   ),
      // ),
//               SizedBox(height: 7),
//               Container(
//                 child: ListTile(
//                   title: Text("Vehicle Registration Number",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: Text("Calendar"),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Nos. of Owner",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: TextField(
//                       keyboardType: TextInputType. number,
//                       inputFormatters: <TextInputFormatter>[
//                         FilteringTextInputFormatter. digitsOnly
//                       ], // Only numbers can be entered.
//                       decoration: InputDecoration(
//                         border:InputBorder.none,
//                         hintText: "Only in Numbers",
//                       ),
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text(" Owner Name",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: TextField(
//                       keyboardType: TextInputType.name,
//                       inputFormatters: <TextInputFormatter>[
//                         FilteringTextInputFormatter.singleLineFormatter,
//                       ], // Only numbers can be entered.
//                       decoration: InputDecoration(
//                         border:InputBorder.none,
//                         hintText: "Enter Name",
//                       ),
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Engine CC",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: TextField(
//                       keyboardType: TextInputType.name,
//                       inputFormatters: <TextInputFormatter>[
//                         FilteringTextInputFormatter.singleLineFormatter,
//                       ], // Only numbers can be entered.
//                       decoration: InputDecoration(
//                         border:InputBorder.none,
//                         hintText: "Enter Name",
//                       ),
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Chassis Number",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: TextField(
//                       keyboardType: TextInputType.name,
//                       inputFormatters: <TextInputFormatter>[
//                         FilteringTextInputFormatter.singleLineFormatter,
//                       ], // Only numbers can be entered.
//                       decoration: InputDecoration(
//                         border:InputBorder.none,
//                         hintText: "Enter Name",
//                       ),
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Engine Number",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: TextField(
//                       keyboardType: TextInputType. number,
//                       inputFormatters: <TextInputFormatter>[
//                         FilteringTextInputFormatter. digitsOnly
//                       ], // Only numbers can be entered.
//                       decoration: InputDecoration(
//                         border:InputBorder.none,
//                         hintText: "Enter Your Enginer Number",
//                       ),
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Accident",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: Row(
//                       children: [
//                         Padding(padding: EdgeInsets.all(6)),
//                         customRadio("Yes", 1),
//                         Padding(padding: EdgeInsets.all(6)),
//                         customRadio("No", 2),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Major Issue",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//                     child: Column(
//                       children: [
//                         Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("No Damage Vehicle", 1),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("4/186", 2),
//                          ],
//                         ),
//                         Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Chassis Misaliged During Repair Job", 3),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Major Accident", 4),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Transit Mixer", 5),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("High Value Parts Missing", 6),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Scrap Condition", 7),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Minor Accident", 8),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Engine Broken/ Not Available", 9),
//                             ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Wheele Axile Broken/ Not Available", 10),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Flooded Vehicle", 11),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Chassis Re-Punched", 12),
//
// ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Chassis Damage Rusted", 13),
//
//                           ],
//                         ),Row(
//                           children: [
//
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Parked For More Than Two Years", 14),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Inspection Location",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//                     child: Column(
//                       children: [
//                         Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Yard", 1),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Resident", 2),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("RTO", 3),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Police Station", 4),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Highway", 5),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Customer Cousin Place", 6),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Court", 7),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Customer's Office", 8),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Public Police", 9),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Dealer Office", 10),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Service Station", 11),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Local Machanic Shop", 12),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Client Office", 13),
//
//                           ],
//                         ),Row(
//                           children: [
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Shopping Mall", 14),
//                             Padding(padding: EdgeInsets.all(6)),
//                             customRadio("Others", 15),
//
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 7,),
//               Container(
//                 child: ListTile(
//                   title: Text("Vehicle Summary",
//                       style : TextStyle(
//                         fontSize: 17,
//                       )),
//                   subtitle: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 0.5,
//                       ),
//                       borderRadius: BorderRadius.circular(5),
//                     ) ,
//
//                     child: TextField(
//                       keyboardType: TextInputType.name,
//                       inputFormatters: <TextInputFormatter>[
//                         FilteringTextInputFormatter.singleLineFormatter,
//                       ], // Only numbers can be entered.
//                       decoration: InputDecoration(
//                         border:InputBorder.none,
//                         hintText: "Enter Your Vehicle Details",
//                       ),
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),

      //   )
      // )

    );
  }
}
var majorIssue1;
class majorIssue extends StatefulWidget {
  const majorIssue({Key? key}) : super(key: key);

  @override
  State<majorIssue> createState() => _majorIssueState();
}

class _majorIssueState extends State<majorIssue> {
  int selected=0;
  Widget majorIssue(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          majorIssue1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(5),
      ) ,

      child: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              majorIssue("No Damage Vehicle", 1),
            ],
          ),
         Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              majorIssue("Chassis Misaligned During Repair Job", 2),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              majorIssue("Major Acccident", 3),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              majorIssue("High Value Parts Missing", 4),
            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              majorIssue("Engine Broken / Not Available", 5),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              majorIssue("Wheele Axile Broken/ Not Available", 6),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              majorIssue("Flooded Vehicle", 7),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              majorIssue("Chassis Re-Punched", 8),

            ],
          ),Row(
            children: [
              Padding(padding: EdgeInsets.all(6)),
              majorIssue("Chassis Damage Rusted", 9),

            ],
          ),Row(
            children: [

              Padding(padding: EdgeInsets.all(6)),
              majorIssue("Parked For More Than Two Years", 10),
            ],
          ),
        ],
      ),



    );
  }
}
var vehicleInspection1;
class vehicleInspection extends StatefulWidget {
  const vehicleInspection({Key? key}) : super(key: key);

  @override
  State<vehicleInspection> createState() => _vehicleInspectionState();
}

class _vehicleInspectionState extends State<vehicleInspection> {
  int selected=0;
  Widget inspection(String text, int index){
    return OutlinedButton(
      onPressed: (){
        setState(() {
          selected= index;
          vehicleInspection1=text;
        });
      },
      child: Text(text,
        style: TextStyle(
          color: (selected==index)? Colors.white: Colors.black,
          fontSize: 15,
        ), ),
      style:ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(
                    color: (selected == index)? Colors.white : Colors.green,
                    width: 1, ))),
          backgroundColor: MaterialStateColor.resolveWith(
                (states) =>(selected == index)? Colors.blue : Colors.grey.shade50, )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(5),
        ) ,

        child: Column(
            children: [
        Row(
        children: [
        Padding(padding: EdgeInsets.all(6)),
        inspection("Yard", 1),
          Padding(padding: EdgeInsets.all(6)),
        inspection("Resident", 2),
          Padding(padding: EdgeInsets.all(6)),
        inspection("RTO", 3),
    ],
    ),Row(
        children: [
        Padding(padding: EdgeInsets.all(6)),
        inspection("Police Station", 4),
          Padding(padding: EdgeInsets.all(6)),
        inspection("Highway", 5),

    ],
    ),Row(
        children: [
        Padding(padding: EdgeInsets.all(6)),
        inspection("Customer Cousin Place", 6),
          Padding(padding: EdgeInsets.all(6)),
        inspection("Court", 7),

    ],
    ),Row(
        children: [
        Padding(padding: EdgeInsets.all(6)),
        inspection("Customer's Office", 8),
          Padding(padding: EdgeInsets.all(6)),
        inspection("Public Police", 9),

    ],
    ),Row(
        children: [
        Padding(padding: EdgeInsets.all(6)),
        inspection("Dealer Office", 10),
          Padding(padding: EdgeInsets.all(6)),
        inspection("Service Station", 11),

    ],
    ),Row(
        children: [
        Padding(padding: EdgeInsets.all(6)),
        inspection("Local Machanic Shop", 12),
          Padding(padding: EdgeInsets.all(6)),
        inspection("Client Office", 13),

    ],
    ),Row(
        children: [
        Padding(padding: EdgeInsets.all(6)),
        inspection("Shopping Mall", 14),
          Padding(padding: EdgeInsets.all(6)),
        inspection("Others", 15),

    ],
    ),]));
  }
}

