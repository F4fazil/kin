import 'package:flutter/material.dart';
import 'package:kin/Screens/home.dart';
import 'package:kin/constant.dart';
import 'package:kin/widgets/textfield.dart';
import '../main.dart';
import '../widgets/ExploreTextField.dart';
import '../widgets/Mybutton.dart';
import '../widgets/appbarbutton.dart';

class InviteMembers extends StatefulWidget {
  const InviteMembers({super.key});

  @override
  State<InviteMembers> createState() => _SetupInviteMembers();
}

class _SetupInviteMembers extends State<InviteMembers> {
  bool isChecked = false;
  TextEditingController role = TextEditingController();
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  final List<String> _role = ['Father', 'Mother', 'Daughter', 'Son'];

  void showsheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) {
        return AnimatedPadding(
          duration: const Duration(seconds: 1),
          curve: Curves.linear,
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: StatefulBuilder(
            builder: (context, setState) {
              return Container(
                padding: const EdgeInsets.all(0.0),
                decoration: const BoxDecoration(
                  color: Color(0XFFFFFFF),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Text('Add new members'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Done',
                                    style: TextStyle(
                                      color: Color(0XFF009982),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 18.0),
                              child: Text(
                                "Member role in the trybe",
                                style: TextStyle(
                                  color: Color(0XFF717782),
                                ),
                              ),
                            ),
                            ExploreTextField(
                              controller: role,
                              suggestions:_role,
                              hinttext: 'Son', svgIconPath: 'assets/1.svg',
                            ),
                            const SizedBox(height: 5),
                            const Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 18.0),
                                    child: Text(
                                      "First name",
                                      style: TextStyle(
                                        color: Color(0XFF717782),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 18.0),
                                    child: Text(
                                      "Last name",
                                      style: TextStyle(
                                        color: Color(0XFF717782),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Mytextfield(
                                    controller: fname,
                                    hinttext: 'James',
                                    Obsecuretext: false,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Mytextfield(
                                    controller: lname,
                                    hinttext: 'Alexander',
                                    Obsecuretext: false,
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 18.0, top: 0),
                              child: Text("Email"),
                            ),
                            Mytextfield(
                              controller: email,
                              hinttext: "james123@gmail.com",
                              Obsecuretext: false,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                                const Expanded(
                                  child: Text(
                                    'Check this if member is a signatory. They will be sent an invite link to join the Trybe.',
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70.0, left: 12, bottom: 20),
                  child: Appbutton(
                    ontap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const Row(
                  children: [
                    SizedBox(width: 10),
                    Flexible(
                      child: DividerContainer(
                        active: false,
                      ),
                    ),
                    Flexible(
                      child: DividerContainer(
                        active: true,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 12),
                  child: Text(
                    "Invite your trybe members",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 10, bottom: 15),
                  child: Text("Fill trybe member's detail below"),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.pink.shade200,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Icon(Icons.person),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Flexible(
                      child: SizedBox(
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "james(You)",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text("Father. james123@gmail.com"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0, top: 10),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {
                            showsheet();
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 12),
                      child: GestureDetector(
                        onTap: () {
                          showsheet();
                        },
                        child: const Text(
                          "Add new members",
                          style: TextStyle(
                              color: Color(0XFF20A591), fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0, right: 10, bottom: 10),
                  child: Mybutton(
                    ontap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));
                    },
                    buttonname: 'Proceed',
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Invite them later",
                      style: TextStyle(color: color),
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
}
