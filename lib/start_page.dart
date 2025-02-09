import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:egg_project_1/components.dart';
import 'package:egg_project_1/hard_boiled.dart';
import 'package:egg_project_1/soft_boiled.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> items = [
    'Soft Boiled',
    'Hard Boiled',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title:Text('Egg Timer')
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Sans('Let\'s Boil your eggs', 30.0),
            // Text('Let\'s time your eggs', ),

            SizedBox(
              height: 80.0,
            ),
            Center(
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  isExpanded: true,
                  hint: Text(
                    'Egg Type',
                    style: TextStyle(
                      fontSize: 17,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: items
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (String? value) {
                   
                    setState(() {
                      selectedValue = value;

                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 40,
                    width: 140,
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),

            ElevatedButton(
                onPressed: () {
                  if (selectedValue == "Hard Boiled") {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HardBoilPage()));
                  } else if (selectedValue == "Soft Boiled") {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SoftBoilPage()));
                  } else {
                   print('choose an option');
                  }
                },
                child: Text('Start Timer'))
          ],
        ),
      ),
    );
  }
}




