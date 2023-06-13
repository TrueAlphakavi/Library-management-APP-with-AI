import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/snow/speech_api.dart';
import 'package:web_app/snow/substring_highlight.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:web_app/snow/utils.dart';

class chat_screen extends StatefulWidget {
  const chat_screen({super.key});

  @override
  State<chat_screen> createState() => _chat_screenState();
}

String text = 'Press the button and start speaking';
bool isListening = false;

class _chat_screenState extends State<chat_screen> {
  String text = 'Press the button and start speaking';
  bool isListening = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: bgColor,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   title: Text("Snow : A voice assistant",
        //       style: GoogleFonts.cinzel(
        //         fontSize: 21,
        //         color: Colors.black,
        //         fontWeight: FontWeight.w300
        //       )
        //       //fontWeight: FontWeight.w400,
    
        //       // style: GoogleFonts.belleza(
        //       //   fontSize: 27,
        //       //   color: Colors.black,
        //       // )
        //       ),
        //   centerTitle: true,
        // actions: [
        //   Builder(
        //     builder: (context) => IconButton(
        //       icon: Icon(Icons.content_copy),
        //       onPressed: () async {
        //         await FlutterClipboard.copy(text);
    
        //         Scaffold.of(context).showSnackBar(
        //           SnackBar(content: Text('✓   Copied to Clipboard by Lisa')),
        //         );
        //       },
        //     ),
        //   ),
        // ],
        // ),
        body: Column(
          children: [
            Center(
                child: Text("Snow : A Voice Assistant",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w100))),
            SingleChildScrollView(
              reverse: true,
              padding: const EdgeInsets.all(30).copyWith(bottom: 150),
              child: SubstringHighlight(
                text: text,
                terms: Command.all,
                textStyle: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                ),
                textStyleHighlight: TextStyle(
                  fontSize: 26.0,
                  color: Colors.red,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 495),
              child: AvatarGlow(
                animate: isListening, //if listening
                endRadius: 100,
                glowColor: Colors.blueAccent, //Theme.of(context).primaryColor,
                child: FloatingActionButton(
                  child: Icon(isListening ? Icons.mic : Icons.mic_none, size: 40),
                  onPressed: toggleRecording,
                ),
              ),
            ),
            const LinearProgressIndicator(
                // value: 0.7,
                backgroundColor: Colors.transparent,
                color: Colors.blue),
          ],
        ),
      ),
    );
  }

  Future toggleRecording() => SpeechApi.toggleRecording(
        onResult: (text) => setState(() => this.text = text),
        onListening: (isListening) {
          setState(() => this.isListening = isListening);

          if (!isListening) {
            Future.delayed(Duration(seconds: 3), () {
              Utils.scanText(text); //whole test
            });
          }
        },
      );
}
