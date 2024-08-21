import 'package:flutter/material.dart';
import 'package:live_score_app/model/football.dart';

class FootballScoreCard extends StatelessWidget {
  const FootballScoreCard({
    super.key,
    required this.football,
  });
  final Football football;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildteam(
              football.team1Name,
              football.team1Score as int,
            ),
            const Text(
              'VS',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            _buildteam(
              football.team1Name,
              football.team1Score as int,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildteam(String teamName, int teamScore) {
    return Column(
      children: [
        Text(
          teamScore.toString(),
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          teamName,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
