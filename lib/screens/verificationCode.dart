import 'package:application_unknown/firebase/FirebaseMethods.dart';
import 'package:application_unknown/widgets/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OneTimePassword extends StatefulWidget {
  final String verificationId;

  OneTimePassword(this.verificationId);

  @override
  _OneTimePasswordState createState() => _OneTimePasswordState();
}

class _OneTimePasswordState extends State<OneTimePassword> {
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  final FocusNode focusNode4 = FocusNode();
  final FocusNode focusNode5 = FocusNode();
  final FocusNode focusNode6 = FocusNode();

  final TextEditingController otp1 = TextEditingController();
  final TextEditingController otp2 = TextEditingController();
  final TextEditingController otp3 = TextEditingController();
  final TextEditingController otp4 = TextEditingController();
  final TextEditingController otp5 = TextEditingController();
  final TextEditingController otp6 = TextEditingController();

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
              image: AssetImage("assets/images/28.png"),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              "Verification",
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
              "Enter the 6-digit code sent to your phone number",
              style: GoogleFonts.lato(
                fontSize: SizeConfig.safeBlockHorizontal * 4,
                color: Colors.grey,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: SizeConfig.blockSizeVertical * 5.5,
                margin: const EdgeInsets.only(top: 30),
                child: TextField(
                  maxLength: 1,
                  controller: otp1,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.phone,
                  style: GoogleFonts.lato(
                    fontSize: SizeConfig.safeBlockHorizontal * 6,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                  focusNode: focusNode1,
                  decoration: InputDecoration(
                    counterText: "",
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
                  ),
                ),
              ),
              Container(
                width: SizeConfig.blockSizeVertical * 5.5,
                margin: const EdgeInsets.only(top: 30),
                child: TextField(
                  maxLength: 1,
                  controller: otp2,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.phone,
                  style: GoogleFonts.lato(
                    fontSize: SizeConfig.safeBlockHorizontal * 6,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                  focusNode: focusNode2,
                  decoration: InputDecoration(
                    counterText: "",
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
                  ),
                ),
              ),
              Container(
                width: SizeConfig.blockSizeVertical * 5.5,
                margin: const EdgeInsets.only(top: 30),
                child: TextField(
                  maxLength: 1,
                  controller: otp3,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.phone,
                  style: GoogleFonts.lato(
                    fontSize: SizeConfig.safeBlockHorizontal * 6,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                  focusNode: focusNode3,
                  decoration: InputDecoration(
                    counterText: "",
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
                  ),
                ),
              ),
              Container(
                width: SizeConfig.blockSizeVertical * 5.5,
                margin: const EdgeInsets.only(top: 30),
                child: TextField(
                  maxLength: 1,
                  controller: otp4,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.phone,
                  style: GoogleFonts.lato(
                    fontSize: SizeConfig.safeBlockHorizontal * 6,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                  focusNode: focusNode4,
                  decoration: InputDecoration(
                    counterText: "",
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
                  ),
                ),
              ),
              Container(
                width: SizeConfig.blockSizeVertical * 5.5,
                margin: const EdgeInsets.only(top: 30),
                child: TextField(
                  maxLength: 1,
                  controller: otp5,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.phone,
                  style: GoogleFonts.lato(
                    fontSize: SizeConfig.safeBlockHorizontal * 6,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                  focusNode: focusNode5,
                  decoration: InputDecoration(
                    counterText: "",
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
                  ),
                ),
              ),
              Container(
                width: SizeConfig.blockSizeVertical * 5.5,
                margin: const EdgeInsets.only(top: 30),
                child: TextField(
                  maxLength: 1,
                  controller: otp6,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.phone,
                  focusNode: focusNode6,
                  style: GoogleFonts.lato(
                    fontSize: SizeConfig.safeBlockHorizontal * 6,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                  decoration: InputDecoration(
                    counterText: "",
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
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () async {
                focusNode1.unfocus();
                focusNode2.unfocus();
                focusNode3.unfocus();
                focusNode4.unfocus();
                focusNode5.unfocus();
                focusNode6.unfocus();
                String fullOpt = otp1.text +
                    otp2.text +
                    otp3.text +
                    otp4.text +
                    otp5.text +
                    otp6.text;
                await FirebaseMethods()
                    .verifyOtp(widget.verificationId, fullOpt.trim(), context);
              },
              child: Text("Verify"),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.all(15),
                ),
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(57, 74, 204, 1),
                ),
                textStyle: MaterialStateProperty.all(
                  GoogleFonts.lato(
                    fontSize: SizeConfig.safeBlockHorizontal * 3.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
