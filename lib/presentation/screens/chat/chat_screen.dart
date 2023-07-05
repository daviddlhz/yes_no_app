import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_messages_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/user_messages_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreenWidget extends StatelessWidget {
  const ChatScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://styles.redditmedia.com/t5_eejhl/styles/profileIcon_snoo18c437d5-e153-4307-98ec-9f08ae3bea58-headshot-f.png?width=256&height=256&frame=1&auto=webp&crop=256:256,smart&s=46326407161498677afa631e83f4d9e30ca71d04'),
          ),
        ),
        title: const Text('User292030'),
        centerTitle: false,
      ),
      body: _ChatViewWidget(),
    );
  }
}

class _ChatViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return index % 2 == 0
                      ? const MyMessageBubbleWidget()
                      : const UserMessageBubbleWidget();
                },
              ),
            ),
            const MessageFieldBoxWidget(),
          ],
        ),
      ),
    );
  }
}
