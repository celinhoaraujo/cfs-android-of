import 'package:flutter/material.dart';

void main() => runApp(const CFSApp());

class CFSApp extends StatelessWidget {
  const CFSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Celinho's Fighter Show",
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF080A10),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(height: 35),
            const Icon(Icons.emoji_events, color: Colors.amber, size: 75),
            const Text(
              "CELINHO'S",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w900,
                color: Colors.amber,
              ),
            ),
            const Text(
              "FIGHTER SHOW",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 20),
            const Text(
              "TEMPORADA 2027",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.amber, fontSize: 18),
            ),
            const SizedBox(height: 30),
            menuButton("CRIAR CARD", Icons.sports_mma, Colors.red),
            menuButton("LUTADORES", Icons.groups, Colors.blue),
            menuButton("EVOLUÇÃO DOS LUTADORES", Icons.trending_up, Colors.amber),
            menuButton("ADICIONAR LUTADOR", Icons.person_add, Colors.green),
            menuButton("RANKING OFICIAL", Icons.emoji_events, Colors.purple),
            menuButton("HISTÓRICO DE EVENTOS", Icons.history, Colors.orange),
            const SizedBox(height: 25),
            const Text(
              "CFS © 2027",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white54),
            ),
          ],
        ),
      ),
    );
  }

  static Widget menuButton(String title, IconData icon, Color color) {
    return Container(
      height: 72,
      margin: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(icon),
        label: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF171B26),
          foregroundColor: color,
          side: BorderSide(color: color, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
