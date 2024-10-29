import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              child: Text(
                "Hai, apakah ada yang bisa kami bantu?",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(left: 80, top: 20),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: 
                  EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
                decoration: BoxDecoration(
                  color: Colors.brown[400],
                  ),
                  child: Text(
                    "Hai, apakah kos ini masih tersedia?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                  ),
                ),
              ),
            ),        
          ),
        ),
      ],
    );
  }
}
