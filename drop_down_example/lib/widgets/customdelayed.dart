import 'package:flutter/material.dart';

class customdelayed extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String changingID;
  customdelayed(this.text1, this.text2, this.text3, this.changingID);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.check_box,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 5),
            child: Container(
              width: 290,
              height: 130,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200]),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5, bottom: 10),
                          child: Text("Lista de Verificacion",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.add_circle_outline,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                    Text(
                      this.text1,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      this.text2,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      this.text3,
                      style: TextStyle(color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Text(
                            this.changingID,
                            style: TextStyle(color: Colors.red),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text("Mayo 12 2022"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
