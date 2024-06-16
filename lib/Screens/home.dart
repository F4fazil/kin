import 'package:flutter/material.dart';
import 'package:kin/constant.dart';

import '../widgets/ExploreTextField.dart';
import '../widgets/textfield.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isChecked = false;
  TextEditingController role = TextEditingController();
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  final List<String> _role = ['Father', 'Mother', 'Daughter', 'Son'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.menu_sharp),color: color2,),
             const SizedBox(width: 55,),
              const Text("Akanbi's Trybe",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
            ],

            ),

            Container(
              margin: const EdgeInsets.all(12),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: color3,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 180, top: 15),
                        child: Container(
                          padding: const EdgeInsets.only(left: 25, top: 8),
                          height: 35,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: const Text(
                            "4% per annum",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "Try Wallet Balance",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "\$105,327.05",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(height: 15),
                  Expanded(
                    child: Container(
                      color: color2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Fund", style: fund),
                          Text("|", style: fund),
                          Text("Send", style: fund),
                          Text("|", style: fund),
                          Text("History", style: fund),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming payments"),
                  Text(
                    "View all",
                    style: TextStyle(color: Color(0xFF20a692)),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6.0,top: 5),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color(0XFFFEC5D1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(Icons.person),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: SizedBox(
                    height: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "James(You)",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color(0XFFEEFBEE),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Active",
                                        style: TextStyle(
                                          color: Color(0XFF2A8F2A),
                                            fontWeight: FontWeight.w300, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child:  IconButton(onPressed: () {

                                    },
                                      icon: const Icon(Icons.expand_more,size: 20,),
                                    ),
                                  )

                                ],
                              ),
                            ),

                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "\$50,000. Due Today 10pm",
                            style: TextStyle(
                              color: Color(0XFF999EA6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6.0,top: 5),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color(0XFFBFF1C9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(Icons.person),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: SizedBox(
                    height: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "yemis Olatunde",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color(0XFFEEFBEE),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Active",
                                        style: TextStyle(
                                            color: Color(0XFF2A8F2A),
                                            fontWeight: FontWeight.w300, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child:  IconButton(onPressed: () {

                                    },
                                      icon: const Icon(Icons.expand_more,size: 20,),
                                    ),
                                  )

                                ],
                              ),
                            ),

                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "\$50,000. Due Tomorow",
                            style: TextStyle(
                              color: Color(0XFF999EA6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6.0,top: 5),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: color2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(Icons.person),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: SizedBox(
                    height: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Kolade Olatunde",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 43.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color(0XFFEEFBEE),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Active",
                                        style: TextStyle(
                                            color: Color(0XFF2A8F2A),
                                            fontWeight: FontWeight.w300, fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child:  IconButton(onPressed: () {

                                    },
                                      icon: const Icon(Icons.expand_more,size: 20,),
                                    ),
                                  )

                                ],
                              ),
                            ),

                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "\$50,000. Due Tomorrow",
                            style: TextStyle(
                              color: Color(0XFF999EA6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 80.0, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 4,left: 8),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(50),
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
                            color: Color(0XFF20A591),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showsheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return SingleChildScrollView(
          child: StatefulBuilder(
            builder: (context, setState) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
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
                            child: Text("Member role in the trybe"),
                          ),
                          const SizedBox(height: 5),
                          ExploreTextField(
                            controller: role,
                            suggestions: _role,
                            hinttext: 'Son', svgIconPath: 'assets/2.svg',
                          ),
                          const SizedBox(height: 10),
                          const Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Text("First name"),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Text("Last name"),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              Expanded(
                                child: Mytextfield(
                                  controller: fname,
                                  hinttext: 'firstname',
                                  Obsecuretext: false,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Mytextfield(
                                  controller: lname,
                                  hinttext: 'lastname',
                                  Obsecuretext: false,
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 18.0, top: 10),
                            child: Text("Email"),
                          ),
                          Mytextfield(
                            controller: email,
                            hinttext: "Email",
                            Obsecuretext: false,
                          ),
                          const SizedBox(height: 10),
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
                                  'Check this if member is a signatory. They \nwill be sent an invite link to join the Trybe.',
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
              );
            },
          ),
        );
      },
    );
  }
}
