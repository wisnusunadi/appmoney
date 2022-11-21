import 'package:flutter/material.dart';
import 'package:k2/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Save Money',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Let's Save",
                          style: primaryTextStyle.copyWith(
                              fontSize: 30, fontWeight: bold),
                        ),
                        Text(
                          'our money here',
                          style: primaryTextStyle.copyWith(
                              fontSize: 30, fontWeight: bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage('assets/Group_28.png'))),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Already Saved",
                    style: primaryTextStyle.copyWith(
                        fontSize: 18, fontWeight: regular),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/ic_baseline-visibility.png',
                          width: 24,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Rp. 5.000.000",
                          style: secondaryTextStyle.copyWith(
                              fontSize: 18, fontWeight: semiBold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    height: 400,
                    margin: EdgeInsets.only(right: 20),
                    width: MediaQuery.of(context).size.width,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(25),
                    //   color: fourthColor,
                    // ),
                  ),
                  Positioned(
                    top: 120,
                    left: 10,
                    right: 10,
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 270,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: thirdColor,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 1,
                    left: 10,
                    right: 10,
                    child: Image.asset(
                      'assets/Saly-10.png',
                      height: 300,
                    ),
                  ),
                  Positioned(
                    top: 260,
                    left: 10,
                    right: 10,
                    child: Container(
                      margin: EdgeInsets.only(right: 30, left: 15),
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: fourthColor,
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Beli meja kerja',
                                  style: blackTextStyle.copyWith(
                                      fontSize: 16, fontWeight: semiBold),
                                ),
                                Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(251, 213, 213, 1),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Center(
                                    child: Text(
                                      '1 Bulan lalu',
                                      style: dangerTextStyle.copyWith(
                                          fontWeight: bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'Rp. 158.000 - Rp. 0.000',
                              style: priceTextStyle.copyWith(
                                  fontSize: 16, fontWeight: medium),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              width: 300,
                              height: 10,
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: LinearProgressIndicator(
                                  value: 0.7,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color.fromARGB(255, 24, 7, 255)),
                                  backgroundColor: Color(0xffD6D6D6),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(
                    right: 22,
                    left: 15,
                  ),
                  child: Item_home())
            ],
          ),
        ),
      ),
    );
  }
}

class Item_home extends StatefulWidget {
  @override
  State<Item_home> createState() => _Item_homeState();
}

class _Item_homeState extends State<Item_home> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-1.png',
                  width: 100,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-3.png',
                  width: 110,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-1.png',
                  width: 100,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-3.png',
                  width: 110,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-1.png',
                  width: 100,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-3.png',
                  width: 110,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-1.png',
                  width: 100,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-3.png',
                  width: 110,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-1.png',
                  width: 100,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-3.png',
                  width: 110,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-1.png',
                  width: 100,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-3.png',
                  width: 110,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-1.png',
                  width: 100,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-3.png',
                  width: 110,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-1.png',
                  width: 100,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/Saly-3.png',
                  width: 110,
                ),
                Text(
                  'Liburan Bali',
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                Text(
                  'Rp. 200.000',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          ),
        ]);
  }
}
