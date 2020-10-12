import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import '../widgets/appBar.dart';

class AppsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 30, right: 30, top: 50),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              children: [
                InkWell(
                    borderRadius: BorderRadius.circular(20.0),
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(20.0)),
                      height: 150,
                      width: 150,
                      child: Text(
                        'Musique',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    )),
                Container(
                  height: 50,
                ),
                InkWell(
                    borderRadius: BorderRadius.circular(20.0),
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(20.0)),
                      height: 150,
                      width: 150,
                      child: Text(
                        'Jeux',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    )),
              ],
            ),
            Column(
              children: [
                InkWell(
                    borderRadius: BorderRadius.circular(20.0),
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(20.0)),
                      height: 150,
                      width: 150,
                      child: Text(
                        'Météo',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    )),
                Container(
                  height: 50,
                ),
                InkWell(
                    borderRadius: BorderRadius.circular(20.0),
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(20.0)),
                      height: 150,
                      width: 150,
                      child: Text(
                        'Médias',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    )),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
