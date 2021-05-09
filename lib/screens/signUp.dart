import 'package:application_unknown/firebase/FirebaseMethods.dart';
import 'package:application_unknown/widgets/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final phoneNumberController = TextEditingController();

  final firebaseMethods = FirebaseMethods();
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(30),
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 50),
            child: Image(
              height: SizeConfig.blockSizeVertical * 30,
              image: AssetImage("assets/images/21.png"),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Text(
              "Sign Up",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w900,
                fontSize: SizeConfig.safeBlockHorizontal * 7,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Text(
              "Enter your phone number to start working",
              style: GoogleFonts.lato(
                fontSize: SizeConfig.safeBlockHorizontal * 4,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: TextField(
              controller: phoneNumberController,
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.phone,
              style: GoogleFonts.lato(
                fontSize: SizeConfig.safeBlockHorizontal * 5,
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
              focusNode: focusNode,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(185, 189, 198, 0.5),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(214, 61, 22, 1),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.call_rounded,
                  color: const Color.fromRGBO(67, 94, 190, 1),
                  size: 18,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () async {
                focusNode.unfocus();
                await firebaseMethods.verifyPhoneNumber(
                    phoneNumberController.text.trim(), context);
              },
              child: Text("Next"),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.all(15),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(57, 74, 204, 1),
                  ),
                  textStyle: MaterialStateProperty.all(
                    GoogleFonts.lato(
                      decoration: TextDecoration.none,
                      fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
