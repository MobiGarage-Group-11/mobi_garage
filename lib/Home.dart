//import 'package:footer/footer.dart';
//import 'package:footer/footer_view.dart';

// ignore_for_file: unused_element, non_constant_identifier_names, file_names, prefer_const_constructors_in_immutables, prefer_const_constructors
impor 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobi_garage/About_us.dart';
import 'package:mobi_garage/Booking/Prices.dart';
import 'package:mobi_garage/Contact.dart';
import 'package:mobi_garage/Services_offered.dart';
import 'package:mobi_garage/catalog_screen.dart';
import 'package:mobi_garage/mec.dart';
import 'package:mobi_garage/user.dart';
import 'Faq.dart';
import 'SizeConfig.dart';
import 'login_screen.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'MOBI_GARAGE',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: SafeArea(
              child: MyHomePage(title: 'Mobi_Garage Home Page'),
            ));
      });
    });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController searchController = TextEditingController();

  get child => null;
  UserProfileState? currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        //actions: const [
        //  SignOutButton(),
        //],
        leading: PopupMenuButton(
          tooltip: 'Menu',
          child: const Icon(
            Icons.menu,
            size: 28.0,
            color: Colors.white,
          ),
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(
              child: Row(
                children: [
                  Icon(
                    Icons.offline_bolt,
                    color: Colors.green[100],
                    size: 22.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                    ),
                    child: Text(
                      "Hi, ${currentUser?.user.email! ?? " not logged in"}",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            PopupMenuItem(
              child: Row(
                children: [
                  Icon(
                    Icons.offline_bolt,
                    color: Colors.green[100],
                    size: 22.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.0,
                    ),
                    child: SignOutButton(),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.green,
        title: const Text('MOBIGARAGE'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/Mechanic_at_work_2.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                          left: 7 * SizeConfig.widthMultiplier,
                          top: 2 * SizeConfig.heightMultiplier),
                      child: Text(
                        "High quality sevice for your car",
                        style: GoogleFonts.nunitoSans(
                            fontSize: 3.5 * SizeConfig.textMultiplier,
                            color: Colors.green,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5),
                      )),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 4 * SizeConfig.heightMultiplier,
                        left: 5 * SizeConfig.widthMultiplier,
                        right: 5 * SizeConfig.widthMultiplier),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green[100],
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5 * SizeConfig.widthMultiplier,
                                    vertical: SizeConfig.heightMultiplier),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.search,
                                      color: Colors.black38,
                                      size: 5 * SizeConfig.imageSizeMultiplier,
                                    ),
                                    SizedBox(
                                      width: 1.5 * SizeConfig.widthMultiplier,
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                          controller: searchController,
                                          keyboardType: TextInputType.text,
                                          cursorColor: Colors.blue,
                                          style: GoogleFonts.nunitoSans(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 1.6 *
                                                  SizeConfig.textMultiplier),
                                          decoration: InputDecoration.collapsed(
                                              hintText: "Search",
                                              hintStyle: TextStyle(
                                                  fontSize: 1.7 *
                                                      SizeConfig.textMultiplier,
                                                  color: Colors.black))),
                                    )
                                  ],
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 2 * SizeConfig.widthMultiplier,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 2 * SizeConfig.heightMultiplier,
                        left: 5 * SizeConfig.widthMultiplier),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const LoginScreen(),
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.green)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 1.5 * SizeConfig.textMultiplier,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2 * SizeConfig.widthMultiplier,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => About_us(),
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.green)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "About us",
                                style: TextStyle(
                                    fontSize: 1.5 * SizeConfig.textMultiplier,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2 * SizeConfig.widthMultiplier,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Contact(),
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.green)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Contact us",
                                style: TextStyle(
                                    fontSize: 1.5 * SizeConfig.textMultiplier,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 2 * SizeConfig.widthMultiplier,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const CommonQns(),
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.green)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "FAQ",
                                style: TextStyle(
                                    fontSize: 1.5 * SizeConfig.textMultiplier,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7 * SizeConfig.heightMultiplier),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(50.0)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 5 * SizeConfig.widthMultiplier,
                    vertical: 2 * SizeConfig.heightMultiplier),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/Mechanic_at_work_2.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      height: 50 * SizeConfig.heightMultiplier,
                      width: 150 * SizeConfig.widthMultiplier,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('asset/garagg.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.green)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(40.0),
                            ),
                            Center(
                              child: Text(
                                "Book Car Services Online",
                                style: TextStyle(
                                    fontSize: 3 * SizeConfig.textMultiplier,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 0.5),
                              ),
                            ),
                            // Center(
                            //  child: Text(
                            //     "Warning Lights.\nA Sputtering Engine.\nPoor Fuel Economy.\nDead Battery.\nFlat Tires.Brakes Squeaking or Grinding.\nAlternator Failure.\nBroken Starter Motor.",
                            //     style: TextStyle(
                            //         fontSize: 1.6 * SizeConfig.textMultiplier,
                            //         color: Colors.white,
                            //         fontWeight: FontWeight.w900,
                            //         letterSpacing: 0.5),
                            //   ),
                            //  ),
                            const Padding(
                              padding: EdgeInsets.all(40.0),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => Prices(),
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(color: Colors.green)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "BOOKING",
                                    style: TextStyle(
                                        fontSize:
                                            1.5 * SizeConfig.textMultiplier,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(50.0)),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 5 * SizeConfig.widthMultiplier,
                    vertical: 2 * SizeConfig.heightMultiplier),
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Text("Services & Experts",
                          style: GoogleFonts.nunitoSans(
                              fontSize: 2.8 * SizeConfig.textMultiplier,
                              color: Colors.green,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 0.5)),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const Services_offered(),
                          ),
                        ),
                        child: Text(
                          "More>>",
                          style: GoogleFonts.nunitoSans(
                              fontSize: 1.5 * SizeConfig.textMultiplier,
                              color: Colors.blue,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.5),
                        ),
                      ),
                    ]),
                    SizedBox(height: 2 * SizeConfig.heightMultiplier),
                    SizedBox(
                      height: 40 * SizeConfig.heightMultiplier,
                      width: 900,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            _empl(
                                "SUSPENSION",
                                "View Expert",
                                Image.asset("asset/suspension.jpg"),
                                Image.asset("asset/gil.jpg"),
                                'yiga@gmail.com',
                                '0756322224',
                                'Yiga',
                                "Suspension Expert"),
                            SizedBox(width: 4 * SizeConfig.widthMultiplier),
                            _empl(
                                "flat repair",
                                "View Expert ",
                                Image.asset("asset/wheel 2.jpg"),
                                Image.asset("asset/psh.jpg"),
                                'emmy@gmail.com',
                                '0755131352',
                                'Emmy',
                                'Auto Electrician '),
                            SizedBox(width: 4 * SizeConfig.widthMultiplier),
                            _empl(
                                "WELDING",
                                "View Expert",
                                Image.asset("asset/weld.png"),
                                Image.asset("asset/chief.jpg"),
                                'mooli@gmail.com',
                                '0755756014',
                                'Mooli',
                                "Welding Expert"),
                            SizedBox(width: 4 * SizeConfig.widthMultiplier),
                            _empl(
                                "BATTERY",
                                " View Expert",
                                Image.asset("asset/battery 2.jpg"),
                                Image.asset("asset/kk.jpg"),
                                'kennan@gmail.com',
                                '0771360237',
                                'Kennan',
                                "Battery Expert"),
                            SizedBox(width: 4 * SizeConfig.widthMultiplier),
                            _empl(
                                "ENGINE",
                                "View Expert",
                                Image.asset("asset/starter 2.jpg"),
                                Image.asset("asset/Deo.jpg"),
                                'deo@gmail.com',
                                '0702083288',
                                'Deo',
                                "Engine Expert"),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 5 * SizeConfig.widthMultiplier,
                  vertical: 3 * SizeConfig.heightMultiplier),
              child: Row(
                children: <Widget>[
                  Text("Spare parts on sale",
                      style: GoogleFonts.nunitoSans(
                          fontSize: 2.8 * SizeConfig.textMultiplier,
                          color: Colors.green,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.5)),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CatalogScreen(),
                      ),
                    ),
                    child: Text("Go to shop >>",
                        style: GoogleFonts.nunitoSans(
                            fontSize: 1.5 * SizeConfig.textMultiplier,
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: SizedBox(
                height: 30 * SizeConfig.heightMultiplier,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _SpareCategory('tyre', Image.asset("asset/tyre.jpeg")),
                    SizedBox(width: 2 * SizeConfig.widthMultiplier),
                    _SpareCategory(
                        'Spark Plugs', Image.asset("asset/plug 3.jpg")),
                    SizedBox(width: 2 * SizeConfig.widthMultiplier),
                    _SpareCategory(
                        'Wind screen', Image.asset("asset/windscreen.jpg")),
                    SizedBox(width: 2 * SizeConfig.widthMultiplier),
                    _SpareCategory(
                        'Alternator', Image.asset("asset/alternator.jpg")),
                    SizedBox(width: 2 * SizeConfig.widthMultiplier),
                    _SpareCategory(
                        'Starter', Image.asset("asset/starter 2.jpg")),
                    SizedBox(width: 2 * SizeConfig.widthMultiplier),
                    _SpareCategory(
                        'Battery', Image.asset("asset/battery 2.jpg")),
                    SizedBox(width: 2 * SizeConfig.widthMultiplier),
                    _SpareCategory('Automotive Fluids',
                        Image.asset("asset/automotive fluid.jpg")),
                    SizedBox(width: 2 * SizeConfig.widthMultiplier),
                    _SpareCategory(
                        'Exterior Lights', Image.asset("asset/ext light.jpg")),
                    SizedBox(width: 2 * SizeConfig.widthMultiplier),
                    _SpareCategory('Brake Rotors',
                        Image.asset("asset/brake rotators.jpg")),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _category(String categoryName) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const Services_offered(),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.green)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            categoryName,
            style: TextStyle(
                fontSize: 1.5 * SizeConfig.textMultiplier,
                color: Colors.green,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5),
          ),
        ),
      ),
    );
  }

  _empl(String emplName, String emplservice, Image myimage1, Image myimg,
      String email, String tel, String name, String prof) {
    return Container(
        height: 21 * SizeConfig.heightMultiplier,
        width: 65 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.green[100],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90.0),
                        color: Colors.green[100]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 6,
                      ),
                      child: myimage1,
                    ),
                    height: 46 * SizeConfig.imageSizeMultiplier,
                    width: 47 * SizeConfig.imageSizeMultiplier,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                    size: 6 * SizeConfig.imageSizeMultiplier,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(emplName,
                    style: GoogleFonts.nunitoSans(
                        fontSize: 2 * SizeConfig.textMultiplier,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.3)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Mec(myimg, email, tel, name, prof),
                    ),
                  ),
                  child: Text(
                    emplservice,
                    style: GoogleFonts.nunitoSans(
                        fontSize: 2.3 * SizeConfig.textMultiplier,
                        color: Colors.blue,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.5),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  // ignore: todo
  //  TODO add more colors
  _SpareCategory(String category, Image myimage) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green[100], borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 3 * SizeConfig.widthMultiplier),
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.green[100]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: myimage,
              ),
              height: 50 * SizeConfig.imageSizeMultiplier,
              width: 60 * SizeConfig.imageSizeMultiplier,
            ),
            SizedBox(
              width: 2 * SizeConfig.widthMultiplier,
            ),
            Text(category,
                style: GoogleFonts.nunitoSans(
                    fontSize: 2 * SizeConfig.textMultiplier,
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.3)),
          ],
        ),
      ),
    );
  }
}
