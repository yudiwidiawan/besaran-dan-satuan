import 'package:flutter/material.dart';


const List<String> list = <String>['Panjang', 'Massa'];
const List<String> listMassa = <String>['Ton UK (t)', 'Kilogram (kg)', 'Gram (gr)', 'Miligram (mg)'];
const List<String> listPanjang = <String>[
  'Kilometer (km)',
  'Meter (m)',
  'Sentimeter (cm)',
  'Milimeter (mm)'
];
const List<String> listWaktu = <String>[
  'Hari',
  'Jam',
  'Menit',
  'Detik',
  'Milidetik'
];
const List<String> listSuhu = <String>['Celcius', 'Fahrenheit', 'Kelvin'];


const mainTitleTS = TextStyle(
    fontSize: 30, color: Color(0xFFF2EDDB), fontFamily: 'AlfaSlabOne');

const Border borderDecoration = Border(
    top: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
    bottom: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
    left: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid),
    right: BorderSide(color: Colors.black, width: 2, style: BorderStyle.solid));

class Kalkulator extends StatefulWidget {
  const Kalkulator({super.key});

  @override
  _KalkulatorState createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  double fromValue = 0.0;
  double toValue = 0.0;
  String dropDownValue = list.first;
  String dropDownFromValue = listPanjang.first;
  String dropDownToValue = listPanjang.last;
  List<String> currFromList = listPanjang;

  var toTxtController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  konversi() {
    if (fromValue > 0 && (!fromValue.isNaN)) {
      if (dropDownValue == 'Panjang') {
        if (dropDownFromValue == 'Kilometer (km)') {
          if (dropDownToValue == 'Meter (m)') {
            setState(() {
              toValue = fromValue * 1000.0;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Sentimeter (cm)') {
            setState(() {
              toValue = fromValue * 100000.0;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Milimeter (mm)') {
            setState(() {
              toValue = fromValue * 1000000.0;
              toTxtController.text = toValue.toString();
            });
          }
        } else if (dropDownFromValue == 'Meter (m)') {
          if (dropDownToValue == 'Kilometer (km)') {
            setState(() {
              toValue = fromValue / 1000;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Sentimeter (cm)') {
            setState(() {
              toValue = fromValue * 100.0;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Milimeter (mm)') {
            setState(() {
              toValue = fromValue * 1000.0;
              toTxtController.text = toValue.toString();
            });
          }
        } else if (dropDownFromValue == 'Sentimeter (cm)') {
          if (dropDownToValue == 'Kilometer (km)') {
            setState(() {
              toValue = fromValue / 100000.0;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Meter (m)') {
            setState(() {
              toValue = fromValue / 100.0;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Milimeter (mm)') {
            setState(() {
              toValue = fromValue * 10.0;
              toTxtController.text = toValue.toString();
            });
          }
        } else if (dropDownFromValue == 'Milimeter (mm)') {
          if (dropDownToValue == 'Kilometer (km)') {
            setState(() {
              toValue = fromValue / 1000000.0;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Meter (m)') {
            setState(() {
              toValue = fromValue / 1000.0;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Sentimeter (cm)') {
            setState(() {
              toValue = fromValue / 10.0;
              toTxtController.text = toValue.toString();
            });
          }
        }
      } else if (dropDownValue == 'Massa') {
        if (dropDownFromValue == 'Ton UK (t)') {
          if (dropDownToValue == 'Kilogram (kg)') {
            setState(() {
              toValue = fromValue * 1016.047;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Gram (gr)') {
            setState(() {
              toValue = fromValue * 1016047;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Miligram (mg)') {
            setState(() {
              toValue = fromValue * 1016046909;
              toTxtController.text = toValue.toString();
            });
          }
        } else if (dropDownFromValue == 'Kilogram (kg)') {
          if (dropDownToValue == 'Ton UK (t)') {
            setState(() {
              toValue = fromValue / 1016.047;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Gram (gr)') {
            setState(() {
              toValue = fromValue * 1000.0;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Miligram (mg)') {
            setState(() {
              toValue = fromValue * 1000000;
              toTxtController.text = toValue.toString();
            });
          }
        } else if (dropDownFromValue == 'Gram (gr)') {
          if (dropDownToValue == 'Ton UK (t)') {
            setState(() {
              toValue = fromValue / 1016047;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Kilogram (kg)') {
            setState(() {
              toValue = fromValue / 1000.0;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Miligram (mg)') {
            setState(() {
              toValue = fromValue * 1000;
              toTxtController.text = toValue.toString();
            });
          }
        } else if (dropDownFromValue == 'Miligram (mg)') {
          if (dropDownToValue == 'Ton UK (t)') {
            setState(() {
              toValue = fromValue / 1016046909;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Kilogram (kg)') {
            setState(() {
              toValue = fromValue / 1000000.0;
              toTxtController.text = toValue.toString();
            });
          } else if (dropDownToValue == 'Gram (gr)') {
            setState(() {
              toValue = fromValue / 1000;
              toTxtController.text = toValue.toString();
            });
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/background.png"),
                      fit: BoxFit.fill)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 140, 30, 90),
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(5, 8),
                        blurRadius: 0,
                        blurStyle: BlurStyle.normal)
                  ],
                  color: Color(0xFFFDDD70),
                  border: borderDecoration,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 150, 40, 100),
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: borderDecoration,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          width: double.infinity,
                          child: DropdownButton<String>(
                            value: dropDownValue,
                            icon: const Icon(Icons.arrow_drop_down),
                            elevation: 16,
                            isExpanded: true,
                            style: const TextStyle(color: Color(0xFF336699)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            underline: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                            ),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropDownValue = value!;
                                switch (dropDownValue) {
                                  case 'Panjang':
                                    currFromList = listPanjang;
                                    dropDownFromValue = listPanjang.first;
                                    dropDownToValue = listPanjang.last;
                                    break;
                                  case 'Massa':
                                    currFromList = listMassa;
                                    dropDownFromValue = listMassa.first;
                                    dropDownToValue = listMassa.last;
                                    break;
                                  case 'Waktu':
                                    currFromList = listWaktu;
                                    dropDownFromValue = listWaktu.first;
                                    dropDownToValue = listWaktu.last;
                                    break;
                                  case 'Suhu':
                                    currFromList = listSuhu;
                                    dropDownFromValue = listSuhu.first;
                                    dropDownToValue = listSuhu.last;
                                    break;
                                }
                              });
                            },
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )),
                      const SizedBox(height: 20),
                      TextField(
                        onChanged: (value) {
                          if (value != "") {
                          setState(() {
                              fromValue = double.parse(value);
                              konversi();
                            });
                          }
                        },
                        style: const TextStyle(color: Color(0xFF336699)),
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20, right: 20),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          width: double.infinity,
                          child: DropdownButton<String>(
                            value: dropDownFromValue,
                            icon: const Icon(Icons.arrow_drop_down),
                            elevation: 16,
                            isExpanded: true,
                            style: const TextStyle(color: Color(0xFF336699)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            underline: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                            ),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                if (value! == dropDownToValue) {
                                  int currFromIdx =
                                      currFromList.indexOf(dropDownFromValue);
                                  dropDownToValue = currFromList[currFromIdx];
                                }
                                dropDownFromValue = value;
                                konversi();
                              });
                            },
                            items: currFromList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )),
                      const SizedBox(height: 20),
                      const Text(
                        "=",
                        style: TextStyle(fontSize: 50),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        readOnly: true,
                        controller: toTxtController,
                        style: const TextStyle(color: Color(0xFF336699)),
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20, right: 20),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          width: double.infinity,
                          child: DropdownButton<String>(
                            value: dropDownToValue,
                            icon: const Icon(Icons.arrow_drop_down),
                            elevation: 16,
                            isExpanded: true,
                            style: const TextStyle(color: Color(0xFF336699)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            underline: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.transparent),
                            ),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                if (value! == dropDownFromValue) {
                                  int currToIdx =
                                      currFromList.indexOf(dropDownToValue);
                                  dropDownFromValue = currFromList[currToIdx];
                                }
                                dropDownToValue = value;
                                konversi();
                              });
                            },
                            items: currFromList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )),
                    ],
                  )),
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 100,
              margin: const EdgeInsets.only(top: 80),
              child: Stack(
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
                      child: const Text("KALKULATOR", style: mainTitleTS)),
                  Container(
                      padding: const EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                      child: Text("KALKULATOR",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'AlfaSlabOne',
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1
                              ..color = const Color(0xFF336699),
                          )))
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.popAndPushNamed(context, "/");
                      },
                      splashColor: Colors.orange,
                      child: const Image(
                          width: 50,
                          image:
                              AssetImage("images/menu_icons/home_medium.png")),
                    ),
                  ],
                )),
          ],
        ));
  }
}
