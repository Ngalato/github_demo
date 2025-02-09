import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold(String s, double d, {super.key, this.text, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final text;
  final size;
  const Sans(this.text, this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size),
    );
  }
}