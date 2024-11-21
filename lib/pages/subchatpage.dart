import 'package:flutter/material.dart';

class SubChat extends StatelessWidget {
  final String name;
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, dynamic>> messages = [
    {"text": "Most people who work in an office environment, buy computer products, or", "isSentByMe": false},
    {"text": "Below you will find a list", "isSentByMe": true},
    {"text": "He is there only to help and", "isSentByMe": true},
    {"text": "Get to the point — Ask your", "isSentByMe": false},
    {"text": "because you need", "isSentByMe": true},
  ];

  SubChat({super.key, required this.name});

  // Method untuk menambahkan pesan baru
  void _sendMessage(BuildContext context) {
    if (_controller.text.isEmpty) return;

    // Menggunakan callback untuk menambahkan pesan baru
    (context as Element).markNeedsBuild();
    messages.add({"text": _controller.text, "isSentByMe": true});
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                bool isSentByMe = message['isSentByMe'];
                return Align(
                  alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
                    padding: const EdgeInsets.all(15.0),
                    constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
                    decoration: BoxDecoration(
                      color: isSentByMe ? Colors.orange[300] : Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      message['text'],
                      style: TextStyle(color: isSentByMe ? Colors.white : Colors.black),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.camera_alt),
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Write something...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    _sendMessage(context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
