library main;

import 'package:example/constant.dart';
import 'package:example/screens/home/views/chat_view.dart';
import 'package:flutter/material.dart';

import 'views/call_view.dart';
import 'views/status_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int _currentTab = 1;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("WhatsApp"),
        centerTitle: false,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 10,
            ),
            child: Icon(
              Icons.camera_alt_outlined,
              size: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.search,
              size: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.more_vert_rounded,
              size: 20,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            color: primaryColor,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentTab = 0;
                      });
                    },
                    child: FractionallySizedBox(
                      heightFactor: 1,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: _currentTab == 0
                            ? const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                ),
                              )
                            : const BoxDecoration(),
                        child: Icon(
                          Icons.groups_rounded,
                          color: _currentTab == 0
                              ? Colors.white
                              : Colors.grey[400],
                          size: 26,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentTab = 1;
                      });
                      print(_currentTab);
                    },
                    child: FractionallySizedBox(
                      heightFactor: 1,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: _currentTab == 1
                            ? const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                ),
                              )
                            : const BoxDecoration(),
                        child: Text(
                          "Chat",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _currentTab == 1
                                ? Colors.white
                                : Colors.grey[400],
                            fontWeight: _currentTab == 1
                                ? FontWeight.w600
                                : FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentTab = 2;
                      });
                      print(_currentTab);
                    },
                    child: FractionallySizedBox(
                      heightFactor: 1,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: _currentTab == 2
                            ? const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                ),
                              )
                            : const BoxDecoration(),
                        child: Text(
                          "Status",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _currentTab == 2
                                ? Colors.white
                                : Colors.grey[400],
                            fontWeight: _currentTab == 2
                                ? FontWeight.w600
                                : FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentTab = 3;
                      });
                    },
                    child: FractionallySizedBox(
                      heightFactor: 1,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: _currentTab == 3
                            ? const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                ),
                              )
                            : const BoxDecoration(),
                        child: Text(
                          "Panggilan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _currentTab == 3
                                ? Colors.white
                                : Colors.grey[400],
                            fontWeight: _currentTab == 3
                                ? FontWeight.w600
                                : FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (_currentTab == 1)
            const ChatView()
          else if (_currentTab == 2)
            const StatusView()
          else if (_currentTab == 3)
            const CallView()
        ],
      ),
    );
  }
}
