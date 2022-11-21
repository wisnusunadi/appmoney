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

class Detail extends StatefulWidget {
  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, top: 40),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Your Saving',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 23,
                  ),
                ),
              ),
              Image.asset(
                'assets/Saly-3.png',
                height: 250,
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                width: 323,
                height: 151,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 2),
                      ),
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Belanja motor baru',
                          style: primaryTextStyle.copyWith(fontWeight: bold),
                        ),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(237, 237, 237, 1.000),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                            child: Text(
                              '1 Bulan lalu',
                              style: dangerTextStyle.copyWith(fontWeight: bold),
                            ),
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Rp. 158.000 - Rp. 710.000',
                        style: priceTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: 300,
                      height: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                          value: 0.7,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Color.fromARGB(255, 24, 7, 255)),
                          backgroundColor: Color.fromRGBO(237, 237, 237, 1.000),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 3),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(237, 237, 237, 1.000),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/ic_round-send.png'))),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 3, right: 3),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(237, 237, 237, 1.000),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/ic_round-add-circle.png'))),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 3, right: 8),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(237, 237, 237, 1.000),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/ic_twotone-more-vert.png'))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Transaksi',
                  style: primaryTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  children: [
                    Card(
                      margin: EdgeInsets.only(right: 10),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/ic_round-add.png')),
                                  color: Color.fromRGBO(237, 237, 237, 1.000),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Top Up GoPay',
                                    style: primaryTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 16),
                                  ),
                                  Text(
                                    'Hari ini',
                                    style: priceTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              child: Text(
                                'Rp. 50.000',
                                style: primaryTextStyle.copyWith(
                                    fontWeight: semiBold, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(top: 10, right: 10),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/ic_round-add.png')),
                                  color: Color.fromRGBO(237, 237, 237, 1.000),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Top Up OVO',
                                    style: primaryTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 16),
                                  ),
                                  Text(
                                    'Kemarin',
                                    style: priceTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              child: Text(
                                'Rp. 25.000',
                                style: primaryTextStyle.copyWith(
                                    fontWeight: semiBold, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(top: 10, right: 10),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/ic_round-minus.png')),
                                  color: Color.fromRGBO(237, 237, 237, 1.000),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bayar tagihan',
                                    style: primaryTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 16),
                                  ),
                                  Text(
                                    'Kemarin',
                                    style: priceTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              child: Text(
                                'Rp. 125.000',
                                style: primaryTextStyle.copyWith(
                                    fontWeight: semiBold, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(top: 10, right: 10),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/ic_round-add.png')),
                                  color: Color.fromRGBO(237, 237, 237, 1.000),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gajian',
                                    style: primaryTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 16),
                                  ),
                                  Text(
                                    '25 Oktober 2022',
                                    style: priceTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              child: Text(
                                'Rp. 1.025.000',
                                style: primaryTextStyle.copyWith(
                                    fontWeight: semiBold, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(top: 10, right: 10),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/ic_round-minus.png')),
                                  color: Color.fromRGBO(237, 237, 237, 1.000),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bayar Cicilan I-Phone',
                                    style: primaryTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 16),
                                  ),
                                  Text(
                                    '1 Oktober 2022',
                                    style: priceTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              child: Text(
                                'Rp. 25.000',
                                style: primaryTextStyle.copyWith(
                                    fontWeight: semiBold, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(top: 10, right: 10),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/ic_round-minus.png')),
                                  color: Color.fromRGBO(237, 237, 237, 1.000),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bayar Cicilan Rumah',
                                    style: primaryTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 16),
                                  ),
                                  Text(
                                    '20 September 2022',
                                    style: priceTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              child: Text(
                                'Rp. 525.000',
                                style: primaryTextStyle.copyWith(
                                    fontWeight: semiBold, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(top: 10, right: 10),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/ic_round-minus.png')),
                                  color: Color.fromRGBO(237, 237, 237, 1.000),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Go Food',
                                    style: primaryTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 16),
                                  ),
                                  Text(
                                    '10 September 2022',
                                    style: priceTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              child: Text(
                                'Rp. 25.000',
                                style: primaryTextStyle.copyWith(
                                    fontWeight: semiBold, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(top: 10, right: 10),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/ic_round-add.png')),
                                  color: Color.fromRGBO(237, 237, 237, 1.000),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gajian',
                                    style: primaryTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 16),
                                  ),
                                  Text(
                                    '1 September 2022',
                                    style: priceTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              child: Text(
                                'Rp. 1.025.000',
                                style: primaryTextStyle.copyWith(
                                    fontWeight: semiBold, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(top: 10, right: 10),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/ic_round-add.png')),
                                  color: Color.fromRGBO(237, 237, 237, 1.000),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Projek client',
                                    style: primaryTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 16),
                                  ),
                                  Text(
                                    '14 Agustus 2022',
                                    style: priceTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              child: Text(
                                'Rp. 725.000',
                                style: primaryTextStyle.copyWith(
                                    fontWeight: semiBold, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(top: 10, right: 10),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              height: 54,
                              width: 54,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/ic_round-minus.png')),
                                  color: Color.fromRGBO(237, 237, 237, 1.000),
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Service Motor',
                                    style: primaryTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 16),
                                  ),
                                  Text(
                                    '1 Agustus 2022',
                                    style: priceTextStyle.copyWith(
                                        fontWeight: medium, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              child: Text(
                                'Rp. 125.000',
                                style: primaryTextStyle.copyWith(
                                    fontWeight: semiBold, fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                              'Rp. 158.000 - Rp. 710.000',
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
              SizedBox(
                  height: MediaQuery.of(context).size.height,
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
          GestureDetector(
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Detail());
              Navigator.push(context, route);
            },
            child: Card(
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
          ),
          GestureDetector(
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Detail());
              Navigator.push(context, route);
            },
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    'assets/Saly-1.png',
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
          ),
          GestureDetector(
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Detail());
              Navigator.push(context, route);
            },
            child: Card(
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
          ),
          GestureDetector(
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Detail());
              Navigator.push(context, route);
            },
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    'assets/Saly-1.png',
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
          ),
          GestureDetector(
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Detail());
              Navigator.push(context, route);
            },
            child: Card(
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
          ),
          GestureDetector(
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Detail());
              Navigator.push(context, route);
            },
            child: Card(
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
          ),
          GestureDetector(
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Detail());
              Navigator.push(context, route);
            },
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    'assets/Saly-3.png',
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
          ),
          GestureDetector(
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Detail());
              Navigator.push(context, route);
            },
            child: Card(
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
          ),
          GestureDetector(
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Detail());
              Navigator.push(context, route);
            },
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    'assets/Saly-3.png',
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
          ),
          GestureDetector(
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Detail());
              Navigator.push(context, route);
            },
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    'assets/Saly-1.png',
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
                  'assets/Saly-1.png',
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
                  'assets/Saly-1.png',
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
