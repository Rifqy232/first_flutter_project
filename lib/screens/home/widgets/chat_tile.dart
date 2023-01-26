import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.message,
    required this.time,
    required this.isRead,
    required this.isSent,
    required this.unreadMessageCount,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final String message;
  final String time;
  final bool isRead;
  final bool isSent;
  final int unreadMessageCount;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(12),
      leading: SizedBox(
        width: 60,
        height: 60,
        child: FittedBox(
          fit: BoxFit.cover,
          child: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
      subtitle: Row(
        children: [
          isSent
              ? const Padding(
                  padding: EdgeInsets.only(right: 6),
                  child: Icon(
                    Icons.check,
                    size: 20,
                  ),
                )
              : const SizedBox(),
          Text(
            message,
          ),
        ],
      ),
      trailing: Column(
        children: [
          Text(
            time,
            style: TextStyle(
              fontSize: 12,
              color: isRead ? Colors.grey[600] : Colors.green,
            ),
          ),
          isRead
              ? const SizedBox()
              : Container(
                  margin: const EdgeInsets.only(top: 6),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    unreadMessageCount.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
