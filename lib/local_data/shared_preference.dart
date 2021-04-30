import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<SharedPreferences> _prefs = SharedPreferences.getInstance();


Future<bool> setUserId(String userId) async {
  final SharedPreferences prefs = await _prefs;
  return await prefs.setString("userId", userId);
}


Future<String> getUserId() async {
  final SharedPreferences prefs = await _prefs;
  return prefs.getString("userId");
}

Future<bool> setUsername(String username) async {
  final SharedPreferences prefs = await _prefs;
  return await prefs.setString("userName", username);
}

Future<String> getUsername() async {
  final SharedPreferences prefs = await _prefs;
  return prefs.getString("userName");
}

Future<bool> userLoggedIn() async {
  final SharedPreferences prefs = await _prefs;
  return prefs.containsKey("userId");
}

Future clearPreference() async {
  final SharedPreferences prefs = await _prefs;
  await prefs.remove("userId");
}

Future setCart(Map cart) async {
  final SharedPreferences prefs = await _prefs;
  print('setting cart $cart');
  String _cart = prefs.getString("cart");
  Map _cartMap;
  if(_cart != null && _cart.isNotEmpty){
    _cartMap = json.decode(_cart);
    if (mapEquals(_cartMap, cart)){
      return;
    }else{
      await prefs.setString("cart", json.encode(cart));
    }
  }else{
    await prefs.setString("cart", json.encode(cart));
  }
}

Future<Map> getCart() async {
  final SharedPreferences prefs = await _prefs;
  String _cart = prefs.getString("cart");
  Map _cartMap = {};
  if(_cart != null && _cart.isNotEmpty){
    _cartMap = json.decode(_cart);
    return _cartMap;
  }
  return _cartMap;
}

Future<String> getCartTotal() async {
  final SharedPreferences prefs = await _prefs;
  String cartTotal = prefs.getString("cartTotal");
  return cartTotal;
}

Future setCartTotal(String cartTotal) async {
  final SharedPreferences prefs = await _prefs;
  return await prefs.setString("cartTotal", cartTotal);
}

Future setCartEmpty() async {
  final SharedPreferences prefs = await _prefs;
  return await prefs.setString("cart", '');
}

Future setLanguage(String lang) async {
  final SharedPreferences prefs = await _prefs;
  return await prefs.setString("language", lang);
}

Future<String> getLanguage() async {
  final SharedPreferences prefs = await _prefs;
  String language = prefs.getString("language");
  return language;
}