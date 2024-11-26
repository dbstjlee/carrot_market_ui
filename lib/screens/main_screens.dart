import 'package:carrot_market_ui/screens/chatting/chatting_screen.dart';
import 'package:carrot_market_ui/screens/home/home.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // 최대 5개 까지 인덱스를 관리함
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            // 0번 인덱스
            HomeScreen(),
            // 1번 인덱스
            ChattingScreen()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈', // 런타임에 오류 발생 가능으로 라벨 넣음
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              label: '채팅', // 런타임에 오류 발생 가능으로 라벨 넣음
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          currentIndex: _selectedIndex,
        ),
      ),
    );
  }
}
