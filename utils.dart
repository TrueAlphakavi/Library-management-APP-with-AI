import 'package:flutter/cupertino.dart';
import 'package:text_to_speech/text_to_speech.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class Command {
  static final all = [
    we,
    how,
    what,
    thanyou,
    email,
    like,
    hey,
    hi,
    doo,
    Dimentia,
    mentor,
    created,
    name,
    who,
    bt,
    bg,
    loc,
    tmh,
    medic,
    night,
    kmd,
    myname,
    purpose,
    call,
    playyt,
    h1,
    h2,
    m1,
    m2,
    m3,
    mW,
    hai,
  ];


  static const email = 'write email';
  static const how = 'how are you';
  static const who = 'who are you';
  static const what = "what can you do for me";
  static const name = "what is your name";
  static const created = "who created you";
  static const mentor = "who was your mentor";
  static const Dimentia = "what is dementia";
  static const doo = "what can you do for me";
  static const hey = "hey Snow"  ;
  static const hi = "hi Snow";
  static const h1 = "hey"  ;
  static const hai = "hai";
  static const h2 = "hi";
  static const like = "do you like me";
  static const thanyou = "thankyou";
  static const loc = "where am i";
  static const bg = "open google";
  static const bt = "open twitter";
  static const tmh = "take me home";
  static const medic = "what medicine should i take now";
  static const night = "play night changes";
  static const kmd = "can you tell me more about dementia";
  static const myname = "who am i";
  static const purpose = "what is your purpose";
  static const call = "emergency call";
  static const playyt = "play";
  static const we = "member of our team";
  static const m1 = "what medicine should i take morning";
  static const m2 = "what medicine should i take afternoon";
  static const m3 = "what medicine should i take night";
  static const mW = "where are my medicine";
}

class Utils {
  final String defaultLanguage = 'en-US';
  String rawText = "";
  String text = '';
  double volume = 1; // Range: 0-1
  double rate = 1; // Range: 0-2
  double pitch = 1.0; // Range: 0-2

  String? language;
  String? languageCode;
  List<String> languages = <String>[];
  List<String> languageCodes = <String>[];
  String? voice;

  TextEditingController textEditingController = TextEditingController();

  Future<void> initLanguages() async {
    /// populate lang code (i.e. en-US)
    languageCodes = await tts.getLanguages();

    /// populate displayed language (i.e. English)
    final List<String>? displayLanguages = await tts.getDisplayLanguages();
    if (displayLanguages == null) {
      return;
    }

    languages.clear();
    for (final dynamic lang in displayLanguages) {
      languages.add(lang as String);
    }

    final String? defaultLangCode = await tts.getDefaultLanguage();
    if (defaultLangCode != null && languageCodes.contains(defaultLangCode)) {
      languageCode = defaultLangCode;
    } else {
      languageCode = defaultLanguage;
    }
    language = await tts.getDisplayLanguageByCode(languageCode!);

    /// get voice
    voice = await getVoiceByLang(languageCode!);
  }

  Future<String?> getVoiceByLang(String lang) async {
    final List<String>? voices = await tts.getVoiceByLang(languageCode!);
    if (voices != null && voices.isNotEmpty) {
      return voices.first;
    }
    return null;
  }

  TextToSpeech tts = TextToSpeech();
  void speak(value) {
    tts.setVolume(volume);
    tts.setRate(rate);
    if (languageCode != null) {
      tts.setLanguage(languageCode!);
    }
    // Future<void> configureTts() async {
//   await flutterTts.setVoice("en-us-x-sfg#female_2-local"); // Set the desired female voice
// }
    tts.setPitch(pitch);
    tts.speak(value);
  }
// FlutterTts flutterTts = FlutterTts();

// Future<void> configureTts() async {
//   await flutterTts.setVoice("en-us-x-sfg#female_2-local"); // Set the desired female voice
// }

// 

  static Future<void> scanText(String rawText) async {
    //  String rawText = "i am fine";

    final text = rawText.toLowerCase();
    print(text);
    if (text.contains(Command.how)) {
      Utils().speak("I am fine what can i do for you");
    } else if (text.contains(Command.who)) {
      Utils().speak(
          "My name is Snow I'm a virtual voice assistant I'm here to assist you");
    } else if (text.contains(Command.name)) {
      Utils().speak("My name is Snow");
    } else if (text.contains(Command.created)) {
      Utils().speak("I was created by team aces");
    } else if (text.contains(Command.purpose)) {
      Utils().speak(
          "I am your voice assistant Snow, the aim of creating me is to assist you");
    } else if (text.contains(Command.mentor)) {
      Utils().speak("Mrs S jansi rani mam");
    } else if (text.contains(Command.medic)) {
      Utils().speak("dolo a half, and p650 and syrup of crocin240 with 50ml");
    } else if (text.contains(Command.Dimentia)) {
      Utils().speak(
          "Dementia is a term used to describe a group of symptoms affecting memory, thinking and social abilities severely enough to interfere with your daily life. It isn't a specific disease, but several diseases can cause dementia.");
    } else if (text.contains(Command.doo)) {
      Utils().speak("I can complete a number of task");
    } else if (text.contains(Command.myname)) {
      Utils().speak(
          "your name is Nancy wheeler your from Misticfalls, click the profile icon to know more about you");
    }
    
     else if (text.contains(Command.hey)) {
      Utils().speak("Hi there,I'm listening! How can I help today?");
    }

     else if (text.contains(Command.hai)) {
      Utils().speak("Hi how you doing");
    }


    else if (text.contains(Command.h2)) {
      Utils().speak("Hi there,I'm listening! How can I help today?");
    }
    
    else if (text.contains(Command.h1)) {
      Utils().speak("Hello my friend, How can be your help");
    } 


     else if (text.contains(Command.hi)) {
      Utils().speak("Hello my friend, How can be your help");
    } 

     else if (text.contains(Command.m1)) {
      Utils().speak("your morning medication is memantine for dementia,biguanides for diabetes");
    } 

     else if (text.contains(Command.m2)) {
      Utils().speak("your afternoon medication is albuterol for wheezing, half ml of bencodryl");
    }

     else if (text.contains(Command.m3)) {
      Utils().speak("your night medication is nyquil for cough");
    }

    else if (text.contains(Command.mW)) {
      Utils().speak("your medicines are located in the third row of the bedroom table");
    }
    
    else if (text.contains(Command.like)) {
      Utils().speak("offcourse, you are the most beautiful person I ever met");
    } else if (text.contains(Command.thanyou)) {
      Utils().speak("you're welcome I'm just doing my job");
    } else if (text.contains(Command.we)) {
      Utils().speak("reethu karna,harina");
    } else if (text.contains(Command.email)) {
      final body = _getTextAfterCommand(text: text, command: Command.email);
      openEmail(body: body.toString(), toEmail: "lisaVA172136@gmail.com");
    } else if (text.contains(Command.bg)) {
      final url = "https://google.com";
      if (await canLaunch(url)) await {await launch(url)};
    } 
    
    else if (text.contains(Command.loc)) {
      Utils().speak("showing your current location");
      final url = "https://maps.google.com";

      if (await canLaunch(url))
        await {
          await launch(url,
              forceWebView: true, enableJavaScript: true, forceSafariVC: true)
        };
    }
    //

    else if (text.contains(Command.night)) {
      Utils().speak("playing night changes for you");
      final url = "https://www.youtube.com/watch?v=syFZfO_wfMQ";
      if (await canLaunch(url)) await {await launch(url)};
    }


    else if (text.contains(Command.playyt)) {
      Utils().speak("playing");
      final url = "https://www.youtube.com";
      if (await canLaunch(url)) await {await launch(url)};
    }


    //
    else if (text.contains(Command.call)) {
      Utils().speak("click ok to make call");
      final url = 'tel:9894093664';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
      if (await canLaunch(url)) await {await launch(url)};
    }
    
    
     else if (text.contains(Command.kmd)) {
      Utils().speak("showing a vedio about dementia");
      final url = "https://www.youtube.com/watch?v=Rq5WBzQ66iA";
      if (await canLaunch(url)) await {await launch(url)};
    }
    
     else if (text.contains(Command.tmh)) {
      Utils().speak("showing the direction to home");
      final url = "https://maps.app.goo.gl/Va5javxivaauCNsk8";
      if (await canLaunch(url))
        await {
          await launch(
            url,
          )
        };
    } else if (text.contains(Command.bt)) {
      final url = "https://twitter.com";
      Utils().speak("Opening twitter for you");

      if (await canLaunch(url)) await {await launch(url)};
    }
    ;
  }

  static String? _getTextAfterCommand({
    required String text,
    required String command,
  }) {
    final indexCommand = text.indexOf(command);
    final indexAfter = indexCommand + command.length;

    if (indexCommand == -1) {
      return null;
    } else {
      return text.substring(indexAfter).trim();
    }
  }

  static Future openEmail({
    required String body,
    required String toEmail,
  }) async {
    final url = 'mailto: $toEmail?body=${Uri.encodeFull(body)}';
    //?body=${Uri.encodeFull(body)}';

    await _launchUrl(url);
  }

  static Future _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
