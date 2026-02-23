import 'package:flutter/material.dart';
import 'package:flutter_project/screens/signup.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://ojivsorqguktfkzojave.supabase.co",
    anonKey: "sb_publishable_aHFrQGJSjuD4eqK6xj8A_A_Oxkbg2aR",
  );

  runApp(const Moaween());
}

class Moaween extends StatelessWidget {
  const Moaween({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SignUp());
  }
}

// It's handy to then extract the Supabase client in a variable for later uses
final supabase = Supabase.instance.client;
