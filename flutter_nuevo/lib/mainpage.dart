// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Container(
                height: 57.0,
                margin: EdgeInsets.only(top:29,left: 29,right: 29),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 57.0,
                      width: 57.0,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Colors.grey,
                      ),
                      child: SvgPicture.asset('assets/svg/icons8-menu-rounded-50.png'),
                    ),
                    Container(
                      height: 57.0,
                      width: 57.0,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Colors.grey,
                      ),
                      child: SvgPicture.asset('icons8-search-64.png'),
                    )
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}