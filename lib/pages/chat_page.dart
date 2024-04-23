import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';
import 'package:bwa_chatty/widgets/chat_bubble.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColorWhite,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  )
                ],
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon.png',
                      width: 55,
                      height: 55,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: [
                        Text(
                          'Moba Analog',
                          style: titleTextStyle,
                        ),
                        Text(
                          '14,209 Member',
                          style: subtitleTextStyle,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 100, 177, 102),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3)),
                          ]),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.phone),
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const ChatBubble(
                imageUrl: 'assets/images/pic.png',
                text: 'Piye Kabare Guys?',
                time: '20:30'),
            const ChatBubble(
                imageUrl: 'assets/images/pic2.png',
                text: 'Aman Guys, Gass Aja Logss ',
                time: '20:31'),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 11,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kalian Minta Gendong?',
                            style: titleTextStyle,
                          ),
                          Text(
                            'Langsung Logs aja!!',
                            style: titleTextStyle,
                          ),
                          Text(
                            '20:45',
                            style: subtitleTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Image.asset(
                    'assets/images/profile_pic.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ),
            const ChatBubble(
                imageUrl: 'assets/images/pic3.png',
                text: 'Lagi Lose Streak anjir',
                time: '20:46'),
            const SizedBox(
              height: 80,
            ),
            Container(
              height: 75,
              width: MediaQuery.of(context).size.width - (2 * 30),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(75),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ketik Misuhan......',
                    style: subtitleTextStyle,
                  ),
                  Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 100, 177, 102),
                      shape: BoxShape.circle, // Membuat bentuk lingkaran
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send),
                      color: Colors.white, // Warna ikon putih
                      iconSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
