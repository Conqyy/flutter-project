import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://acfrjttpkpocbjqbdlsr.supabase.co",
    anonKey: "sb_publishable_IUKY7Yjk_z7pRyVmE5mHRQ_f_i8Ex3Z",
  );

  runApp(MyApp());
}

class MyApp {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ,
    );
  }
}

// It's handy to then extract the Supabase client in a variable for later uses
final supabase = Supabase.instance.client;
