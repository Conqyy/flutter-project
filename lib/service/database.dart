import 'package:flutter_project/models/city.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Database {
  final supabase = Supabase.instance.client;

  signUp({required String email, required String password}) async {
    await supabase.auth.signUp(email: email, password: password);
  }

  signIn({required String email, required String password}) async {
    await supabase.auth.signInWithPassword(email: email, password: password);
  }

  Future<List<City>> getData() async {
    final data = await supabase.from('Cities').select();

    List<City> list = [];

    for (var element in data) {
      list.add(City.fromJson(element));
    }
    return list;
  }
}
