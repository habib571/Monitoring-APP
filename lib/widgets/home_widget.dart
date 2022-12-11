import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 
  
class Menu extends StatelessWidget {
  const Menu({
    Key? key ,
     required this.title,
    required this.subtitle, 
    required this.event, 
    required  this.img
    
 
    
  }) : super(key: key); 
    final String title;
    final String subtitle;
    final String event;
    final String img; 


  @override
  Widget build(BuildContext context) { 
    return  Column( children: [  
                    const SizedBox( 
                      height: 3,
                    ),
                              Image.asset(
                    img,
                    width: 70,
                  ),
                 const SizedBox(
                    height: 3,
                  ),
                 Text(
                    title,
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                 const SizedBox(
                    height: 2,
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle( 
                            color: Colors.white38,
                            fontSize: 12,
                            fontWeight: FontWeight.w600)),
                  ),
                 
                  Text(
                   event,
                    style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                            fontWeight: FontWeight.w600))



       
    )],
       

    ) ;
    
  }
}