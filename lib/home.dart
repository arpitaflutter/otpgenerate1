import 'dart:math';

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override

  List numberlist = [];

  List otplist = [""];
  List rndlist = [];
  int i=0;
  int? r;

  TextEditingController txtotp = TextEditingController();
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.redAccent.shade100,
        appBar: AppBar(
          backgroundColor: Colors.redAccent.shade100,
          elevation: 0,
        ),
        body: Column(
          children: [
            Center(child: Text("OTP Generator",style: TextStyle(color: Colors.redAccent,letterSpacing: 1,fontSize: 25,fontWeight: FontWeight.bold),)),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: txtotp,cursorColor: Colors.redAccent,
                style: TextStyle(color: Colors.red),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  hintText: "Enter the length of OTP",hintStyle: TextStyle(color: Colors.redAccent),
                ),
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: () {
                var data = txtotp.text;
                int n = int.parse(data);
                var rnd = Random();

                setState(() {
                  otplist.clear();
                  rndlist.clear();
                  for(int i=0;i<n;i++)
                  {
                    r = rnd.nextInt(9);
                    otplist.add(r);
                  }
                });
              },
              child: Container(
                height: 60,width: 200,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Generate OTP",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            ),
            SizedBox(height: 70,),
            Container(
              height: 60,width: 400,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("$otplist",style: TextStyle(color: Colors.white),))
            ),
            SizedBox(height: 70,),
            InkWell(
              onTap: () {
                var data = txtotp.text;
                int n = int.parse(data);
                var rnd = Random();

                setState(() {
                  otplist.clear();
                  rndlist.clear();
                  for(int i=0;i<n;i++)
                  {
                    r = rnd.nextInt(9);
                    otplist.add(r);
                  }
                });
              },
              child: Container(
                height: 50,width: 150,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Reset",style: TextStyle(color: Colors.white,fontSize: 20))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
