import 'package:bwa_chatty/pages/chat_page.dart';
import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';
import 'package:bwa_chatty/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/profile_pic.png',
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Sabrina Carpenter',
                style: TextStyle(fontSize: 20, color: whiteColor),
              ),
              Text(
                'Travel Freelancer',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: lightBlueColor),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, int index) {
                      return Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(
                              40,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Friends',
                              style: titleTextStyle,
                            ),
                            const ChatTile(
                              imageUrl: 'assets/images/pic.png',
                              name: 'Jajuy',
                              text: 'aku punya ini',
                              time: 'Now',
                              unread: true,
                            ),
                            const ChatTile(
                              imageUrl: 'assets/images/pic2.png',
                              name: 'Adinda',
                              text: 'aku punya itu',
                              time: '2:30',
                              unread: false,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Groups',
                              style: titleTextStyle,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ChatPage()));
                              },
                              child: const ChatTile(
                                imageUrl: 'assets/images/icon.png',
                                name: 'Jakarta Fair',
                                text: 'Dapat Duit aku',
                                time: '2:45',
                                unread: false,
                              ),
                            ),
                            const ChatTile(
                              imageUrl: 'assets/images/icon2.png',
                              name: 'Bernard',
                              text: 'Tumbuklah Hanam Kuuuu',
                              time: 'Now',
                              unread: true,
                            ),
                            const ChatTile(
                              imageUrl: 'assets/images/icon3.png',
                              name: 'Bibi',
                              text: 'Gudang Garam 1 Slop',
                              time: '1:10',
                              unread: true,
                            ),
                            const ChatTile(
                              imageUrl: 'assets/images/icon.png',
                              name: 'Madura',
                              text: 'Filter 26k aja ges',
                              time: '11:10',
                              unread: true,
                            ),
                            const ChatTile(
                              imageUrl: 'assets/images/icon2.png',
                              name: 'Batak',
                              text: 'Filter 26k aja ges',
                              time: '11:10',
                              unread: false,
                            ),
                            const ChatTile(
                              imageUrl: 'assets/images/icon3.png',
                              name: 'Warung Sebelah',
                              text: 'Filter 26k aja ges',
                              time: '11:10',
                              unread: true,
                            ),
                            const ChatTile(
                              imageUrl: 'assets/images/icon.png',
                              name: 'Langganan',
                              text: 'Filter 26k aja ges',
                              time: '11:10',
                              unread: false,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
