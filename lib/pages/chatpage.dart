import 'package:flutter/material.dart';
import 'package:skl_e_commerse/pages/subchatpage.dart';  // Pastikan impor ini benar

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final List<Map<String, String>> messages = [
    {
      "name": "Kate Bass",
      "message": "Effective Advertising Pointers",
      "time": "13:23",
      "image": "https://i.pravatar.cc/150?img=1",
    },
    {
      "name": "Jason Gilbert",
      "message": "Internet Advertising Trends You Won’t Believe",
      "time": "12:54",
      "image": "https://i.pravatar.cc/150?img=2",
    },
    {
      "name": "Elmer Ortega",
      "message": "Profiles Of The Powerful Advertising Exec",
      "time": "11:51",
      "image": "https://i.pravatar.cc/150?img=3",
    },
    {
      "name": "Tom Allen",
      "message": "Influencing The Influencer",
      "time": "11:43",
      "image": "https://i.pravatar.cc/150?img=4",
    },
    {
      "name": "Elnora Ingram",
      "message": "Effective Advertising Pointers",
      "time": "10:26",
      "image": "https://i.pravatar.cc/150?img=5",
    },
    {
      "name": "Jay Gibbs",
      "message": "15 Tips To Increase Your Adverts Profits",
      "time": "10:21",
      "image": "https://i.pravatar.cc/150?img=6",
    },
    {
      "name": "Marc Park",
      "message": "Characteristics Of A Successful",
      "time": "09:28",
      "image": "https://i.pravatar.cc/150?img=7",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Message",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 181, 51, 1),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(message['image']!),
            ),
            title: Text(message['name']!),
            subtitle: Text(message['message']!),
            trailing: Text(message['time']!),
            onTap: () {
              // Navigasi ke halaman SubChat dengan mengirimkan nama pengguna
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubChat(
                    name: message['name']!,  // Mengirim nama pengguna
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
