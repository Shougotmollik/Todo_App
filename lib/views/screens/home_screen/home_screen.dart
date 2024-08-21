import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:live_score_app/model/football.dart';
import 'package:live_score_app/views/Widgets/football_score_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  List<Football> matchList = [];

  Future<void> _getfootballmatches() async {
    matchList.clear();
    final QuerySnapshot result =
        await firebaseFirestore.collection('football').get();

    for (QueryDocumentSnapshot doc in result.docs) {
      matchList.add(
        Football(
          matchName: doc.id,
          team1Name: doc.get('team1Name'),
          team2Name: doc.get('team2Name'),
          team1Score: doc.get('team1Score'),
          team2Score: doc.get('team2Score'),
        ),
      );
    }
    setState(() {

    });


  }
@override
  void initState() {

    super.initState();
    _getfootballmatches();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          "Today Matches",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: matchList.length,
        itemBuilder: (context, index) =>  FootballScoreCard(
          football: matchList[index],
        ),
      ),
    );
  }
}
