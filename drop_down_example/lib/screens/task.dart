import 'package:drop_down_example/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/customdelayed.dart';

final List<changingdata> _loadeddata = [
  changingdata(
      "Control de temperatura ingreso",
      "REGISTRO CONTROL TEMPERATURA INGRESO",
      "Control de temperatura ingreso",
      "ID: 207617"),
  changingdata("Chequeo contingencia COVID",
      "CHEQUEO CONTIGENCIA COVID,Chequeo", "Contingencia COVID ", "ID:207689"),
  changingdata(
      "Control de temperatura ingreso",
      "REGISTRO CONTROL TEMPERATURA INGRESO",
      "Control de temperatura ingreso",
      "ID: 207618"),
  changingdata("Chequeo contingencia COVID",
      "CHEQUEO CONTIGENCIA COVID,Chequeo", "Contingencia COVID ", "ID:207690"),
];

class task extends StatefulWidget {
  const task({Key? key}) : super(key: key);

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.2,
                width: double.infinity,
                // child: customdelayed(
                //     "Fuck YOu Muhthafaka",
                //     "Benchood, NO BANCHOD U",
                //     "BLOOODY FUCK YOU BLOODY BASTARD BITCH",
                //     "ID: 1231231213"),

                child: ListView.builder(
                  itemCount: _loadeddata.length,
                  itemBuilder: (context, index) {
                    return customdelayed(
                      _loadeddata[index].text1,
                      _loadeddata[index].text2,
                      _loadeddata[index].text3,
                      _loadeddata[index].changingID,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
