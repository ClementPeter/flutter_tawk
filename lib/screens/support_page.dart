// // import 'package:flutter/material.dart';

// // class SupportPage extends StatelessWidget {
// //   const SupportPage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container();
// //   }
// // }

import 'package:flutter/material.dart';

import 'package:flutter_tawk/flutter_tawk.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tawk Support'),
        //backgroundColor: const Color(0XFFF7931E),
        elevation: 0,
      ),
      body: Tawk(
        directChatLink:
            'https://tawk.to/chat/63700c4db0d6371309ceb555/1ghmr040j',
        visitor: TawkVisitor(
          name: 'Visitor 007',
          email: '007@gmail.com',
        ),
        onLoad: () {
          print('Hello Tawk!');
        },
        onLinkTap: (String url) {   
          print(url);
        },
        placeholder: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),
              SizedBox(height: 10),
              Text("Loading...")
            ],
          ),
        ),
      ),
    );
  }
}
