import 'package:flutter/material.dart';

void main() {
  runApp(listView());
}

class listView extends StatelessWidget {
  const listView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text("Contoh List View"))),
        body: const Column(
          children: [
            InfoRow(
              icon: Icons.email,
              label: "Email",
              value: "rzlhrmwn00@gmail.com",
            ),
            const SizedBox(height: 12),
            InfoRow(
              icon: Icons.phone,
              label: "Telepon",
              value: "0857-1234-5678",
            ),
            const SizedBox(height: 12),
            InfoRow(
              icon: Icons.telegram,
              label: "Telegram",
              value: "@rizalhermawan",
              catatan: "Akun Telegram saya",
            ),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.catatan,
  });

  final IconData icon;
  final String label;
  final String value;
  final String? catatan;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(catatan == null ? value : '$value - $catatan'),
    );
  }
}
