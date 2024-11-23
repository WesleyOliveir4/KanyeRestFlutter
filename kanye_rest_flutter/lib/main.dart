import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const KanyeRestApp());
}

class KanyeRestApp extends StatelessWidget {
  const KanyeRestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: KanyeRestScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class KanyeRestScreen extends StatefulWidget {
  @override
  _KanyeRestScreenState createState() => _KanyeRestScreenState();
}

class _KanyeRestScreenState extends State<KanyeRestScreen> {
  final List<String> _kanyeQuotes = [
    "I feel like I'm too busy writing history to read it.",
    "I still think I am the greatest.",
    "You may be talented, but you're not Kanye West.",
    "Believe in your flyness, conquer your shyness.",
    "I am not a fan of books. I would never want a book's autograph.",
    "I'm a creative genius, and there's no other way to word it.",
    "For me, giving up is way harder than trying.",
    "I refuse to follow the rules where society tries to control people with low self-esteem.",
    "My greatest pain in life is that I will never be able to see myself perform live.",
    "I love sleep; it's my favorite.",
  ];

  String _currentQuote = "I love sleep; it's my favorite.";

  void _changeQuote() {
    final random = Random();
    setState(() {
      // Gera uma nova frase aleatória que seja diferente da atual
      String newQuote;
      do {
        newQuote = _kanyeQuotes[random.nextInt(_kanyeQuotes.length)];
      } while (newQuote == _currentQuote);
      _currentQuote = newQuote;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KanyeRest"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Imagem do rosto
              Image.asset(
                'assets/kanye_img.png',
                height: 150,
              ),
              const SizedBox(height: 20),
              // Card da citação
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    _currentQuote,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Botão
              ElevatedButton(
                onPressed: _changeQuote, // Chama a função para mudar a frase
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                  child: Text(
                    "Mensagem Kanye do dia",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
