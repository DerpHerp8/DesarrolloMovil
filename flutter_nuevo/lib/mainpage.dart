// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe, library_private_types_in_public_api

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_nuevo/modelos/modelorecomendaciones.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPage createState() => _MainPage();
}
 
 class _MainPage extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[

              //Botones de navegacion
              Container(
                height: 57.0,
                margin: EdgeInsets.only(top:29,left: 29,right: 29),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 57.0,
                      width: 57.0,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Colors.grey,
                      ),
                      child: SvgPicture.asset('assets/svg/menu.svg'),
                    ),
                    Container(
                      height: 57.0,
                      width: 57.0,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Colors.grey,
                      ),
                      child: SvgPicture.asset('assets/svg/magnifier.svg'),
                    )
                  ],
                ),
              ),
          

              //Titulo
              Padding(
                padding: EdgeInsets.only(top:48,left: 48),
                child: Text('Explora\nColombia',style: GoogleFonts.playfairDisplay(
                  fontSize: 45, fontWeight: FontWeight.w700),
                  ),
                ),


                //widget de vista en lista con vista por paginas
                Container(
                  height: 500,
                  margin: EdgeInsets.only(top:50),
                  child: PageView(
                    scrollDirection: Axis.vertical,
                    children: List.generate(
                      recomendaciones.length, 
                      (int index) => Container(
                        margin: EdgeInsets.only(bottom: 70),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: DecorationImage(
                            image: NetworkImage(recomendaciones[index].image),
                            ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              bottom: 100,
                              left: 10,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaY: 19,sigmaX: 19
                                  ),
                                  child: Container(
                                    height: 30,
                                    padding: EdgeInsets.only(
                                      left: 5, right: 14
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: <Widget>[
                                        SvgPicture.asset('assets/svg/location-pin.svg'),
                                        SizedBox(width: 8.5,),
                                        Text(
                                          recomendaciones[index].name,
                                          style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            fontSize: 15),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          recomendaciones[index].datos,
                                          style: GoogleFonts.lato(
                                            color: Colors.white,
                                            fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          )
        ),
      ),
    );
  }
}