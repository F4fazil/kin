import 'package:flutter/material.dart';
import 'package:kin/Screens/setup_circle.dart';

import '../constant.dart';
import '../main.dart';
import '../widgets/ExploreTextField.dart';
import '../widgets/Mybutton.dart';
import '../widgets/appbarbutton.dart';
import '../widgets/textfield.dart';
class SetupCircle extends StatefulWidget {
  const SetupCircle({super.key});

  @override
  State<SetupCircle> createState() => _SetupCircleState();
}

class _SetupCircleState extends State<SetupCircle> {
  TextEditingController name=TextEditingController();
  TextEditingController type=TextEditingController();
  TextEditingController role=TextEditingController();
  final List<String> _role = ['Father ', 'Mother ','Daughter', 'Son '];
  final List<String> _type = ['Married / Dating Couple ', 'Couple with children ','Siblings/friends', 'Extended family '];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 22, bottom: 12),
              child: Appbutton(ontap: () {Navigator.pop(context);  },),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 22,
                ),
                DividerContainer(active: true,),
                DividerContainer(active: false,),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 28, top: 12),
              child: Text(
                "Setup new trybe ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 28.0, top: 10, bottom: 15),
              child: Text("Fill the detail below to get started"),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 10, ),
              child: Text("Trybe name"),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 10,right: 8),
               child: Mytextfield(controller: name, hinttext: 'Name', Obsecuretext: false,),
             ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0,top: 10 ),
              child: Text("Your Trybe Type"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8),
              child:ExploreTextField(controller: type, suggestions: _type,  hinttext: "Married/Couple", svgIconPath: 'assets/1.svg',),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, top: 10,),
              child: Text("Your Role in the Trybe "),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8),
              child: ExploreTextField(controller: role, suggestions:_role,  hinttext: 'Father', svgIconPath: 'assets/2.svg',),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0,right: 10,top: 20),
              child: Mybutton(ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const InviteMembers()));
              }, buttonname: 'Proceed',),
            ),
          ],
        ),
      ),
    );
  }
}
