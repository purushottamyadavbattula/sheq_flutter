//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:sheq_flutter/constants.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/material.dart';
//
//final _firestore = Firestore.instance;
//FirebaseUser loggedInUser;
//
//class ChatScreen extends StatefulWidget {
//  static const String id = 'chat_screen';
//  @override
//  _ChatScreenState createState() => _ChatScreenState();
//}
//
//class _ChatScreenState extends State<ChatScreen> {
//  final messageTextController = TextEditingController();
//  final _auth = FirebaseAuth.instance;
//  String messageText;
//
//  @override
//  void initState() {
//    super.initState ();
//    getCurrentUser();
//  }
//
//  void getCurrentUser() async{
//    try {final user = await _auth.currentUser();
//    if(user != null){
//      loggedInUser = user;
//    }} catch (e) {print(e);}
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//         );
//  }
//
//
//}