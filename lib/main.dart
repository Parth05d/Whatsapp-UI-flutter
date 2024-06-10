import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Whatsapp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
      itemCount: 15,
      itemBuilder: (context,index){
      return ListTile (
        leading: CircleAvatar(backgroundImage: NetworkImage("https://qph.cf2.quoracdn.net/main-qimg-55e9152ecd0174bd3e421cae3e3af5fa-lq"),),
      title: Text("Parth Darji"),
      subtitle: Text("10 April, 13.34"),
      trailing: Icon(Icons.call),
      );
    },
  )
 );
  }
}
