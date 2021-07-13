import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1.0),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth >= 600 && constraints.maxWidth < 1100) {
            return _buildIsTablet(constraints);
          } else if (constraints.maxWidth >= 1100) {
            return _buildIsDesktop(constraints, screenSize);
          } else {
            return _buildIsMobile(constraints);
          }
        },
      ),
    );
  }

  Widget _buildIsDesktop(BoxConstraints constraints, screenSize) {
    return Row(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset("assets/images/loginImage.jpg"),
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(left: 0, right: 150),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: LayoutBuilder(
                    builder: (context, constraints) => Container(
                      // color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 60,
                        ),
                        child: Image.asset(
                          "assets/icons/crm.png",
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Container(
                        width: 514,
                        height: 514,
                        color: Color.fromRGBO(250, 250, 250, 1.0),
                        child: Center(
                          child: Container(
                            width: 319,
                            height: 319,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Login to the CRM",
                                          style: GoogleFonts.roboto(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(
                                                  10, 25, 49, 1))),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                        "Now you should login to the system usint the email where you’ve got the invitation link and new password.",
                                        style: GoogleFonts.roboto(
                                            fontSize: 12,
                                            height: 1.2,
                                            fontWeight: FontWeight.w400,
                                            color:
                                                Color.fromRGBO(10, 25, 49, 1))),
                                  ],
                                ),
                                // Row(
                                //   children: [
                                //     CustomText(
                                //       text: "Welcome back to the admin panel.",
                                //       color: lightGrey,
                                //     ),
                                //   ],
                                // ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color.fromRGBO(244, 243, 245, 1),
                                    labelText: "Login",
                                    labelStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(137, 129, 155, 1)),
                                    hintText: "",
                                    isDense: true,
                                    contentPadding: EdgeInsets.all(12),
                                    // border: OutlineInputBorder(
                                    //     borderRadius: BorderRadius.circular(4),
                                    //   borderSide: BorderSide(color: Colors.green),
                                    // )
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 0.0),
                                      borderRadius: BorderRadius.all(
                                          const Radius.circular(4.0)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(255, 125, 100, 1)),
                                    ),
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 32,
                                ),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color.fromRGBO(244, 243, 245, 1),
                                    labelText: "Password",
                                    hintText: "",
                                    labelStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromRGBO(137, 129, 155, 1)),
                                    isDense: true,
                                    contentPadding: EdgeInsets.all(14),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromRGBO(255, 125, 100, 1)),
                                    ),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 0.0),
                                      borderRadius: BorderRadius.all(
                                          const Radius.circular(4.0)),
                                    ),
                                    border: new OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(4.0),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    // Row(
                                    //   children: [
                                    //     Checkbox(value: true, onChanged: (value){}),
                                    //     CustomText(text: "Remeber Me",),
                                    //   ],
                                    // ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text("Forgot password?",
                                          style: GoogleFonts.roboto(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(
                                                  10, 25, 49, 0.7))),
                                    ),
                                    // Text(
                                    //   text: "Forgot password?",
                                    //   color: active,
                                    // )
                                  ],
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () {
                                          // Get.offAllNamed(rootRoute);
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  255, 125, 100, 1),
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          alignment: Alignment.center,
                                          width: 60,
                                          padding:
                                              EdgeInsets.symmetric(vertical: 9),
                                          child: Text('SUBMIT',
                                              style: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  height: 1.4)),
                                        ),
                                      ),
                                    ]),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                          // padding: const EdgeInsets.only(right: 110, left: 110),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildIsTablet(BoxConstraints constraints) {
    return new SingleChildScrollView(
      child: Column(children: [
        Container(
            color: Colors.yellow,
            width: constraints.maxWidth,
            height: constraints.maxHeight * 0.2,
            child: RotatedBox(
              quarterTurns: 1,
              child: Image.asset(
                "assets/images/loginImage.jpg",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.1,
                child: Image.asset("assets/icons/crm.png"))),
        Container(
            color: Color.fromRGBO(250, 250, 250, 1.0),
            width: 450,
            height: 450,
            child: Center(
              child: Container(
                width: 319,
                height: 319,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Login to the CRM",
                              style: GoogleFonts.roboto(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(10, 25, 49, 1))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Now you should login to the system usint the email where you’ve got the invitation link and new password.",
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                height: 1.2,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(10, 25, 49, 1))),
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     CustomText(
                    //       text: "Welcome back to the admin panel.",
                    //       color: lightGrey,
                    //     ),
                    //   ],
                    // ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(244, 243, 245, 1),
                        labelText: "Login",
                        labelStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(137, 129, 155, 1)),
                        hintText: "",
                        isDense: true,
                        contentPadding: EdgeInsets.all(12),
                        // border: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(4),
                        //   borderSide: BorderSide(color: Colors.green),
                        // )
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 0.0),
                          borderRadius:
                              BorderRadius.all(const Radius.circular(4.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(255, 125, 100, 1)),
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(4.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(244, 243, 245, 1),
                        labelText: "Password",
                        hintText: "",
                        labelStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(137, 129, 155, 1)),
                        isDense: true,
                        contentPadding: EdgeInsets.all(14),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(255, 125, 100, 1)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 0.0),
                          borderRadius:
                              BorderRadius.all(const Radius.circular(4.0)),
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(4.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Row(
                        //   children: [
                        //     Checkbox(value: true, onChanged: (value){}),
                        //     CustomText(text: "Remeber Me",),
                        //   ],
                        // ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text("Forgot password?",
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(10, 25, 49, 0.7))),
                        ),
                        // Text(
                        //   text: "Forgot password?",
                        //   color: active,
                        // )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              // Get.offAllNamed(rootRoute);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 125, 100, 1),
                                  borderRadius: BorderRadius.circular(6)),
                              alignment: Alignment.center,
                              width: 60,
                              padding: EdgeInsets.symmetric(vertical: 9),
                              child: Text('SUBMIT',
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 12,
                                      height: 1.4)),
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              // padding: const EdgeInsets.only(right: 110, left: 110),
            )),
      ]),
    );
  }

  Widget _buildIsMobile(BoxConstraints constraints) {
    return new SingleChildScrollView(
      child: Column(children: [
        Container(
            color: Colors.yellow,
            width: constraints.maxWidth,
            height: constraints.maxHeight * 0.2,
            child: RotatedBox(
              quarterTurns: 1,
              child: Image.asset(
                "assets/images/loginImage.jpg",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 50),
            child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.1,
                child: Image.asset("assets/icons/crm.png"))),
        Padding(
            padding: const EdgeInsets.only(left: 35, right: 35),
            child: Container(
                color: Color.fromRGBO(250, 250, 250, 1.0),
                width: 340,
                height: 400,
                child: Center(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        width: constraints.maxWidth,
                        height: constraints.maxHeight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Login to the CRM",
                                      style: GoogleFonts.roboto(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color:
                                              Color.fromRGBO(10, 25, 49, 1))),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    "Now you should login to the system usint the email where you’ve got the invitation link and new password.",
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        height: 1.2,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(10, 25, 49, 1))),
                              ],
                            ),
                            // Row(
                            //   children: [
                            //     CustomText(
                            //       text: "Welcome back to the admin panel.",
                            //       color: lightGrey,
                            //     ),
                            //   ],
                            // ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(244, 243, 245, 1),
                                labelText: "Login",
                                labelStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(137, 129, 155, 1)),
                                hintText: "",
                                isDense: true,
                                contentPadding: EdgeInsets.all(12),
                                // border: OutlineInputBorder(
                                //     borderRadius: BorderRadius.circular(4),
                                //   borderSide: BorderSide(color: Colors.green),
                                // )
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 0.0),
                                  borderRadius: BorderRadius.all(
                                      const Radius.circular(4.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(255, 125, 100, 1)),
                                ),
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(244, 243, 245, 1),
                                labelText: "Password",
                                hintText: "",
                                labelStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(137, 129, 155, 1)),
                                isDense: true,
                                contentPadding: EdgeInsets.all(14),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(255, 125, 100, 1)),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 0.0),
                                  borderRadius: BorderRadius.all(
                                      const Radius.circular(4.0)),
                                ),
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Row(
                                //   children: [
                                //     Checkbox(value: true, onChanged: (value){}),
                                //     CustomText(text: "Remeber Me",),
                                //   ],
                                // ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text("Forgot password?",
                                      style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromRGBO(10, 25, 49, 0.7))),
                                ),
                                // Text(
                                //   text: "Forgot password?",
                                //   color: active,
                                // )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {
                                      // Get.offAllNamed(rootRoute);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(255, 125, 100, 1),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      alignment: Alignment.center,
                                      width: 60,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 9),
                                      child: Text('SUBMIT',
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 12,
                                              height: 1.4)),
                                    ),
                                  ),
                                ]),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      )),
                  // padding: const EdgeInsets.only(right: 110, left: 110),
                ))),
      ]),
    );
  }
}
