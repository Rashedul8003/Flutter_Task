import 'package:flutter/material.dart';

List dataList = [
  {
    "name": "Country",
    "icon": Icons.remove_red_eye,
    "subMenu": [
      {
        "name": "Bangldesh",
        "subMenu": [
          {
            "id": "1",
            "name": "Barishal",
            "bn_name": "বরিশাল",
            "lat": "22.701002",
            "long": "90.353451",
            "subMenu": [
              {
                "id": "35",
                "division_id": "1",
                "name": "Barishal",
                "bn_name": "বরিশাল",
                "lat": "22.7010",
                "long": "90.3535"
              },
              {
                "id": "36",
                "division_id": "1",
                "name": "Bhola",
                "bn_name": "ভোলা",
                "lat": "22.685923",
                "long": "90.648179"
              },
              {
                "id": "37",
                "division_id": "1",
                "name": "Jhalokati",
                "bn_name": "ঝালকাঠি",
                "lat": "22.6406",
                "long": "90.1987"
              },
              {
                "id": "38",
                "division_id": "1",
                "name": "Patuakhali",
                "bn_name": "পটুয়াখালী",
                "lat": "22.3596316",
                "long": "90.3298712"
              },
              {
                "id": "39",
                "division_id": "1",
                "name": "Pirojpur",
                "bn_name": "পিরোজপুর",
                "lat": "22.5841",
                "long": "89.9720"
              },
            ]
          },
          {
            "id": "2",
            "name": "Chattogram",
            "bn_name": "চট্টগ্রাম",
            "lat": "22.356851",
            "long": "91.783182"
          },
          {
            "id": "3",
            "name": "Dhaka",
            "bn_name": "ঢাকা",
            "lat": "23.810332",
            "long": "90.412518"
          },
          {
            "id": "4",
            "name": "Khulna",
            "bn_name": "খুলনা",
            "lat": "22.845641",
            "long": "89.540328"
          },
          {
            "id": "5",
            "name": "Rajshahi",
            "bn_name": "রাজশাহী",
            "lat": "24.363589",
            "long": "88.624135"
          },
          {
            "id": "6",
            "name": "Rangpur",
            "bn_name": "রংপুর",
            "lat": "25.743892",
            "long": "89.275227"
          },
          {
            "id": "7",
            "name": "Sylhet",
            "bn_name": "সিলেট",
            "lat": "24.894929",
            "long": "91.868706"
          },
          {
            "id": "8",
            "name": "Mymensingh",
            "bn_name": "ময়মনসিংহ",
            "lat": "24.747149",
            "long": "90.420273"
          },
        ]
      },
      {
        "name": "India",
        "subMenu": [
          {"name": "xxxxxxxx"}
        ]
      },
      {
        "name": "Pakistan",
        "subMenu": [
          {"name": "xxxxxxxxxx"},
        ]
      },
      {
        "name": "Afganistan",
        "subMenu": [
          {"name": "xxxxxxxxxx"},
        ]
      }
    ]
  }
];

class Menu {
  String? name;
  IconData? icon;
  List<Menu> subMenu = [];

  Menu({required this.name, required this.subMenu, required this.icon});
//Menu.fromJson(Map json) same result no change
  Menu.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    icon = json['icon'];
    if (json['subMenu'] != null) {
      subMenu.clear();
      json['subMenu'].forEach((v) {
        subMenu?.add(new Menu.fromJson(v));
      });
    }
  }
}
