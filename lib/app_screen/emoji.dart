import 'package:flutter/material.dart';

class emoji extends StatefulWidget {
  @override
  _emoji createState() => _emoji();
}

class _emoji extends State<emoji> {
  IconData _moodIcon = Icons.mood;
  bool _showMoodOptions = false;

  void _changeMoodIcon() {
    setState(() {
      if (_showMoodOptions) {
        _showMoodOptions = false;
      } else {
        _moodIcon = Icons.sentiment_satisfied;
        _showMoodOptions = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: 390,
              height: 200,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: _changeMoodIcon,
                    child: Icon(
                      _moodIcon,
                      size: 40,
                      color: Colors.yellowAccent,
                    ),
                  ),
                  if (_showMoodOptions)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.sentiment_very_dissatisfied),
                          color: Colors.red,
                          onPressed: () {
                            setState(() {
                              _moodIcon = Icons.sentiment_very_dissatisfied;
                              _showMoodOptions = false;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.sentiment_dissatisfied),
                          color: Colors.deepOrangeAccent,
                          onPressed: () {
                            setState(() {
                              _moodIcon = Icons.sentiment_dissatisfied;
                              _showMoodOptions = false;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.sentiment_neutral),
                          color: Colors.yellowAccent,
                          onPressed: () {
                            setState(() {
                              _moodIcon = Icons.sentiment_neutral;
                              _showMoodOptions = false;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.sentiment_satisfied),
                          color: Colors.greenAccent,
                          onPressed: () {
                            setState(() {
                              _moodIcon = Icons.sentiment_satisfied;
                              _showMoodOptions = false;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.sentiment_very_satisfied),
                          color: Colors.lightGreenAccent,
                          onPressed: () {
                            setState(() {
                              _moodIcon = Icons.sentiment_very_satisfied;
                              _showMoodOptions = false;
                            });
                          },
                        ),
                      ],
                    ),
                  Text(
                    'How was your day.',
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
