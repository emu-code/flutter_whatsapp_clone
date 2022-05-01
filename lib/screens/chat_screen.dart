import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/chat_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatModel> dummyData = [
    ChatModel(
        name: "Monica Geller ",
        message: "I Know!",
        timeStamp: "15:30 PM",
        messageUpdate: '1',
        avatarUrl: monicaAvatar),
    ChatModel(
        name: "Ross Geller",
        message: "We were on a break!",
        timeStamp: "16:30 PM",
        messageUpdate: '1',
        avatarUrl: rossAvatar),
    ChatModel(
        name: "Chandler Bing",
        message: "Could I be any funnier?",
        timeStamp: "16:40 PM",
        messageUpdate: '1',
        avatarUrl: bingAvatar),
    ChatModel(
        name: "Rachel Green",
        message: "They don’t know that we know they know we know.",
        timeStamp: "17:30 PM",
        messageUpdate: '1',
        avatarUrl: rachAvatar),
    ChatModel(
        name: "Joey Tribbiani",
        message: "How you doin'?",
        timeStamp: "18:00 PM",
        messageUpdate: '1',
        avatarUrl: joeAvatar),
    ChatModel(
        name: "Pheobe Buffay",
        message: "I can sense the spirit of my dead grandmother in this room.",
        timeStamp: "19:30 PM",
        messageUpdate: '1',
        avatarUrl: pheebsAvatar),
    ChatModel(
        name: "Gunther",
        message: "Oh, Rachel.",
        timeStamp: "19:30",
        messageUpdate: '1',
        avatarUrl: guntAvatar),
    ChatModel(
        name: "Janice",
        message: "Oh. My. God.",
        timeStamp: "19:30",
        messageUpdate: '1',
        avatarUrl: janiceAvatar),
    ChatModel(
        name: "Mike Hannigan",
        message: '',
        timeStamp: "19:30 PM",
        messageUpdate: '1',
        avatarUrl: noAvatar),
    ChatModel(
        name: "Richard Burke",
        message: '',
        timeStamp: "2/5/97",
        messageUpdate: '1',
        avatarUrl: noAvatar),
    ChatModel(
        name: "Estelle",
        message: 'Its Estelle.',
        timeStamp: "2/5/97",
        messageUpdate: '1',
        avatarUrl: noAvatar),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) => Column(
              children: <Widget>[
                // const Divider(
                //   height: 10.0,
                // ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(dummyData[index].avatarUrl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        dummyData[index].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        dummyData[index].timeStamp,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                    ],
                  ),
                  subtitle: Row(textDirection: TextDirection.ltr,
                      // padding: const EdgeInsets.only(top: 5.0),
                      children: [
                        const Icon(
                          Icons.done_all,
                          color: Colors.blue,
                          size: 18.0,
                        ),
                        const SizedBox(
                          width: 2.0,
                        ),
                        Expanded(
                          child: Text(
                            dummyData[index].message,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 15.0),
                          ),
                        ),
                      ]),
                ),
              ],
            ));
  }
}
