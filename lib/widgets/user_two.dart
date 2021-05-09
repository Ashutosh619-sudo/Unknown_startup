import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:swipe_to/swipe_to.dart';

class User2 extends StatefulWidget {
  final String msg;
  final DateTime timeSent;
  final Function requestfocus;
  final Function swipeleft;
  final Function deleteMessage;
  final Function functionShowReplyTextField;
  final String messageUid;
  final String chatRoomId;
  final String index;
  final String sentBy;
  final String peerUserName;

  User2({Key key, 
  this.msg, 
  this.timeSent,
  this.deleteMessage,
  this.functionShowReplyTextField,
  this.requestfocus,
  this.swipeleft,
  this.chatRoomId,
  this.index,
  this.messageUid,
  this.sentBy,
  this.peerUserName});

  @override
  _User2State createState() => _User2State();
}

class _User2State extends State<User2> {
  var dateFormat = DateFormat.jm();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SwipeTo(
            onRightSwipe: () {
                widget.requestfocus(context);
                widget.functionShowReplyTextField(widget.msg, widget.index,widget.peerUserName);
              },
              onLeftSwipe: () {
                widget.swipeleft(context, widget.messageUid);
              },
              child: InkWell(
                onLongPress: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Text("Are you sure?",
                                  style: GoogleFonts.nunito(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            ),
                            Divider(
                              thickness: 2,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 20),
                                    child: OutlineButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "No",
                                        style: GoogleFonts.nunito(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.indigo),
                                      ),
                                      borderSide: BorderSide(
                                          color: Colors.indigo, width: 2),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 20),
                                    child: OutlineButton(
                                      onPressed: () {
                                        widget.deleteMessage(
                                            widget.messageUid, context);
                                      },
                                      child: Text("Yes",
                                          style: GoogleFonts.nunito(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.indigo)),
                                      borderSide: BorderSide(
                                          color: Colors.indigo, width: 2),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      });
                },
            child: Container(
              constraints: BoxConstraints(maxWidth: 250),
              margin: const EdgeInsets.only(bottom: 5, top: 5, right: 3),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color:
                      Theme.of(context).floatingActionButtonTheme.backgroundColor,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).bannerTheme.backgroundColor,
                    Theme.of(context).floatingActionButtonTheme.backgroundColor
                  ],
                ),
              ),
              child: Text(
                widget.msg,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          )),
          Container(
            margin: EdgeInsets.only(bottom: 5, top: 5),
            child: Text(
              dateFormat.format(widget.timeSent),
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          ],
      ),
    );
  }
}
