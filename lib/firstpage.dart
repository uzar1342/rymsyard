import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loader_overlay/loader_overlay.dart';

import 'Calendar.dart';
import 'Radio.dart';
import 'demo.dart';
import 'flutter_flow/flutter_flow_icon_button.dart';
import 'flutter_flow/flutter_flow_theme.dart';


var location,make,model,variant,colors,transc,trans;
TextEditingController Odometer=new TextEditingController();
TextEditingController vrn=new TextEditingController();
TextEditingController Noofowners=new TextEditingController();
TextEditingController Owners=new TextEditingController();
TextEditingController Enginecc=new TextEditingController();
TextEditingController Chassis=new TextEditingController();
TextEditingController Enginenumber=new TextEditingController();
TextEditingController vehicles=new TextEditingController();

class firstPage extends StatelessWidget {
   firstPage({Key? key,required this.fun}) : super(key: key);
  Function fun;
  @override
  Widget build(BuildContext context) {
    return firstPage1(fun: fun,);
  }
}


class firstPage1 extends StatefulWidget {
   firstPage1({Key? key, required this.fun}) : super(key: key);
Function fun;
  @override
  State<firstPage1> createState() => _firstPage1State();
}
final scaffoldKey = GlobalKey<ScaffoldState>();
class _firstPage1State extends State<firstPage1> {
@override
  void dispose() {




    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      child: Scaffold(
        key: scaffoldKey,
        body: SingleChildScrollView(
            child:Column(
                children: [
                  SizedBox(height: 10,),
                  // Vehicle
                  const SizedBox(
                    height: 90,
                    child: ListTile(
                      title: Text("Vehicle",
                          style: TextStyle(
                            fontSize: 17,
                          )),
                      subtitle: MyApps() ,
                    ),
                  ),
                  const SizedBox(height: 2,),
                  //Vehicle Category
                  const SizedBox(
                    height: 100,
                    child: ListTile(
                      title: Text("Vehicle Category",
                          style: TextStyle(
                            fontSize: 17,
                          )),
                      subtitle: MyAppps() ,
                    ),
                  ),
                  const SizedBox(height: 30,),

                  const SizedBox(height: 3,),
                  SizedBox(
                    height: 50,
                    child: ListTile(
                      title: const Text("Month & Year of manufacture",
                          style: TextStyle(
                            fontSize: 17,
                          )),
                      subtitle:Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ) ,
                          child:incalander()),
                    ),
                  ),
                  SizedBox(height: 35,),

                  //Body TYpe
                  Container(
                    height: 500,
                    child: ListTile(
                      title: Text("Body Type",
                          style: TextStyle(
                            fontSize: 17,
                          )),
                      subtitle: bodyType() ,
                    ),
                  ),
                  SizedBox(height: 10,),
                  //Location
                  SizedBox(height: 5,),
                  Container(
                      child: ListTile(
                          title: Text("Location",
                              style : TextStyle(
                                fontSize: 17,
                              )),
                          subtitle:DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: true,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: const ["Firozabad", "Hingolli", "Jalogaon", "Kiphire", "Adilabad",
                              "Champai", "Mahabub Nagar", "Podili", "Chamraj Nagar ",
                              "Budaun", " Miryalguda", "Thiruvanathapuram", "Mandla", "Belgaum", "Ambala",
                              "Buxar","Mandamarri","Achampet","Vijaywada", "Fatehbad", "West Nimar"],
                            dropdownDecoratorProps: const DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                hintText: "Select Location",
                              ),
                            ),
                            onChanged: (v){
                              location=v!;
                            },
                          )
                      )
                  ),
                  //Manufacture & date
                  SizedBox(height: 10,),
                  //Make
                  SizedBox(height: 10,),
                  Container(
                      child: ListTile(
                          title: Text("Make",
                              style : TextStyle(
                                fontSize: 17,
                              )),
                          subtitle:DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: true,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: ["ISUZU", "AMW", "HINO MOTORS", "MAHINDRA", "PIAGGIO",
                              "VOLVO", "MAHINDRA NAVISTER", "CARGOTECH", "HINDUSTAN MOTORS",
                              "SCANIA", "MARUTI SUXZUKI", "MERCEDES BENZ", "EICHER", "MAN FORCE", "KAMAZ",
                              "KIRLOSKAR PNEUMATIC CO.LTD","BAJAJ","TATA","PREET", "PREMIER"],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                hintText: "Make",
                              ),
                            ),
                            onChanged: (v){
                              make=v!;
                            },
                          )
                      )
                  ),
                  //Model
                  SizedBox(height: 10,),
                  Container(
                      child: ListTile(
                          title: Text("Model",
                              style : TextStyle(
                                fontSize: 17,
                              )),
                          subtitle:DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: true,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: ["500 FL8J"],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                hintText: "Model",
                              ),
                            ),
                            onChanged: (v){
                              model=v!;
                            },
                          )
                      )
                  ),
                  //Variant
                  SizedBox(height: 10,),
                  Container(
                      child: ListTile(
                          title: Text("Variant",
                              style : TextStyle(
                                fontSize: 17,
                              )),
                          subtitle:DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: true,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: ["KGD-1 2627"],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                hintText: "Model",
                              ),
                            ),
                            onChanged: (v){
                              variant=v!;
                            },
                          )
                      )
                  ),
                  //Colors
                  SizedBox(height: 10,),
                  Container(
                      child: ListTile(
                          title: Text("Colors",
                              style : TextStyle(
                                fontSize: 17,
                              )),
                          subtitle:DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: true,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: ["White", "Silver", "Beige", "Brown", "Grey", "Black",
                              "Red", "Blue", "Green", "Gold", "Yellow", "Others"],
                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                hintText: " choose Your Colors",
                              ),
                            ),
                            onChanged: (v){
                              colors=v!;
                            },
                          )
                      )
                  ),
                  //Transmission
                  SizedBox(height: 10,),
                  Container(
                      child: ListTile(
                          title: Text("Transmission",
                              style : TextStyle(
                                fontSize: 17,
                              )),
                          subtitle:DropdownSearch<String>(
                            popupProps: PopupProps.menu(
                              showSelectedItems: true,
                              disabledItemFn: (String s) => s.startsWith('I'),
                            ),
                            items: ["Manual", "Automatic", "AMT", ],

                            dropdownDecoratorProps: DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                hintText: " choose Your Colors",
                              ),
                            ),
                            onChanged: (v){
                              transc=v!;
                            },
                          )
                      )
                  ),
                  //Odometer Reading
                  SizedBox(height: 10,),
                  Container(
                    child: ListTile(
                      title: const Text("Odometer Reading ",
                          style : TextStyle(
                            fontSize: 17,
                          )),
                      subtitle: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ) ,

                        child: TextField(
                          controller: Odometer,
                          keyboardType: TextInputType. number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter. digitsOnly
                          ], // Only numbers can be entered.
                          decoration: InputDecoration(
                            border:InputBorder.none,
                            hintText: " Only in Numbers",
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(padding: EdgeInsets.all(4)),
                  Container(
                    height: 90,
                    child: ListTile(
                      title: Text("Transmission",
                          style: TextStyle(
                            fontSize: 17,
                          )),
                      subtitle: transmission() ,
                    ),
                  ),
                  //Fuel Type
                  SizedBox(height: 10,),
                  Container(
                      height: 235,
                      child:ListTile(
                        title: Text("Fuel Type",
                            style: TextStyle(
                              fontSize: 17,
                            )),
                        subtitle:fuel_type(),
                      )
                  ),
                  //Vehicle Registration Number
                  SizedBox(height: 10,),
                  Container(
                    child: ListTile(
                      title: Text("Vehicle Registration Number",
                          style : TextStyle(
                            fontSize: 17,
                          )),
                      subtitle: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ) ,

                        child: TextField(
                          controller: vrn,
                          keyboardType: TextInputType. number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter. digitsOnly
                          ], // Only numbers can be entered.
                          decoration: InputDecoration(
                            border:InputBorder.none,
                            hintText: " Only in Numbers",
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Number Of Owner
                  SizedBox(height: 10,),
                  Container(
                    child: ListTile(
                      title: Text("No of Owners",
                          style : TextStyle(
                            fontSize: 17,
                          )),
                      subtitle: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ) ,

                        child: TextField(
                          controller: Noofowners,
                          keyboardType: TextInputType. number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter. digitsOnly
                          ], // Only numbers can be entered.
                          decoration: InputDecoration(
                            border:InputBorder.none,
                            hintText: " Only in Numbers",
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //name owner
                  SizedBox(height: 10,),
                  Container(
                    child: ListTile(
                      title: Text("Owners Name",
                          style : TextStyle(
                            fontSize: 17,
                          )),
                      subtitle: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ) ,

                        child: TextField(
                          controller: Owners,
                          keyboardType: TextInputType. name,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter. singleLineFormatter
                          ], // Only numbers can be entered.
                          decoration: InputDecoration(
                            border:InputBorder.none,
                            hintText: " Name",
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Engine CC
                  SizedBox(height: 10,),
                  Container(
                    child: ListTile(
                      title: Text("Engine CC",
                          style : TextStyle(
                            fontSize: 17,
                          )),
                      subtitle: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ) ,

                        child: TextField(
                          controller: Enginecc,
                          keyboardType: TextInputType. number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter. digitsOnly
                          ], // Only numbers can be entered.
                          decoration: InputDecoration(
                            border:InputBorder.none,
                            hintText: " Only in Numbers",
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Chassis Number
                  SizedBox(height: 10,),
                  Container(
                    child: ListTile(
                      title: Text("Chassis Number",
                          style : TextStyle(
                            fontSize: 17,
                          )),
                      subtitle: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ) ,

                        child: TextField(
                          controller: Chassis,
                          keyboardType: TextInputType. name,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter. singleLineFormatter
                          ], // Only numbers can be entered.
                          decoration: InputDecoration(
                            border:InputBorder.none,
                            hintText: " Name",
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Engine NUmber
                  SizedBox(height: 10,),
                  Container(
                    child: ListTile(
                      title: Text("Engine Number",
                          style : TextStyle(
                            fontSize: 17,
                          )),
                      subtitle: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ) ,

                        child: TextField(
                          controller: Enginenumber,
                          keyboardType: TextInputType. name,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter. singleLineFormatter
                          ], // Only numbers can be entered.
                          decoration: InputDecoration(
                            border:InputBorder.none,
                            hintText: " Name",
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //Accident
                  SizedBox(height: 10,),
                  Container(
                    height: 90,
                    child: const ListTile(
                      title: Text("Accident",
                          style: TextStyle(
                            fontSize: 17,
                          )),
                      subtitle: accident() ,
                    ),
                  ),
                  //Major Issue
                  SizedBox(height: 10,),
                  Container(
                    height: 490,
                    child: const ListTile(
                      title: Text("Major Issue",
                          style: TextStyle(
                            fontSize: 17,
                          )),
                      subtitle: majorIssue() ,
                    ),
                  ),
                  const SizedBox(height: 40,),
                  const SizedBox(
                    height: 345,
                    child: ListTile(
                      title: Text("Vehicle Inspection",
                          style: TextStyle(
                            fontSize: 17,
                          )),
                      subtitle: vehicleInspection() ,
                    ),
                  ),
                  const SizedBox(height: 40,),
                  ListTile(
                    title: const Text("Vehicle Summary",
                        style : TextStyle(
                          fontSize: 17,
                        )),
                    subtitle: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ) ,

                      child:  TextField(
                        controller: vehicles,
                        keyboardType: TextInputType. name,
                        decoration: InputDecoration(
                          border:InputBorder.none,
                          hintText: " Discription",
                        ),
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: CupertinoButton(
                      color: Colors.blue,
                      onPressed: () {
                        print(incalander1.value.text);
                        if(vehicle!=null&&Vehicle_Category!=null&&incalander1.value.text.trim()!=""
                        &&BodyType!=null&&location!=null&&make!=null&&model!=null&&variant!=null&&
                        colors!=null&&transc!=null&&Odometer.value.text.trim()!=""&&transmission1!=null
                        &&fuel_type1!=null&&vrn.value.text.trim()!=""&&
                            vehicles.value.text.trim()!=""&&
                        Noofowners.value.text.trim()!=""&&Owners.value.text.trim()!=""&&
                        Enginenumber.value.text.trim()!=""&&Enginecc.value.text.trim()!=""
                        &&Chassis.value.text.trim()!=""&&accident1!=null&&
                        majorIssue1!=null&&vehicleInspection1!=null
                        )
                        {

                          f1="asd";
                          DefaultTabController.of(context)?.animateTo(2,duration: const Duration(seconds: 2));
                          next();
                          widget.fun();
                        }
                        else
                          {
                            Fluttertoast.showToast(msg: "Fill Form");
                          }


                      },
                      child:const Text("Next", style: TextStyle(
                        fontSize: 20, color: Colors.white,
                      )),
                    ),
                  )
                ] ),
          ),
      ),
    );

  }
}

void next() {
  incalander1.text="";
  vrn.text="";
  Odometer.text="";
  vehicles.text="";
  Noofowners.text="";
  Owners.text="";
  Enginenumber.text="";
  Enginecc.text="";
  Chassis.text="";

}
